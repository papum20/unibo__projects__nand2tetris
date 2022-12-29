/*
Il programma accetta come paretro un percorso a un file o una cartella;
se è un file lo traduce; se è una cartella controlla che contenga tutti file con i nomi
dei file del sistema operativo e che ci sia un file chiamato Main.vm contenente una funzione Main.main:
in caso positivo traduce la cartella in un unico file (nella stessa cartella di questo programma), altrimenti
traduce singolarmente i file vm in quella cartella (lasciandoli nella stessa cartella).
*/




#include "main.h"

const int ARRAY_UPPER_BOUND = 80;
const int PATH_UPPER_BOUND = 300;
#define OS_files_num 9
char OS_files[OS_files_num][12] = {"Main.vm", "Array.vm", "Keyboard.vm", "Math.vm", "Memory.vm", "Output.vm", "Screen.vm", "String.vm", "Sys.vm"};



//controlla se c'è una funzione Main.main e se ci sono i file dell'OS:
//in tal caso traduce in un unico file e inserisce la call a sys.init,
//altrimenti traduce i file singolarmente e li mette nella cartella dei file vm
int is_OS(DIR *dir, struct dirent *content, char input[])
	{
		int has_main = 0, found_files = 0;
		while(content != NULL && (has_main == 0 || found_files < OS_files_num) )
		{
			//controlla che ci siano tutti i file necessari
			int i = 0, found = 0;
			while(i < OS_files_num && found == 0)
			{
				if(strcmp(OS_files[i], content->d_name) == 0)
				{
					found_files++;
					found = 1;
					//controlla che ci sia la funzione Main.main
					if(i == 0)
					{
						char path[PATH_UPPER_BOUND];
						get_vm_path(path, input, content->d_name);
						FILE *main_check = fopen(path, "r");

						while(!feof(main_check) && has_main == 0) {
							instruction row = scan_row(main_check);
							if(strcmp(row.type, "function") == 0 && strcmp(row.name, "Main.main") == 0)
								has_main = 1;
						}
						fclose(main_check);
					}
				}
				else i++;
			}
			content = readdir(dir);
		}

		return (has_main == 1 && found_files == OS_files_num);
	}





int main(int argc, char **argv)
{
	int dot = is_file(argv[1]);

	//SE E' UN FILE
	if(dot != -1)
	{
		printf("traduzione file\n");
		//solo nome file
		char file_name[ARRAY_UPPER_BOUND];
		get_filename(file_name, argv[1], dot);
		//percorso file di output
		char out_name[PATH_UPPER_BOUND];
		get_output_path(out_name, argv[1], dot);

		FILE *out = fopen(out_name, "w");

		init_default(out);
		translate(argv[1], out, file_name);
		fclose(out);
		printf("file tradotto\n");
	}
	//SE E' UNA CARTELLA
	else
	{
		//controlla se c'è una funzione Main.main e se ci sono i file dell'OS:
		//in tal caso traduce in un unico file e inserisce la call a sys.init,
		//altrimenti traduce i file singolarmente e li mette nella cartella dei file vm
		DIR *dir = opendir(argv[1]);
		struct dirent *content = readdir(dir);
		int is_os = is_OS(dir, content, argv[1]);
		rewinddir(dir);
		content = readdir(dir);

		//TRADUCI IN UN UNICO FILE CON OS
		if(is_os == 1)
		{
			printf("traduzione cartella in un unico file\n\n");
			
			char out_name[PATH_UPPER_BOUND];
			get_output_path(out_name, argv[1], dot);
			FILE *out = fopen(out_name, "w");
			printf("%s\n", out_name);
			
			init_default(out);
			//traduci sys.init in asm
			call_instruction(out, "Sys.init", 0, "null", 0);
			//traduci tutti i file in un unico asm
			while(content != NULL)
			{
				char path[PATH_UPPER_BOUND];
				get_vm_path(path, argv[1], content->d_name);

				dot = is_file(path);
				if(dot != -1 && has_extension(content->d_name, ".vm") == 1)
				{
					char file_name[ARRAY_UPPER_BOUND];
					get_filename(file_name, path, dot);

					printf("traduzione di %s\n", file_name);
					translate(path, out, file_name);
					printf("fatto\n");
				}

				content = readdir(dir);
			}

			fclose(out);
		}
		//TRADUCI SINGOLI FILE
		else
		{
			printf("traduzione file nella cartella singolarmente\n\n");

			while(content != NULL)
			{
				char path[PATH_UPPER_BOUND];
				get_vm_path(path, argv[1], content->d_name);

				dot = is_file(path);
				if(dot != -1 && has_extension(content->d_name, ".vm") == 1)
				{
					char file_name[ARRAY_UPPER_BOUND];
					get_filename(file_name, path, dot);
					char out_name[PATH_UPPER_BOUND];
					get_output_path(out_name, path, dot);

					printf("traduzione di %s\n", file_name);
					FILE *out = fopen(out_name, "w");

					init_default(out);
					translate(path, out, file_name);

					fclose(out);
					printf("fatto\n");
				}

				content = readdir(dir);
			}
		}


		closedir(dir);
	}
}








//// TRANSLATION ////

void init_default(FILE *out)
	{
		init_segments(out);			//inizio riga 0
		//SALTA INIZIALIZZAZIONI
		fprintf(out, "@137\n");		//inizio riga 0+4 = 4
		fprintf(out, "0;JMP\n");
		init_default_comp(out);		//inizio riga 4+2 = 6
		init_default_call(out);		//inizio riga 6+48 = 54
		init_default_return(out);	//inizio riga 54+41 = 95
		//inizio riga 95+42 = 137
		fprintf(out, "\n\n//// FINE DEFAULT ////\n\n\n");
	}

void init_segments(FILE *out)
	{
		fprintf(out, "//INIT\n");

		fprintf(out, "@256\n");
		fprintf(out, "D=A\n");
		fprintf(out, "@SP\n");
		fprintf(out, "M=D\n");		//4 righe

		fprintf(out, "\n");
	}


void translate(char vm_path[], FILE *out, char file_name[])
	{
		FILE *in = fopen(vm_path, "r");
		//funzione in cui si trova l'istruzione corrente
		char current_function[ARRAY_UPPER_BOUND];
		strcpy(current_function, "null");

		int return_number = 0;
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
				comp_instruction(out, row.type, current_function, return_number);
				return_number++;
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
		
		fclose(in);
	}

