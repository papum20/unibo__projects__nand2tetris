#include "main.h"




void push_instruction(FILE *out, string segment, char file_name[], int ind)
{
	fprintf(out, "\t////PUSH ");						//comment
	print_string2file(out, segment);
	fprintf(out, " %d\n", ind);

	//CONSTANT
	if(segment->c == 'c') {
//		fprintf(out, "constant\n");						//comment
//
		fprintf(out, "\t\t@%d\n", ind);					//output
        fprintf(out, "\t\tD=A\n");						//output
        push(out);										//output
//
//		current_instruction_add(out, 6);				//output
	}
	//STATIC
	else if(segment->c == 's') {
//		fprintf(out, "static %d\n", ind);				//comment
//
		//D=static _
		fprintf(out, "\t\t\t@%s.%d\n", file_name, ind);	//output
		fprintf(out, "\t\t\tD=M\n");					//output
		fprintf(out, "\n");								//output
		//push D
		push(out);										//output
//		
//		current_instruction_add(out, 6);				//output
	}
	//LOCAL
	else if(segment->c == 'l') {
//		fprintf(out, "local %d\n", ind);				//comment
//
		get_lcl_arg_value(out, "LCL", ind);				//output
		push(out);										//output
//		
//		current_instruction_add(out, 9);				//output
	}
	//ARGUMENT
	else if(segment->c == 'a') {
		fprintf(out, "argument %d\n", ind);				//comment

		get_lcl_arg_value(out, "ARG", ind);				//output
		push(out);										//output
//
//		current_instruction_add(out, 9);				//output
	}
}


void pop_instruction(FILE *out, string segment, char file_name[], int ind)
{
	fprintf(out, "\t////POP ");							//comment

	//STATIC
	if(segment->c == 's') {
		fprintf(out, "static %d\n", ind);				//comment

		//D=top
		top(out);										//output
		//pop D in static _
		fprintf(out, "\t\t\t@%s.%d\n", file_name, ind);	//output
		fprintf(out, "\t\t\tM=D\n");					//output
//
//		fprintf(out, "\n");								//endline
//		current_instruction_add(out, 5);				//output
	}
	//LOCAL
	else if(segment->c == 'l') {
		fprintf(out, "local %d\n", ind);				//comment

		set_address(out, "LCL", ind);					//output
		pop_lcl_arg(out);								//output
//
//		current_instruction_add(out, 12);				//output
	}
	//ARGUMENT
	else if(segment->c == 'a') {
		fprintf(out, "argument %d\n", ind);				//comment
		
		set_address(out, "ARG", ind);					//output
		pop_lcl_arg(out);								//output
//
//		current_instruction_add(out, 12);				//output
	}

}



void operator_instruction(FILE *out, char operator, char comment[])
{
	fprintf(out, "\t////%s INSTRUCTION\n", comment);	//comment

	top(out);											//output
	fprintf(out, "\t\t@SP\n");							//output
	fprintf(out, "\t\tA=M-1\n");						//output
	if(operator == '-') fprintf(out, "\t\tM=M-D\n");	//output
	else fprintf(out, "\t\tM=D%cM\n", operator);		//output
//	
//	current_instruction_add(out, 6);					//output
}
void n_operator_instruction(FILE *out, char operator, char comment[])
{
	fprintf(out, "\t////%s INSTRUCTION\n", comment);	//comment

	fprintf(out, "\t\t@SP\n");							//output
	fprintf(out, "\t\tA=M-1\n");						//output
	fprintf(out, "\t\tM=%cM\n", operator);				//output
//	
//	current_instruction_add(out, 3);					//output
}