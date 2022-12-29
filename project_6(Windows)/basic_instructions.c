#include "main.h"



////CODIFICA ISTRUZIONI

void push_instruction(FILE *out, string segment, char file_name[], int ind)
	{
		fprintf(out, "\t\t////PUSH ");		//commento
			print_string2file(out, segment);
			fprintf(out, " %d\n", ind);

		//set D

		//CONSTANT
		if(segment->c == 'c') {
			fprintf(out, "\t\t@%d\n", ind);
			fprintf(out, "\t\tD=A\n");
		}
		//STATIC
		else if(segment->c == 's') {
			//D=static _
			fprintf(out, "\t\t@%s.%d\n", file_name, ind);
			fprintf(out, "\t\tD=M\n");
		}
		//LOCAL e ARGUMENT
		else{
			if(segment->c == 'l') fprintf(out, "\t\t@LCL\n");
			else if(segment->c == 'a') fprintf(out, "\t\t@ARG\n");
			fprintf(out, "\t\tD=M\n");
			fprintf(out, "\t\t@%d\n", ind);
			fprintf(out, "\t\tA=D+A\n");
			fprintf(out, "\t\tD=M\n");
		}

		//push D
		push(out);
	}



void pop_instruction(FILE *out, string segment, char file_name[], int ind)
	{
		fprintf(out, "\t\t////POP ");		//commento
			print_string2file(out, segment);
			fprintf(out, " %d\n", ind);

		//STATIC
		if(segment->c == 's') {
			top(out);
			fprintf(out, "\t\t@%s.%d\n", file_name, ind);
			fprintf(out, "\t\tM=D\n");
		}
		//LOCAL and ARGUMENT
		else {
			if(segment->c == 'l') set_address(out, "LCL", ind);
			else if(segment->c == 'a') set_address(out, "ARG", ind);
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
		fprintf(out, "\t\tA=A-1\n");
		if(operator == '-') fprintf(out, "\t\tM=M-D\n");
		else fprintf(out, "\t\tM=D%cM\n", operator);
	}
void n_operator_instruction(FILE *out, char operator, char instr[])
	{
		fprintf(out, "\t////%s INSTRUCTION\n", instr);	//commento

		fprintf(out, "\t\t@SP\n");
		fprintf(out, "\t\tA=M-1\n");
		fprintf(out, "\t\tM=%cM\n", operator);
	}



void comp_instruction(FILE *out, char name[], int label_num1, int label_num2, string current_function)
	{
		fprintf(out, "\t////%s INSTRUCTION\n", name);	//commento

		//compare
		top(out);
		fprintf(out, "\t\tA=A-1\n");
		fprintf(out, "\t\tD=M-D\n");
		fprintf(out, "\n");

		//jumps
		fprintf(out, "\t\t@");											//@IF_TRUE
			print_string2file(out, current_function);
			fprintf(out, "$___%d\n", label_num1);
		if(strcmp(name, "eq") == 0) fprintf(out, "\t\tD;JEQ\n");		//D;JEQ
		else if(strcmp(name, "gt") == 0) fprintf(out, "\t\tD;JGT\n");
		else if(strcmp(name, "lt") == 0) fprintf(out, "\t\tD;JLT\n");
		fprintf(out, "\t\tD=0\n");										//D=0	//else
		fprintf(out, "\t\t@");											//@END
			print_string2file(out, current_function);
			fprintf(out, "$___%d\n", label_num2);
		fprintf(out, "\t\t0;JMP\n");									//0;JMP
		fprintf(out, "\t\t(");											//(IF_TRUE)
			print_string2file(out, current_function);
			fprintf(out, "$___%d)\n", label_num1);
		fprintf(out, "\t\tD=-1\n");										//D=-1
		fprintf(out, "\t\t(");											//(END)
			print_string2file(out, current_function);
			fprintf(out, "$___%d)\n", label_num2);
		fprintf(out, "\t\t@SP\n");										//@SP
		fprintf(out, "\t\tA=M-1\n");									//A=M-1
		fprintf(out, "\t\tM=D\n");										//M=D

		fprintf(out, "\n");
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
