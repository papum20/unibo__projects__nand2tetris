#include "assembler.h"





string_list create_string(char new_string[])
{
    string_list list = malloc(sizeof(string_node_t));
    string_list p = list;
    int i = 0;
    while(i <= strlen(new_string)) {
        p->c = new_string[i];
        if(i == strlen(new_string)) p->next = NULL;
        else p->next = malloc(sizeof(string_node_t));
        p = p->next;
        i++;
    }

    return list;
}



var_list symbol_append(var_list p, char new_name[], int address, int end)
{
    string_list name_list = create_string(new_name);
    p->name = name_list;
    p->address = address;
    if(end == 1) p->next = NULL;
    else p->next = malloc(sizeof(var_node_t));
    p = p->next;

    return p;
}

var_list init_predef()
{
    //R0...R15
    var_list head = malloc(sizeof(var_node_t));
    var_list p = head;
    for(int i = 0; i < 16; i++)
    {
        char new_name[4];
        new_name[0] = 'R';
        if(i < 10) {
            new_name[1] = (char)(48 + i);
            new_name[2] = '\0';
        }
        else {
            new_name[1] = '1';
            new_name[2] = (char)(48 + i%10);
            new_name[3] = '\0';
        }
        p = symbol_append(p, new_name, i, 0);
    }

    //SP, LCL, ARG, THIS, THAT
    p = symbol_append(p, "SP", 0, 0);
    p = symbol_append(p, "LCL", 1, 0);
    p = symbol_append(p, "ARG", 2, 0);
    p = symbol_append(p, "THIS", 3, 0);
    p = symbol_append(p, "THAT", 4, 0);
    //SCREEN, KEYBOARD
    p = symbol_append(p, "SCREEN", 16384, 0);
    p = symbol_append(p, "KBD", 24576, 1);

    
    return head;
}


int find_char(char s[], char c)
{
    int found = 0;
    int i = 0;
    while(found == 0 && i <= strlen(s))     //il <= controlla anche '\0'
    {
        if(s[i] == c) found = 1;
        else i++;
    }
    return found;
}


var_list symbol_insert(var_list list, row_list p_row, char end[], int new_address)
{
    list->next = malloc(sizeof(var_node_t));
    list = list->next;
    list->next = NULL;
    list->address = new_address;

    //save symbol
    list->name = malloc(sizeof(string_node_t));
    string_list current_name = list->name;
    //in p_row, dopo @ o ( ci deve essere almeno un carattere, o il codice sarebbe sbagliato;
    //la funzione viene sempre chiamata quando p_row != NULL
    while(current_name != NULL)
    {
        current_name->c = p_row->c;
        p_row = p_row->next;
        if(p_row == NULL || find_char(end, p_row->c) == 1) current_name->next = NULL;
        else current_name->next = malloc(sizeof(string_node_t));
        current_name = current_name->next;
    }

    return list;
}



int find_symbol(var_list st, row_list row)  //st = symbol table
{
    int address = -1;
    while(address == -1 && st != NULL)
    {
        int equal = 1;
        string_list current_name = st->name;
        row_list p_row = row;

        while(equal == 1 && current_name != NULL && p_row != NULL && find_char(" /\n\0", p_row->c) == 0)
        {
            if(current_name->c != p_row->c) equal = 0;      //if different
            else {                                          //else continue comparing
                current_name = current_name->next;
                p_row = p_row->next;
            }
        }

        //if name in row is longer
        if(current_name == NULL && (p_row != NULL && find_char(" /\n\0", p_row->c) == 0) )
            equal = 0;
        //if name in symbol table is longer
        else if( (p_row == NULL || find_char(" /\n\0", p_row->c) == 1) &&
                 (current_name != NULL && find_char(" /\n\0", current_name->c) == 0) )
                equal = 0;

        if(equal == 1) address = st->address;
        else st = st->next;
    }

    return address;
}





void dec2bin(int dec, char bin[], const int length)
//parameters: int decimal number, string binary number, string length
{
    int pos = length-1;
    while(dec > 0)
    {
        bin[pos] = (char)(dec%2) + 48;
        dec /= 2;
        pos--;
    }
    while(pos >= 0)
    {
        bin[pos] = '0';
        pos--;
    }
}