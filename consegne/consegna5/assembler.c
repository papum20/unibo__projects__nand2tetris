#include "assembler.h"






int main(int argc, char **argv)
{
    FILE *asm1 = fopen(argv[1], "r");   //X PRIMA PASSATA
    FILE *asm2 = fopen(argv[1], "r");   //X SECONDA PASSATA

    //set up output file name with .hack extension
    char file_name[strlen(argv[1])+2];  //+2: 1 perché hack ha un char in più di asm, 1 per '\0'
    char extension[] = "hack";
    strcpy(file_name, argv[1]);
    for(int i = 0; i <= 4; i++)
        file_name[strlen(argv[1]) - 3 + i] = extension[i];

    FILE *out = fopen(file_name, "w");


    //set up symbol table
    var_list symbol_table = init_predef();      //predefined variables initialized
    var_list p_st = symbol_table;               //last symbol, to add new ones
    while(p_st->next != NULL) p_st = p_st->next;




    int ROM_ind = 0;    //for labels
    //PRIMA PASSATA: segna LABEL in SYMBOL TABLE
    while(!feof(asm1))
    {        
        //scan row
        row_list row = scan_row(asm1);
        row_list p_row = skip_spaces(row);


        //IF LABEL: ADD TO SYMBOL TABLE
        if(p_row != NULL && p_row->c == '(') p_st = symbol_insert(p_st, p_row->next, ")", ROM_ind);
        //else: it's a new ROM instruction
        else if(p_row != NULL && (p_row->c != '/' && p_row->c != '\n' && p_row->c != '\0') ) ROM_ind++;


        delete_row(row);
    }


    int RAM_ind = 16;    //for user-defined variables
    //SECONDA PASSATA: converte
    while(!feof(asm2))
    {
        //scan row
        row_list row = scan_row(asm2);
        row_list p_row = skip_spaces(row);
        

        //if not empty line or comment or label
        if(p_row != NULL && find_char("(/\n\0", p_row->c) == 0)
        {
            //A INSTRUCTION
            if(p_row->c == '@')
            {
                //print 0
                fprintf(out, "0");
                
                int address = 0;
                p_row = p_row->next;            //after @
                if(p_row->c >= 48 && p_row->c < 58)     //if IT'S A NUMBER
                {
                    //CONVERT ADDRESS TO INT
                    while(p_row != NULL && p_row->c >= 48 && p_row->c < 58)
                    {
                        address *= 10;
                        address += (int)(p_row->c - 48);
                        p_row = p_row->next;
                    }
                }
                else    //if LABEL OR VARIABLE
                {
                    int new_address = find_symbol(symbol_table, p_row);
                    if(new_address != -1) address = new_address;        //if found: return it
                    else {                                              //if not found: add
                        p_st = symbol_insert(p_st, p_row, " /\n\0", RAM_ind);
                        address = RAM_ind;
                        RAM_ind++;
                    }
                }
                
                //CONVERT ADDRESS TO BINARY and PRINT
                char bin[16];
                dec2bin(address, bin, 15);
                bin[15] = '\0';
                fprintf(out, "%s\n", bin);

            }

            //C INSTRUCTION
            else
            {
                //inizializza res a 0 e mette prima 111 per le C instruction
                char res[17];
                for(int i = 0; i < 16; i++)
                {
                    if(i < 3) res[i] = '1';
                    else res[i] = '0';
                }
                res[16] = '\0';

                //scan row
                char c[4];              //salva una parte alla volta della c instruction
                c[3] = '\0';
                int len = 0;            //locazioni di c usate

                while(p_row != NULL && find_char(" /\n\0", p_row->c) == 0)
                {
                    //DEST
                    if(p_row->c == '=') {
                        set_dest(c, res, len);
                        len = 0;
                    }
                    //COMP
                    else if(p_row->c == ';') {
                        set_comp(c, res, len);
                        len = 0;
                    }
                    //aggiungi carattere
                    else {
                        c[len] = p_row->c;
                        len++;
                    }
                    p_row = p_row->next;
                }
                //JUMP
                if(c[0] == 'J') set_jmp(c, res);
                //COMP (if row not empty)
                else if(len > 0) set_comp(c, res, len);


                fprintf(out, "%s\n", res);
            }
        
        }
        delete_row(row);
    }
    

    fclose(asm1);
    fclose(asm2);
    fclose(out);

}