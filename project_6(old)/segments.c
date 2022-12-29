#include "main.h"



void init_segments(FILE *out)
{
	fprintf(out, "//INIT SEGMENTS\n");	//comment

	//SP=256
	fprintf(out, "@256\n");				//output
	fprintf(out, "D=A\n");				//output
	fprintf(out, "@SP\n");				//output
	fprintf(out, "M=D\n");				//output
	//fprintf(out, "@LCL\n");			//output
	//fprintf(out, "M=D\n");			//output
	//fprintf(out, "@ARG\n");			//output
	//fprintf(out, "M=D\n");			//output

	//current instruction = 0
	fprintf(out, "@R14\n");				//output
	fprintf(out, "M=0\n");				//output

	fprintf(out, "\n");					//endline
}

void init_compare(FILE *out)
{
	fprintf(out, "//INIT COMPARE\n");							//comment

	//SALTA LE PROSSIME ISTRUZIONI
	//(perché devono essere richiamate per eq,gt,lt e non lette all'inizio)
	string script_label = conc_string_list("SCRIPT_START", NULL);
	goto_instruction(out, script_label);						//output

	//LABEL DI CONFRONTO
	string eq_label = conc_string_list("EQ_LABEL", NULL);
	string gt_label = conc_string_list("GT_LABEL", NULL);
	string lt_label = conc_string_list("LT_LABEL", NULL);
	for(int i = 1; i <= 3; i++)
	{
		if(i == 1) label_instruction(out, eq_label);			//output
		else if(i == 2) label_instruction(out, gt_label);		//output
		else if(i == 3) label_instruction(out, lt_label);		//output
		compare(out);											//output
		fprintf(out, "@RETURN_TRUE\n");							//output
		if(i == 1) fprintf(out, "D;JEQ\n");						//output
		else if(i == 2) fprintf(out, "D;JGT\n");				//output
		else if(i == 3) fprintf(out, "D;JLT\n");				//output
		fprintf(out, "@RETURN_FALSE\n");						//output
		fprintf(out, "0;JMP\n");								//output
		fprintf(out, "\n");										//endline
	}

	//LABEL DI RETURN
	string true_label = conc_string_list("RETURN_TRUE", NULL);
	string false_label = conc_string_list("RETURN_FALSE", NULL);
	string constant_string = conc_string_list("constant", NULL);
	for(int i = 1; i <= 2; i++)
	{
		if(i == 1) label_instruction(out, true_label);			//output
		else if(i == 2) label_instruction(out, false_label);	//output
		push_instruction(out, constant_string, "", 0);			//output
		if(i == 1) n_operator_instruction(out,'!', "not");		//output
		//goto
		fprintf(out, "@R13\n");									//output
		current_instruction_set(out, 0);						//output
		fprintf(out, "@R13\n");									//output
		fprintf(out, "A=M\n");									//output
		fprintf(out, "0;JMP\n");								//output
		fprintf(out, "\n");										//endline
	}

	fprintf(out, "//////////////////////\n");					//comment
	fprintf(out, "//// SCRIPT START ////\n");					//comment
	fprintf(out, "//////////////////////\n\n");					//comment
	//DOVE SALTARE PER NON ESEGUIRLO ALL'INIZIO
	label_instruction(out, script_label);						//output

}



//void current_instruction_add(FILE *out, int x)
//{
//	fprintf(out, "\t\t\t\t//CURRENT INSTRUCTION INCREMENT\n");	//comment
//
//	//aumenta l'istruzione corrente di x + 4 per le 4 righe di questa funzione
//	fprintf(out, "\t\t\t\t@%d\n", x+4);							//output
//	fprintf(out, "\t\t\t\tD=A\n");								//output
//	fprintf(out, "\t\t\t\t@R14\n");								//output
//	fprintf(out, "\t\t\t\tM=D+M\n");							//output
//
//	fprintf(out, "\n");											//endline
//}
//
//void current_instruction_set(FILE *out, int to_increment)
//{
//	fprintf(out, "\t\t\t\t//CURRENT INSTRUCTION SET\n");	//comment
//
//	fprintf(out, "\t\t\t\tD=A\n");							//output
//	if(to_increment == 1) {
//		//se to_increment: aumenta di 5, cioè le righe di questa funzione
//		fprintf(out, "\t\t\t\t@5\n");						//output
//		fprintf(out, "\t\t\t\tD=D+A\n");					//output
//	}
//	fprintf(out, "\t\t\t\t@R14\n");							//output
//	fprintf(out, "\t\t\t\tM=D\n");							//output
//
//	fprintf(out, "\n");										//endline
//
//}


string conc_string_list(char s1[], string s2)
{
	string conc_list = malloc(sizeof(string_node_t));
	string p = conc_list;

	for(int i = 0; i < strlen(s1); i++) {
		p->c = s1[i];
		if(i != strlen(s1) - 1) {
			p->next = malloc(sizeof(string_node_t));
			p = p->next;
		}
	}
	while(s2 != NULL) {
		p->next = malloc(sizeof(string_node_t));
		p = p->next;
		p->c = s2->c;
		s2 = s2->next;
	}
	p->next = NULL;

	return conc_list;
}
	

void reset_segment(FILE *out, char segment[])
{
	fprintf(out, "\t\t\t\t//RESET SEGMENT\n");	//comment

	fprintf(out, "\t\t\t\t@R14\n");				//output
	fprintf(out, "\t\t\t\tAM=M-1\n");			//output
	fprintf(out, "\t\t\t\tD=M\n");				//output
	fprintf(out, "\t\t\t\t@%s\n", segment);		//output
	fprintf(out, "\t\t\t\tM=D\n");				//output

	fprintf(out, "\n");							//endline
}
