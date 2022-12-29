#include "main.h"




void compare(FILE *out)
{
	fprintf(out, "\t\t\t//COMPARE\n");	//comment

	//D=TOP (1)
	top(out);							//output
	//TOP (2)
	fprintf(out, "\t\t\t@SP\n");		//output
	fprintf(out, "\t\t\tAM=M-1\n");		//output
	//D=TOP2 - TOP1
	fprintf(out, "\t\t\tD=M-D\n");		//output

	fprintf(out, "\n");					//endline
}

void set_R13(FILE *out, int plus)
{
	fprintf(out, "\t\t\t\t//SET R13\n");	//comment
	
	fprintf(out, "\t\t\t\t@R14\n");			//output
	fprintf(out, "\t\t\t\tD=M\n");			//output
	fprintf(out, "\t\t\t\t@%d\n", plus+6);	//output
	fprintf(out, "\t\t\t\tD=D+A\n");		//output
	fprintf(out, "\t\t\t\t@R13\n");			//output
	fprintf(out, "\t\t\t\tM=D\n");			//output

	fprintf(out, "\n");						//endline
}


void eq_instruction(FILE *out)
{
	fprintf(out, "\t////eq INSTRUCTION\n");
	
	//sposta indirizzo di ritorno da R14 a R13
	set_R13(out, 6);
	string eq_label = conc_string_list("EQ_LABEL", NULL);
	goto_instruction(out, eq_label);

	//A viene settato prima del salto nelle label di confronto all'inizio del file
	current_instruction_set(out, 1);

	fprintf(out, "\n");
}
void gt_instruction(FILE *out)
{
	fprintf(out, "\t////gt INSTRUCTION\n");
	
	//sposta indirizzo di ritorno da R14 a R13
	set_R13(out, 6);
	string gt_label = conc_string_list("GT_LABEL", NULL);
	goto_instruction(out, gt_label);

	current_instruction_set(out, 1);

	fprintf(out, "\n");
}
void lt_instruction(FILE *out)
{
	fprintf(out, "\t////lt INSTRUCTION\n");
	
	//sposta indirizzo di ritorno da R14 a R13
	set_R13(out, 6);
	string lt_label = conc_string_list("LT_LABEL", NULL);
	goto_instruction(out, lt_label);

	current_instruction_set(out, 1);
	
	fprintf(out, "\n");
}