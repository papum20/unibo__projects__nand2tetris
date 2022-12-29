#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>



	//ISTRUZIONE
	typedef struct instruction_t{
		char type[9];					//tipo di istruzione
		//valori possibili: push, pop; eq, gt, lt; add, sub, neg; if-goto, goto; label; function, call, return;
		//lunghezza massima = lunghezza di function (8) +1 per '\0'
		char name[80];					//parametro 1: segmento/nome/altro/niente, dipende da tipo di istruzione
		int val;						//parametro 2: numero/niente, dipende da tipo di istruzione
	} instruction;

//// LETTURA ////
	//file rows.c

	instruction scan_row(FILE*);
	
	int is_valid_char(char c);			///bool: se c è valido per un nome (lettera/numero/$/./_)

//// FILE ////
	//file rows.c
	int is_file(char path[]);									//ritorna 1 se è un file (se ha un punto)
	int has_extension(char path[], char ext[]);					//ritorna 1 se il file ha estensione ext
	void get_vm_path(char res[], char path[], char file_name[]);//crea il percorso di un file unendo il percorso al nome del file
	void get_output_path(char res[], char vm_path[], int dot);	//crea percorso file di output (.asm)
	void get_filename(char res[], char path[], int dot);		//ottiene il nome del file senza il percorso

//// TRADUZIONE ////

	//file main.c
	void init_default(FILE *out);
	void init_segments(FILE *out);
		//return_number = numero etichetta di ritorno (es. file_name.function$ret.0)
	void translate(char vm_path[], FILE *out, char file_name[]);	//traduci file

	//PUSH, POP, OPERATORI (+-|&), OPERATORI NEGATIVI (not,neg), CONFRONTO
	//file basic_instructions.c
	void push_instruction(FILE *out, char segment[], char file_name[], int ind);
	void pop_instruction(FILE *out, char segment[], char file_name[], int ind);
	void operator_instruction(FILE *out, char operator, char instr[]);						//+, -, &, |
	void n_operator_instruction(FILE *out, char operator, char instr[]);					//negative operator (- e !)
	void comp_instruction(FILE *out, char name[], char current_function[], int return_num);	//compare
	void init_default_comp(FILE *out);
		//mette all'inizio del file asm delle righe usate da eq,gt,lt

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
	void init_default_call(FILE *out);
	void init_default_return(FILE *out);
		//mette all'inizio del file asm delle righe che vengono riutilizzate spesso per call e return


//// FUNZIONI AUSILIARIE ////
	//file basic_instructions.c
	
	void top(FILE *out);										//mette in D top(stack)
	//PUSH
	void push(FILE *out);										//con D già impostato
	//POP	
	void set_address(FILE *out, char segment_start[], int ind);	//mette in R15 l'indirizzo inizio_segmento + ind
	