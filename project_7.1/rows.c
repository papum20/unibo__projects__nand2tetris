#include "main.h"


#define UPPER_BOUND1 200



instruction scan_row(FILE *f)
	{
		instruction row ;
		strcpy(row.type, "\0");
		strcpy(row.name, "\0");
		row.val = 0;
		char c;
		//salta spazi, tab...
		do { fscanf(f, "%c", &c);
		} while(!feof(f) && c != '/' && is_valid_char(c) == 0);
		
		//se non è finita la riga/file e non c'è un commento: salva istruzione
		if(!feof(f) && is_valid_char(c) == 1)
		{
			//TIPO (stringa)
			row.type[0] = c;
			row.type[1] = '\0';
			char row_tmp[UPPER_BOUND1];
			fscanf(f, "%s", row_tmp);
			//controlla che non ci siano commenti
			int i = 0;
			while(i < strlen(row_tmp)) {
				if(row_tmp[i] == '/') row_tmp[i] = '\0';
				i++;
			}

			strcat(row.type, row_tmp);

			//PRIMO PARAMETRO: name (struct string)
			//se ha length 2 (eq/lt/gt) o length 3 e diverso da pop (add,sub,neg,not) (quindi non inizia per p)
			//o è return (unico che inizia per 'r'): non ci sono altri parametri nell'istruzione
			if( !(strlen(row.type) <= 3 && row.type[0] != 'p') && row.type[0] != 'r')
			{
				//PRIMO PARAMETRO: name (stringa)
				fscanf(f, "%s", row_tmp);
				//controlla che non ci siano commenti
				i = 0;
				while(i < strlen(row_tmp)) {
					if(row_tmp[i] == '/') row_tmp[i] = '\0';
					i++;
				}

				strcpy(row.name, row_tmp);


				//SECONDO PARAMETRO: val (int)
				//se è uno tra goto (g), if-goto (i), label (l): un solo parametro
				//altrimenti: push, pop, function, call: 2 parametri
				if(row.type[0]!='g' && row.type[0]!='i' && row.type[0]!='l') {
					char num[UPPER_BOUND1];
					fscanf(f, "%s", num);
					i = 0;
					while(i < strlen(num) && num[i] >= 48 && num[i] < 58) {
						row.val = row.val*10 + (num[i] - 48);
						i++;
					}
				}
			}	
		}

		//leggi e scarta eventuali spazi e commenti dopo
		while(!feof(f) && c != '\n') fscanf(f, "%c", &c);
		return row;
	}





//// FILES ////


//CONTROLLO SE E' UN FILE (bool) (se il nome del file ha un punto) e ritorna l'indice del punto, altrimenti -1
int is_file(char path[]) {
	int dot = -1, ind = 0, slash = 0;
	while(ind < strlen(path)) {
		if(path[ind] == '/' || path[ind] == '\\') slash = 1;
		else {
			if(slash == 1) dot = -1;
			if(path[ind] == '.') dot = ind;
			slash = 0;
		}
		ind++;
	}
	return dot;
}

//CONTROLLO SE IL FILE HA UNA CERTA ESTENSIONE (che inizia con il punto) (bool)
int has_extension(char path[], char ext[]) {
	int i = is_file(path);

	//se ha trovato il punto e le due estensioni hanno la stessa lunghezza
	if(i != -1 && strlen(ext) == strlen(path) - i)
	{
		int equal = 1, j = 0;
		while(equal == 1 && i < strlen(path)) {
			if(path[i] != ext[j]) equal = 0;
			else {
				i++;
				j++;
			}
		}
		return equal;
	}
	else return 0;
}

void get_vm_path(char res[], char path[], char file_name[]) {
		strcpy(res, path);
		strcat(res, "/");
		strcat(res, file_name);
	}

void get_output_path(char res[], char vm_path[], int dot) {
		strcpy(res, vm_path);
		if(dot != -1) res[dot] = '\0';
		else {
			while(res[strlen(res) -1] == '/' || res[strlen(res) -1] == '\\')
				res[strlen(res) - 1] = '\0';
		}
		strcat(res, ".asm");
	}

//CREA SOLO NOME FILE, SENZA ESTENSIONE E SENZA PERCORSO
void get_filename(char res[], char path[], int dot) {
		int start = dot;
		while(start > 0 && path[start-1] != '/' && path[start-1] != '\\') start--;

		int i = start;
		while(i < dot) {
			res[i-start] = path[i];
			i++;
		}
		res[i-start] = '\0';
	}



////AUSILIARIE

	int is_valid_char(char c) {
		if(c=='.' || c=='_' || c=='$' || (c>=65&&c<=90) || (c>=97&&c<=122) || (c>=48&&c<58) )
			return 1;
		else return 0;
	}
