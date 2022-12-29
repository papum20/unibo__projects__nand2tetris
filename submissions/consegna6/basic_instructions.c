#include "main.h"



////CODIFICA ISTRUZIONI

void push_instruction(FILE *out, char segment[], char file_name[], int ind)
	{
		fprintf(out, "\t\t////PUSH %s %d\n", segment, ind);		//commento

		//set D

		//CONSTANT
		if(segment[0] == 'c') {
			fprintf(out, "\t\t@%d\n", ind);
			fprintf(out, "\t\tD=A\n");
		}
		//STATIC
		else if(segment[0] == 's') {
			fprintf(out, "\t\t@%s.%d\n", file_name, ind);
			fprintf(out, "\t\tD=M\n");
		}
		//LOCAL e ARGUMENT
		else{
			if(segment[0] == 'l') fprintf(out, "\t\t@LCL\n");
			else if(segment[0] == 'a') fprintf(out, "\t\t@ARG\n");
			fprintf(out, "\t\tD=M\n");
			fprintf(out, "\t\t@%d\n", ind);
			fprintf(out, "\t\tA=D+A\n");
			fprintf(out, "\t\tD=M\n");
		}

		//push D
		push(out);
	}



void pop_instruction(FILE *out, char segment[], char file_name[], int ind)
	{
		fprintf(out, "\t\t////POP %s %d\n", segment, ind);		//commento

		//STATIC
		if(segment[0] == 's') {
			top(out);
			fprintf(out, "\t\t@%s.%d\n", file_name, ind);
			fprintf(out, "\t\tM=D\n");
		}
		//LOCAL e ARGUMENT
		else {
			if(segment[0] == 'l') set_address(out, "LCL", ind);
			else if(segment[0] == 'a') set_address(out, "ARG", ind);
			top(out);
			fprintf(out, "\t\t@R15\n");
			fprintf(out, "\t\tA=M\n");
			fprintf(out, "\t\tM=D\n");
		}

	}



void operator_instruction(FILE *out, char operator, char instr[])
	{
		fprintf(out, "\t////%s INSTRUCTION\n", instr);	//commento

		top(out);
		fprintf(out, "\tA=A-1\n");
		if(operator == '-') fprintf(out, "\tM=M-D\n");
		else fprintf(out, "\tM=D%cM\n", operator);
	}
void n_operator_instruction(FILE *out, char operator, char instr[])
	{
		fprintf(out, "\t////%s INSTRUCTION\n", instr);	//commento

		fprintf(out, "\t@SP\n");
		fprintf(out, "\tA=M-1\n");
		fprintf(out, "\tM=%cM\n", operator);
	}



void comp_instruction(FILE *out, char name[], int label_num1, int label_num2, char current_function[])
	{
		fprintf(out, "\t////%s INSTRUCTION\n", name);	//commento

		//compare
		top(out);
		fprintf(out, "\tA=A-1\n");
		fprintf(out, "\tD=M-D\n");
		fprintf(out, "\n");

		//jumps
		fprintf(out, "\t@%s$___%d\n", current_function, label_num1);	//@IF_TRUE
		if(strcmp(name, "eq") == 0) fprintf(out, "\tD;JEQ\n");		//D;JEQ
		else if(strcmp(name, "gt") == 0) fprintf(out, "\tD;JGT\n");
		else if(strcmp(name, "lt") == 0) fprintf(out, "\tD;JLT\n");
		fprintf(out, "\tD=0\n");										//D=0	//else
		fprintf(out, "\t@%s$___%d\n", current_function, label_num2);	//@END
		fprintf(out, "\t0;JMP\n");									//0;JMP
		fprintf(out, "\t(%s$___%d)\n", current_function, label_num1);	//(IF_TRUE)
		fprintf(out, "\tD=-1\n");										//D=-1
		fprintf(out, "\t(%s$___%d)\n", current_function, label_num2);	//(END)
		fprintf(out, "\t@SP\n");										//@SP
		fprintf(out, "\tA=M-1\n");									//A=M-1
		fprintf(out, "\tM=D\n");										//M=D
	}





////FUNZIONI AUSILIARIE

	void top(FILE *out) {
		fprintf(out, "\t\t@SP\n");
		fprintf(out, "\t\tAM=M-1\n");
		fprintf(out, "\t\tD=M\n");
	}
////PUSH
	void push(FILE *out) {
		fprintf(out, "\t\t@SP\n");
		fprintf(out, "\t\tM=M+1\n");
		fprintf(out, "\t\tA=M-1\n");
		fprintf(out, "\t\tM=D\n");
	}
////POP
	void set_address(FILE *out, char segment_start[], int ind) {
		fprintf(out, "\t\t@%s\n", segment_start);
		fprintf(out, "\t\tD=M\n");
		fprintf(out, "\t\t@%d\n", ind);
		fprintf(out, "\t\tD=D+A\n");
		fprintf(out, "\t\t@R15\n");
		fprintf(out, "\t\tM=D\n");
		fprintf(out, "\n");
	}
