#include "main.h"

const int ARRAY_UPPER_BOUND = 100;



int main(int argc, char **argv)
{
	//CREA SOLO NOME FILE, SENZA ESTENSIONE (USATO PER PUSH STATIC)
	char file_name[ARRAY_UPPER_BOUND];
    strcpy(file_name, argv[1]);
	file_name[ARRAY_UPPER_BOUND] = '\0';

    //CREA NOME DEL FILE DI OUTPUT
    char out_name[ARRAY_UPPER_BOUND];
    strcpy(out_name, file_name);
    strcat(out_name, ".asm");

	//APRI I FILE (INPUT 1 E 2, OUTPUT)
    FILE *check = fopen(argv[1], "r");
    FILE *in = fopen(argv[1], "r");
	FILE *out = fopen(out_name, "w");



	//viene inizializzata con le etichette di compare,
	//a cui si aggiungono le etichette di funzioni (con relativo return)
	label labels = init_my_labels();

	//CONTROLLA che le etichette da me dichiarate non siano gia state usate
	while(!feof(in))
	{
		instruction row = scan_row(check);

		if(strcmp(row.name, "label") == 0 || strcmp(row.name, "function") == 0) insert_label(labels, row.name);


		delete_string(row.name);
	}



	//INIT
	init_segments(out);
	init_compare(out);

	//LEGGI E TRADUCI, RIGA PER RIGA
	while(!feof(in))
	{
		instruction row = scan_row(in);


/*		printf("%s ", row.type);
		string r = row.name;
		
		while(r != NULL) {
			printf("%c", r->c);
			r = r->next;
		}
		printf(" %d\n", row.val);
*/		

		if(strcmp(row.type, "push") == 0) push_instruction(out, row.name, file_name, row.val);
		else if(strcmp(row.type, "pop") == 0) pop_instruction(out, row.name, file_name, row.val);
		
		else if(strcmp(row.type, "add") == 0) operator_instruction(out, '+', row.type);
		else if(strcmp(row.type, "sub") == 0) operator_instruction(out, '-', row.type);
		else if(strcmp(row.type, "neg") == 0) n_operator_instruction(out, '-', row.type);
		
		else if(strcmp(row.type, "and") == 0) operator_instruction(out, '&', row.type);
		else if(strcmp(row.type, "or") == 0) operator_instruction(out, '|', row.type);
		else if(strcmp(row.type, "not") == 0) n_operator_instruction(out, '!', row.type);
		
		else if(strcmp(row.type, "eq") == 0) eq_instruction(out);
		else if(strcmp(row.type, "gt") == 0) gt_instruction(out);
		else if(strcmp(row.type, "lt") == 0) lt_instruction(out);
		
		else if(strcmp(row.type, "label") == 0) label_instruction(out, row.name);
		else if(strcmp(row.type, "goto") == 0) goto_instruction(out, row.name);
		else if(strcmp(row.type, "if-goto") == 0) if_goto_instruction(out, row.name);

		else if(strcmp(row.type, "function") == 0) function_instruction(out, row.name, row.val);
		else if(strcmp(row.type, "call") == 0) call_instruction(out, row.name, row.val);
		else if(strcmp(row.type, "return") == 0) return_instruction(out);


		fprintf(out, "\n");

		delete_string(row.name);
	
	}



    fclose(in);
    fclose(check);
    fclose(out);

}