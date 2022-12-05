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
					char num[10];
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



////CONTROLLO PER NON RIPETERE ETICHETTE

integer int_insert(integer il, int n)
	{
		if(il == NULL || il->i >= n) {
			integer tmp = malloc(sizeof(int_node_t));
			tmp->i = n;
			tmp->next = il;
			return tmp;
		}
		else {
			il->next = int_insert(il->next, n);
			return il;
		}
	}

int check_cmp(char s[], char cmp[])
	{
		int i = 0, j = 0, res = 1;
		while(res == 1 && s[i] != '\0' && cmp[j] != '\0') {
			if(s[i] == cmp[j]) {
				i++;
				j++;
			}
			else res = 0;
		}

		if(res == 0 || s[i] == '\0') return -1;
		else {	//if(cmp[i] == '\0')
			res = 0;
			while(res != -1 && s[i] != '\0') {
				if(s[i] >= 48 && s[i] < 58) res = res*10 + (s[i] - 48);
				else res = -1;
				i++;
			}
			return res;
		}
		
	}




////AUSILIARIE

	int is_valid_char(char c) {
		if(c=='.' || c=='_' || c=='$' || (c>=65&&c<=90) || (c>=97&&c<=122) || (c>=48&&c<58) )
			return 1;
		else return 0;
	}
