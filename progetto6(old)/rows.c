#include "main.h"




	void print_string2file(FILE *out, string s)
	{
		while(s != NULL) {
			fprintf(out, "%c", s->c);
			s = s->next;
		}
	}


	void delete_string(string p)
	{
		while(p != NULL)
		{
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



	/*
	string skip_spaces(string full_row)
	{
		while(full_row != NULL && full_row->c == ' ') {
			string tmp = full_row;
			full_row = full_row->next;
			free(tmp);
		}
		return full_row;
	}*/




	instruction scan_row(FILE *f)
	{
		instruction row = {"\0", NULL, 0};
		char c = ' ';							//assegno un valore per non invalidare la guardia del while
		while(!feof(f) && c == ' ') fscanf(f, "%c", &c);
		
		//dopo tutti gli spazi o c'è un'istruzione, o un commento o la fine della riga/file
		if(feof(f) || c == '\n')
			return row;
		//se commento: leggi tutta riga e ritorna null
		else if(c == '/') {
			while(!feof(f) && c != '\n') fscanf(f, "%c", &c);
			return row;
		}
		//else: salva istruzione
		else
		{
			//TIPO (STRINGA)
			int ind = 0;
			while(!feof(f) && find_char(c, " \n/") == 0) {
				row.type[ind] = c;
				ind++;
				fscanf(f, "%c", &c);
			}
			row.type[ind] = '\0';
	//printf("\t%d %s\n", ind, row.type);

			//se ha length 2 (eq/lt/gt) o length 3 e diverso da pop (add,sub,neg) (quindi non inizia per p)
			//o è return (unico che inizia per 'r'): non ci sono altri parametri nell'istruzione
			if( (strlen(row.type) <= 3 && row.type[0] != 'p') || row.type[0] == 'r')
			{
				while(!feof(f) && c != '\n') fscanf(f, "%c", &c);
				return row;
			}
			else
			{
				//PRIMO PARAMETRO: NAME (LISTA)
				row.name = malloc(sizeof(string_node_t));
				string p = row.name;
				fscanf(f, "%c", &c);							//primo carattere del primo parametro

				while(!feof(f) && find_char(c, " \n/") == 0)
				{
					p->c = c;
					fscanf(f, "%c", &c);
					if(!feof(f) && find_char(c, " \n/") == 0) {
						p->next = malloc(sizeof(string_node_t));
						p = p->next;
					}
					else
						p->next = NULL;
				}

				//SECONDO PARAMETRO: VAL (INT)
				//se è uno tra goto (g), if-goto (i), label (l): un solo parametro
				if(row.type[0] == 'g' || row.type[0] == 'i' || row.type[0] == 'l') {
					while(!feof(f) && find_char(c, " \n/") == 0) fscanf(f, "%c", &c);
					return row;
				}
				//se è uno tra push, pop, function, call: 2 parametri
				else {
					int res = 0;

					fscanf(f, "%c", &c);
					while(!feof(f) && c >= 48 && c < 58) {
						res *= 10;
						res += c - 48;
						fscanf(f, "%c", &c);
					}
					row.val = res;

					while(!feof(f) && find_char(c, " \n/") == 0) fscanf(f, "%c", &c);
					return row;
				}
			}	
		}


	}



////INTEGERS////

	int check_equal(string in_row, string compare)
	{
		if(compare == NULL) {
			if(in_row == NULL) return 0;
			else if(in_row->c == '_') {
				int difference = check_equal(in_row->next, compare);
				if(difference == -1) return -1;
				else return 1 + difference;
			}
			else return -1;
		}
		else if(in_row->c == compare->c) return check_equal(in_row->next, compare->next);
		else return -1;
	}

	integers insert_integer(integers i, int n)
	{
		if(i != NULL && i->n < n) i->next = insert_int(i->next, n);
		//se i == NULL || i->n >= n
		else {
			integers tmp = malloc(sizeof(int_node_t));
			tmp->n = n;
			tmp->next = i;
			return tmp;
		}
	}

	int find_min(integers i, int mn)
	{
		if(i == NULL) return mn;
		else if(i->n > mn) return mn;
		else return find_min(i->next, i->n + 1);
	}

	void delete_integers(integers i)
	{
		if(i == NULL) return;
		else {
			delete_integers(i->next);
			free(i);
		}
	}


////LABELS////

	label insert_label(label l, char s[])
	{
		string str;
		
		int ind = 0;
		if(strlen(s) == 0 || s[0] == '_') str = NULL;
		else
		{
			str = malloc(sizeof(string));
			string p = str;
			while(ind < strlen(s) && s[ind] != '_') {
				p->c = s[ind];
				ind++;
				if(ind >= strlen(s) || s[ind] == '_') p->next = NULL;
				else p->next = malloc(sizeof(label));
				p = p->next;
			}
		}

		if(l == NULL) {
			l = malloc(sizeof(label));
			l->s = str;
			l->i = insert_integer(l->i, strlen(s) - ind);
			l->next = NULL;
		}
		else
		{
			label p = l;
			int found = 0;
			while(found == 0) {
				if(string_compare(p->s, str) == 1) {
					//update label
					p->i = insert_integer(p->i, strlen(s) - ind);
					found = 1;
				}
				else if(p->next = NULL) {
					//insert new label
					label tmp = malloc(sizeof(label));
					tmp->s = str;
					tmp->i = insert_integer(tmp->i, strlen(s) - ind);
					tmp->next = NULL;
					p->next = tmp;
					found = 1;
				}
				else p = p->next;
			}

			delete_string(str);
		}

		return l;
	}



	/*
	RISULTATO FINALE:
		per ogni funzione e per le etichette di compare devo avere il numero di underscore che posso usare
		- salvo i nomi di function e di return_function
		- se trovo label salvo il nome senza _ finali e numero di _ finali
	ALLA FINE:
		- per ogni function (e return): salvo il numero di _ finali da aggiungere; aggiorno integers

	STRUCT:
		finale: string (funciton e return), int (_), next
		label: string (label senza _), integers , next
		(integers)
	*/