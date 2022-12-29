#include "main.h"


	
void label_instruction(FILE *out, char label[], char current_function[])
{
	fprintf(out, "\t////LABEL\n");	//commento

	fprintf(out, "(%s$%s)\n", current_function, label);
}


void goto_instruction(FILE *out, char label[], char current_function[])
{
	fprintf(out, "\t////GOTO\n");	//commento

	fprintf(out, "\t@%s$%s\n", current_function, label);
	fprintf(out, "\t0;JMP\n");
}


void if_goto_instruction(FILE *out, char label[], char current_function[])
{
	fprintf(out, "\t////IF-GOTO\n");	//commento
	
	top(out);
	fprintf(out, "\t@%s$%s\n", current_function, label);
	fprintf(out, "\tD;JNE\n");
}
