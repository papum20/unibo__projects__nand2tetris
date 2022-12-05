#include "main.h"

const int ARRAY_UPPER_BOUND = 80;





void init_segments(FILE *out)
	{
		fprintf(out, "//INIT\n");

		fprintf(out, "@256\n");
		fprintf(out, "D=A\n");
		fprintf(out, "@SP\n");
		fprintf(out, "M=D\n");

		fprintf(out, "\n");
	}


integer check_labels(FILE *check)
	{
		integer used_underscore = NULL;
		while(!feof(check))
		{
			instruction row = scan_row(check);

			if(strcmp(row.type, "label") == 0)
			{
				int n = check_cmp(row.name, "___");
				if(n != -1) used_underscore = int_insert(used_underscore, n);
			}
		}

		return used_underscore;
	}


void translate(FILE *in, FILE *out, char file_name[], integer used_underscore)
	{
		//label_number: numero usato per le etichette da me dichiarate, preceduto da ___
		int return_number = 0, label_number = 0;
		//funzione in cui si trova l'istruzione corrente
		char current_function[ARRAY_UPPER_BOUND];
		strcpy(current_function, "null");

		while(!feof(in))
		{
			instruction row = scan_row(in);

			if(strcmp(row.type, "push") == 0) push_instruction(out, row.name, file_name, row.val);
			else if(strcmp(row.type, "pop") == 0) pop_instruction(out, row.name, file_name, row.val);
			
			else if(strcmp(row.type, "add") == 0) operator_instruction(out, '+', row.type);
			else if(strcmp(row.type, "sub") == 0) operator_instruction(out, '-', row.type);
			else if(strcmp(row.type, "neg") == 0) n_operator_instruction(out, '-', row.type);
			
			else if(strcmp(row.type, "and") == 0) operator_instruction(out, '&', row.type);
			else if(strcmp(row.type, "or") == 0) operator_instruction(out, '|', row.type);
			else if(strcmp(row.type, "not") == 0) n_operator_instruction(out, '!', row.type);
			
			else if(strcmp(row.type, "eq") == 0 || strcmp(row.type, "gt") == 0 || strcmp(row.type, "lt") == 0) {
				//ottieni due numeri validi come label
				int n = label_number + 1;
				while(used_underscore != NULL && (used_underscore->i == label_number || used_underscore->i == n)) {
					n++;
					if(used_underscore->i == label_number) label_number++;
					used_underscore = used_underscore->next;
				}
				comp_instruction(out, row.type, label_number, n, current_function);
				label_number = n + 1;
			}
			
			else if(strcmp(row.type, "label") == 0) label_instruction(out, row.name, current_function);
			else if(strcmp(row.type, "goto") == 0) goto_instruction(out, row.name, current_function);
			else if(strcmp(row.type, "if-goto") == 0) if_goto_instruction(out, row.name, current_function);

			else if(strcmp(row.type, "function") == 0) {
				function_instruction(out, row.name, row.val);
				strcpy(current_function, row.name);
				return_number = 0;
			}
			else if(strcmp(row.type, "call") == 0) {
				call_instruction(out, row.name, row.val, current_function, return_number);
				return_number++;
			}
			else if(strcmp(row.type, "return") == 0) return_instruction(out);

			fprintf(out, "\n");
		}
		
	}








int main(int argc, char **argv)
{
	//CREA SOLO NOME FILE, SENZA ESTENSIONE
	char file_name[ARRAY_UPPER_BOUND];
    int end = 0, ind = 0;
	while(end == 0) {
		if(argv[1][ind] == '\0' || argv[1][ind] == '.') {
			file_name[ind] = '\0';
			end = 1;
		} else {
			file_name[ind] = argv[1][ind];
			ind++;
		}
	}

    //CREA NOME DEL FILE DI OUTPUT
    char out_name[ARRAY_UPPER_BOUND];
    strcpy(out_name, file_name);
    strcat(out_name, ".asm");


	//PRIMA PASSATA: leggi etichette e salva i numeri n di quelle del tipo ___n,
	//per evitare di averne di uguali a quelle dichiarate da me per eq, gt, lt
    FILE *check = fopen(argv[1], "r");
	integer used_underscore = check_labels(check);
    fclose(check);


	//SECONDA PASSATA: LEGGI E TRADUCI, RIGA PER RIGA
    FILE *in = fopen(argv[1], "r");
	FILE *out = fopen(out_name, "w");
	init_segments(out);
	translate(in, out, file_name, used_underscore);


	//cancella e chiudi
	while(used_underscore != NULL) {
		integer tmp = used_underscore;
		used_underscore = used_underscore->next;
		free(tmp);
	}

    fclose(in);
    fclose(out);

}