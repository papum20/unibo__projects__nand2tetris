#include <stdio.h>
#include <stdlib.h>
#include <string.h>



typedef struct row_node{
    char c;
    struct row_node *next;
} row_node_t;
typedef row_node_t *row_list;


row_list scan_row(FILE*);

//returns first char != ' '
row_list skip_spaces();

void delete_row(row_list);


//A AND C INSTRUCTIONS

void dec2bin(int, char[], const int);

void set_dest(char[], char[], int);

void set_jmp(char[], char[]);

//chiamata sempre con len > 0
void set_comp(char from[], char to[], int len_from);



//LABELS AND VARIABLES

//used as name for labels and variables
typedef struct string_node{
    char c;
    struct string_node *next;
} string_node_t;
typedef string_node_t *string_list;

string_list create_string(char[]);
//PRECONDITION: la stringa ha length > 0


//used as list for labels and variables (both predefined and user-def.)
typedef struct var_node{
    string_list name;
    int address;    //ROM[address] for labels, RAM[address] for variables
    struct var_node *next;
} var_node_t;
typedef var_node_t *var_list;


//inserisce simbolo con nome uguale a stringa (usato x inizializzare le variabili predefinite)
var_list symbol_append(var_list, char[], int, int);

var_list init_predef();

//bool: find char in string
int find_char(char[], char);

//inserisce simbolo leggendo direttamente dalla riga (usato per label e variabili non predefinite)
var_list symbol_insert(var_list, row_list, char[], int);

//ritorna indirizzo di simbolo se lo trova nella symbol table, altrimenti -1
int find_symbol(var_list, row_list);