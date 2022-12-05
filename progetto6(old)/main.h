/*
TO DO:
- etichette dichiarate da me non ripetute
	(SCRIPT_START;EQ_LABEL;GT_LABEL;LT_LABEL;RETURN_FALSE;RETURN_TRUE; FUNZIONI e return_FUNZIONE)
/ usa LCL come FRAME
*/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>



//// ROWS ////

	//LISTA DI CARATTERI
	typedef struct string_node{
		char c;
		struct string_node *next;
	} string_node_t;
	typedef string_node_t *string;

	//ISTRUZIONE
	typedef struct instruction_t{
		char type[9];					//tipo di istruzione
		//valori possibili: push, pop; eq, gt, lt; add, sub, neg; if-goto, goto; label; function, call, return;
		//lunghezza massima = lunghezza di function (8) +1 per '\0'
		string name;					//segmento/nome/altro/niente, dipende da tipo di istruzione
		int val;						//numero/niente, dipended da tipo di istruzione
	} instruction;

	int string_compare(string a, string b);
	void print_string2file(FILE *out, string s);
	void delete_string(string p);

	int find_char(char, char[]);
	//string skip_spaces(string);
	instruction scan_row(FILE*);



	//LISTA DI INTERI
	//per verificare etichette che uso e che vengono dichiarate anche dal programma;
	//la lista viene mantenuta ordinata in modo crescente con la funzione di inserimento
	typedef struct int_node{
		int n;
		struct int_node *next;
	} int_node_t;
	typedef int_node_t *integers;

	//LISTA DI LABEL, fatte di string senza _ e numero di _
	typedef struct label_node{
		string s;
		integers i;
		struct label_node *next;
	} label_node_t;
	typedef label_node_t *label;

	//LISTA DI FUNCTION, fatte di string (nome funzione) e int (numero di _ da aggiungere per non ripetere)
	typedef struct function_node{
		string s;
		int n;
		struct function_node *next;
	} function_node_t;
	typedef function_node_t *function;


	//INTEGERS

	//POSTCONDITION: controlla se le due liste sono uguali (esclusi gli _ finali),
	//se si ritorna il numero di _ finali, altrimenti -1
	int check_equal(string in_row, string compare);
	//POSTCONDITION: inserisce mantenendo l'ordine crescente
	integers insert_integer(integers i, int n);
	//POSTCONDITION: trova primo intero >= mn non presente nella lista di interi
	int find_min(integers i, int mn);
	void delete_integers(integers i);

	//LABEL

	//POSTCONDITION: aggiunge string senza _ finali e numero di _ finali
	label insert_label(label l, char s[]);

	//FUNCTION

	//POSTCONDITION: crea una string_list che contiene le label che uso (per i compare)
	string_list init_my_labels();
	string_list insert_string(string_list sl, string s);
	void delete_strings(string_list sl);




//// VARIO ////
//file segments.c

	void init_segments(FILE *out);

	//inizializza etichette per le operazioni di eq, lt, gt
	//PRECONDITION: R14 = return address
	void init_compare(FILE *out);

	//PER LE FUNZIONI

//	void current_instruction_add(FILE *out, int x);
//	void current_instruction_set(FILE *out, int to_increment);
//
	//ritorna una lista di caratteri che inizia con i caratteri della stringa s1 e termina con i caratteri della lista s2
	string conc_string_list(char s1[], string s2);

	void reset_segment(FILE *out, char segment[]);



//// FUNZIONI BASE ////

		//POSTCONDITION: SP++
//	void SP_increment(FILE *out);
		//POSTCONDITION: SP--
//	void SP_decrement(FILE *out);

	//PUSH
	//file basic_functions.c
	
		//usato per push local e argument
		//PRECONDITION: ind = indice di segmento, segment_start = indirizzo inizio segmento
		//POSTCONDITION: D = valore di segmento[ind]
	void get_lcl_arg_value(FILE *out, char segment_start[], int ind);

		//usato per push static
		//PRECONDITION: ind = indice di segmento
		//POSTCONDITION: D = valore di segmento[ind]
//	void static_value(FILE *out, char file_name[], int ind);
		//PRECONDITION: D già impostato
	void push(FILE *out);

	//POP
	//file basic_functions.c
	
		//PRECONDITION: ind = indice di segmento, segment_start = indirizzo inizio segmento
		//POSTCONDITION: R15 = indirizzo dove salvare D
	void set_address(FILE *out, char segment_start[], int ind);

		//POSTCONDITION: D = top(stack)
	void top(FILE *out);
		//PRECONDITION: D già impostato, R15 = indirizzo dove salvare D
	void pop_lcl_arg(FILE *out);
		//POSTCONDITION: fa tutto pop static
//	void pop_static(FILE *out, char file_name[], int ind);

	//EQ, GT, LT
	//file compare_functions.c

		//POSTCONDITION: D = penultimo - ultimo in stack
	void compare(FILE *out);
		//PRECONDITION: R14 = return_address (for eq,gt,lt)
		//POSTCONDITION: R13 = return_address
	void set_R13(FILE *out, int plus);

	//FUNZIONI
	void push_segment_value(FILE* out, char segment[]);


//// FUNZIONI COMPLETE ////

	//PUSH e POP
	//file basic_instructions.c

	void push_instruction(FILE *out, string segment, char file_name[], int ind);
	void pop_instruction(FILE *out, string segment, char file_name[], int ind);

	//OPERATORI
	//file basic_instructions.c
	//ADD,SUB,AND,OR vengono tradotti allo stesso modo, cambia solo l'operazione

	void operator_instruction(FILE *out, char operator, char comment[]);
	
	//OPERATORI NEGATIVI
	//file basic_instructions.c
	//NEG,NOT vengono tradotti allo stesso modo, cambia solo l'operazione

	void n_operator_instruction(FILE *out, char operator, char comment[]);

	//CONFRONTO
	//file compare_instructions.c

	void eq_instruction(FILE *out);
	void gt_instruction(FILE *out);
	void lt_instruction(FILE *out);

	//LABEL
	//file stream_instructions.c

	void label_instruction(FILE *out, string label);
	void goto_instruction(FILE *out, string label);
	void if_goto_instruction(FILE *out, string label);

	//FUNZIONI
	//file function_instructions.c

	void function_instruction(FILE *out, string function_name, int locals);
	void call_instruction(FILE *out, string function_name, int args);
	void return_instruction(FILE *out);


