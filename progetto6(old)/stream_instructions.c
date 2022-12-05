#include "main.h"


	
void label_instruction(FILE *out, string label)
{
	fprintf(out, "\t////LABEL\n");	//comment

	fprintf(out, "\t\t(");			//output...
	print_string2file(out, label);	//...
	fprintf(out, ")\n");			//...output

	fprintf(out, "\n");				//endline
}


void goto_instruction(FILE *out, string label)
{
	fprintf(out, "\t////GOTO\n");		//comment

//	fprintf(out, "\t\t@");				//output...
//	print_string2file(out, label);		//...
//	fprintf(out, "\n");					//...output
//	current_instruction_set(out, 0);	//output
//	
	fprintf(out, "\t\t@");				//output...
	print_string2file(out, label);		//...
	fprintf(out, "\n");					//...output
	fprintf(out, "\t\t0;JMP\n");		//output

	fprintf(out, "\n");					//endline
	
}


void if_goto_instruction(FILE *out, string label)
{
	fprintf(out, "\t////IF-GOTO\n");	//comment
//
//	//salva istruzione corrente in R15
//	fprintf(out, "\t\t@R14\n");			//output
//	fprintf(out, "\t\tD=M\n");			//output
//	fprintf(out, "\t\t@R15\n");			//output
//	fprintf(out, "\t\tM=D\n");			//output
//
//	//imposta come istruzione corrente quella dove saltare, in caso in cui avvenga il salto
//	fprintf(out, "\t\t@");				//output...
//	print_string2file(out, label);		//...
//	fprintf(out, "\n");					//...output
//	current_instruction_set(out, 0);	//output
	
	//esegui il salto condizionato
	top(out);							//output
	fprintf(out, "\t\t@");				//output...
	print_string2file(out, label);		//...
	fprintf(out, "\n");					//...output
	fprintf(out, "\t\tD;JNE\n");		//output
	fprintf(out, "\n");					//endline
//
//	//reimposta l'istruzione corrente presa da R15 nel caso in cui
//	//non avvenga il salto, con l'aggiunta delle righe appena scritte
//	fprintf(out, "\t\t@R15\n");			//output
//	fprintf(out, "\t\tD=M\n");			//output
//		//19 = 4+(1+3)+(3+1+1)+6
//	fprintf(out, "\t\t@19\n");			//output
//	fprintf(out, "\t\tD=D+A\n");		//output
//	fprintf(out, "\t\t@R14\n");			//output
//	fprintf(out, "\t\tM=D\n");			//output
//
//	fprintf(out, "\n");					//endline
}
