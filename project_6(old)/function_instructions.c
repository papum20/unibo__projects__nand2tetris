#include "main.h"




void function_instruction(FILE *out, string function_name, int locals)
{
	fprintf(out, "////FUNCTION\n");					//comment

	label_instruction(out, function_name);			//output

	//INIZIALIZZA A 0 n VARIABILI LOCALI
	string _constant = conc_string_list("constant", NULL);
	for(int i = 0; i < locals; i++) 
		push_instruction(out, _constant, "", 0);	//output
	delete_string(_constant);
}

void call_instruction(FILE *out, string function_name, int args)
{
	fprintf(out, "////CALL\n");				//comment

	//push return_address
		//43 = (1+4)+(4*6)+(4+4)+6
	current_instruction_add(out, 43);		//output
	fprintf(out, "\t\tD=M\n");				//output
	push(out);								//output
	//push LCL
	fprintf(out, "\t\t//push segment\n");	//comment
	push_segment_value(out, "LCL");			//output
	//push ARG
	fprintf(out, "\t\t//push segment\n");	//comment
	push_segment_value(out, "ARG");			//output
	//push THIS
	fprintf(out, "\t\t//push segment\n");	//comment
	push_segment_value(out, "THIS");		//output
	//push THAT
	fprintf(out, "\t\t//push segment\n");	//comment
	push_segment_value(out, "THAT");		//output

	//LCL = SP
	fprintf(out, "\t\t//set local\n");		//comment
	fprintf(out, "\t\t@SP\n");				//output
	fprintf(out, "\t\tD=M\n");				//output
	fprintf(out, "\t\t@LCL\n");				//output
	fprintf(out, "\t\tM=D\n");				//output
	//ARG = SP - n_args - 5
	fprintf(out, "\t\t//set argument\n");	//comment
	fprintf(out, "\t\t@%d\n", args + 5);	//output
	fprintf(out, "\t\tD=D-A\n");			//output
	fprintf(out, "\t\t@ARG\n");				//output
	fprintf(out, "\t\tM=D\n");				//output

	goto_instruction(out, function_name);	//output

	string return_label = conc_string_list("return_", function_name);
	label_instruction(out, return_label);	//output
	delete_string(return_label);

	fprintf(out, "\n");						//endline
}

void return_instruction(FILE *out)
{
	fprintf(out, "////RETURN\n");			//comment

	//*ARG = pop()
	//argument 0 = valore di ritorno; arg 0 corrisponde al top dello stack del chiamante
	string _argument = conc_string_list("argument", NULL);
	pop_instruction(out, _argument, "", 0);	//output

	//SP = ARG(chiamante) + 1
	fprintf(out, "\t\t//reset sp\n");		//comment
	fprintf(out, "\t\t@ARG\n");				//output
	fprintf(out, "\t\tD=M+1\n");			//output
	fprintf(out, "\t\t@SP\n");				//output
	fprintf(out, "\t\tM=D\n");				//output
	fprintf(out, "\n");						//endline


	//FRAME (tmp) (R14) = LCL
	fprintf(out, "\t\t//set frame\n");		//comment
	fprintf(out, "\t\t@LCL\n");				//output
	fprintf(out, "\t\tD=M\n");				//output
	fprintf(out, "\t\t@R14\n");				//output
	fprintf(out, "\t\tM=D\n");				//output
	//THAT = --FRAME
	reset_segment(out, "THAT");				//output
	//THIS = --FRAME
	reset_segment(out, "THIS");				//output
	//ARG = --FRAME
	reset_segment(out, "ARG");				//output
	//LCL = --FRAME
	reset_segment(out, "LCL");				//output

	//goto return_address = --FRAME
	fprintf(out, "\t\t@R14\n");				//output
	fprintf(out, "\t\tAM=M-1\n");			//output
	fprintf(out, "\t\tA=M\n");				//output
	current_instruction_set(out, 0);		//output

	fprintf(out, "\t\t@R14\n");				//output
	fprintf(out, "\t\tA=M\n");				//output
	fprintf(out, "\t\t0;JMP\n");			//output

	fprintf(out, "\n");						//endline
}

