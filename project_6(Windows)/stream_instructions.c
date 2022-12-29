#include "main.h"


	
void label_instruction(FILE *out, string label, string current_function)
{
	fprintf(out, "\t////LABEL\n");	//commento

	fprintf(out, "(");
		print_string2file(out, current_function);
		fprintf(out, "$");
		print_string2file(out, label);
		fprintf(out, ")\n");
}


void goto_instruction(FILE *out, string label, string current_function)
{
	fprintf(out, "\t////GOTO\n");	//commento

	fprintf(out, "\t\t@");
		print_string2file(out, current_function);
		fprintf(out, "$");
		print_string2file(out, label);
		fprintf(out, "\n");
	fprintf(out, "\t\t0;JMP\n");
}


void if_goto_instruction(FILE *out, string label, string current_function)
{
	fprintf(out, "\t////IF-GOTO\n");	//commento
	
	top(out);
	fprintf(out, "\t\t@");
		print_string2file(out, current_function);
		fprintf(out, "$");
		print_string2file(out, label);
		fprintf(out, "\n");
	fprintf(out, "\t\tD;JNE\n");

	fprintf(out, "\n");
}
