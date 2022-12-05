#include "main.h"


instruction scan_row(FILE *f)
	{
		instruction row = {"\0", NULL, 0};
		char c = ' ';							//assegno un valore per non invalidare la guardia del while
		while(!feof(f) && (c == ' ' || c == '\t') ) fscanf(f, "%c", &c);
		
		//se non è finita la riga/file e non c'è un commento: salva istruzione
		if(!feof(f) && c != '\n' && c != '/')
		{
			//TIPO (stringa)
			int ind = 0;
			while(!feof(f) && find_char(c, " \t\n/") == 0) {
				row.type[ind] = c;
				ind++;
				fscanf(f, "%c", &c);
			}
			row.type[ind] = '\0';

			//PRIMO PARAMETRO: name (struct string)
			//se ha length 2 (eq/lt/gt) o length 3 e diverso da pop (add,sub,neg,not) (quindi non inizia per p)
			//o è return (unico che inizia per 'r'): non ci sono altri parametri nell'istruzione
			if( !(strlen(row.type) <= 3 && row.type[0] != 'p') && row.type[0] != 'r')
			{
				//PRIMO PARAMETRO: NAME (LISTA)
				row.name = malloc(sizeof(string_node_t));
				string p = row.name;
				while(!feof(f) && (c == ' ' || c == '\t') ) fscanf(f, "%c", &c);	//primo carattere del primo parametro

				while(!feof(f) && find_char(c, " \t\n/") == 0)
				{
					p->c = c;
					fscanf(f, "%c", &c);
					if(!feof(f) && find_char(c, " \t\n/") == 0) {
						p->next = malloc(sizeof(string_node_t));
						p = p->next;
					}
					else
						p->next = NULL;
				}

				//SECONDO PARAMETRO: val (int)
				//se è uno tra goto (g), if-goto (i), label (l): un solo parametro
				//altrimenti: push, pop, function, call: 2 parametri
				if(find_char(row.type[0], "gil") == 0) {
					int res = 0;
					while(!feof(f) && (c == ' ' || c == '\t') ) fscanf(f, "%c", &c);

					while(!feof(f) && c >= 48 && c < 58) {
						res *= 10;
						res += c - 48;
						fscanf(f, "%c", &c);
					}
					row.val = res;
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

int check_cmp(string s, char cmp[])
	{
		int i = 0, res = 1;
		while(res == 1 && cmp[i] != '\0' && s != NULL) {
			if(s->c == cmp[i]) {
				i++;
				s = s->next;
			}
			else res = 0;
		}

		if(res == 0 || s == NULL) return -1;
		else {	//if(cmp[i] == '\0')
			res = 0;
			while(res != -1 && s != NULL) {
				if(s->c >= 48 && s->c < 58) res = res*10 + (s->c - 48);
				else res = -1;
				s = s->next;
			}
			return res;
		}
		
	}




////AUSILIARIE

	void print_string2file(FILE *out, string s)
	{
		while(s != NULL) {
			fprintf(out, "%c", s->c);
			s = s->next;
		}
	}

	void delete_string(string p)
	{
		while(p != NULL) {
			string tmp = p;
			p = p->next;
			free(tmp);
		}
	}

	int find_char(char c, char s[])
	{
		int i = strlen(s) - 1;
		int found = 0;
		while(i >= 0 && found == 0) {
			if(c == s[i]) found = 1;
			else i--;
		}

		return found;
	}


	string conc_string_list(char s1[], string s2)
	{
		string head = NULL;
		string p = NULL;

		for(int i = 0; i < strlen(s1); i++) {
			string tmp = malloc(sizeof(string_node_t));
			tmp->c = s1[i];
			tmp->next = NULL;
			if(p == NULL) head = tmp;
			else p->next = tmp;
			p = tmp;
		}
		while(s2 != NULL) {
			string tmp = malloc(sizeof(string_node_t));
			tmp->c = s2->c;
			tmp->next = NULL;
			if(p == NULL) head = tmp;
			else p->next = tmp;
			p = tmp;
			s2 = s2->next;
		}

		return head;
	}
	



