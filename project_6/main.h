#include <stdio.h>
#include <stdlib.h>
#include <string.h>



	//ISTRUZIONE
	typedef struct instruction_t{
		char type[9];					//tipo di istruzione
		//valori possibili: push, pop; eq, gt, lt; add, sub, neg; if-goto, goto; label; function, call, return;
		//lunghezza massima = lunghezza di function (8) +1 per '\0'
		char name[80];					//parametro 1: segmento/nome/altro/niente, dipende da tipo di istruzione
		int val;						//parametro 2: numero/niente, dipende da tipo di istruzione
	} instruction;

	//lista di interi
	typedef struct int_node{
		int i;
		struct int_node *next;
	} int_node_t;
	typedef int_node_t *integer;


//// LETTURA ////
	//file rows.c

	instruction scan_row(FILE*);
	
	int is_valid_char(char c);			///bool: se c è valido per un nome (lettera/numero/$/./_)

	////CONTROLLO PER NON RIPETERE LABEL DA ME DICHIARATE
	integer int_insert(integer il, int n);	//inserisce n in il, in ordine crescente
	int check_cmp(char s[], char cmp[]);	//se s=cmp seguito da un numero ritorna il numero, altrimenti -1


//// TRADUZIONE ////

	//PUSH, POP, OPERATORI (+-|&), OPERATORI NEGATIVI (not,neg), CONFRONTO
	//file basic_instructions.c
	void push_instruction(FILE *out, char segment[], char file_name[], int ind);
	void pop_instruction(FILE *out, char segment[], char file_name[], int ind);
	void operator_instruction(FILE *out, char operator, char instr[]);										//+, -, &, |
	void n_operator_instruction(FILE *out, char operator, char instr[]);									//negative operator (- e !)
	void comp_instruction(FILE *out, char name[], int label_num1, int label_num2, char current_function[]);	//compare

	//LABEL
	//file stream_instructions.c
	void label_instruction(FILE *out, char label[], char current_function[]);
	void goto_instruction(FILE *out, char label[], char current_function[]);
	void if_goto_instruction(FILE *out, char label[], char current_function[]);

	//FUNZIONI
	//file function_instructions.c
	void function_instruction(FILE *out, char current_function[], int locals);
	void call_instruction(FILE *out, char function_name[], int args, char current_function[], int return_num);
	void return_instruction(FILE *out);


//// FUNZIONI AUSILIARIE ////
	//file basic_instructions.c
	
	void top(FILE *out);										//mette in D top(stack)
	//PUSH
	void push(FILE *out);										//con D già impostato
	//POP	
	void set_address(FILE *out, char segment_start[], int ind);	//mette in R15 l'indirizzo inizio_segmento + ind
	