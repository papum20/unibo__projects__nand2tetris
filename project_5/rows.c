#include "assembler.h"


row_list scan_row(FILE *file)
{
    row_list row;

    //feof ritorna false solo dopo aver letto un nuovo carattere ed essersi reso conto che
    //questo carattere è fuori dal file: ciò significa che fscanf legge sempre un carattere di troppo.
    //perciò uso c e c_last insieme e aggiungo c_last alla lista se quando legge c non ha raggiunto la fine del file (feof);
    //infine c'è un if che fa terminare la lista nel caso in cui il while sia terminato no per feof
    //ma per una delle altre due condizioni, e in tal caso dentro il while non si porrebbe fine alla lista.
    if(!feof(file))
    {
        row = malloc(sizeof(row_node_t));
        row_list p = row;
        char c, c_last;
        fscanf(file, "%c", &c_last);

        while(!feof(file) && c_last != '\n' && c_last != '\0')
        {
            fscanf(file, "%c", &c);
            p->c = c_last;
            c_last = c;
            if(!feof(file)) {
                p->next = malloc(sizeof(row_node_t));
                p = p->next;
            }
            else p->next = NULL;
        }
        if(feof(file)) {
            if(row == p) {
                free(row);
                row = NULL;
            }
            else p = NULL;
        }
        else if(c_last == '\n' || c_last == '\0') {
            p->c = c_last;
            p->next = NULL;
        }

    }
    else
        row = NULL;


    return row;
}



row_list skip_spaces(row_list row)
{
    row_list p = row;
    while(p != NULL && p->c == ' ')
        p = p->next;
    return p;
}



void delete_row(row_list row)
{
    while(row != NULL)
    {
        row_list tmp = row->next;
        free(row);
        row = tmp;
    }
}