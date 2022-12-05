#include "main.h"



////CODIFICA ISTRUZIONI

void push_instruction(FILE *out, char segment[], char file_name[], int ind)
	{
		fprintf(out, "\t\t////PUSH %s %d\n", segment, ind);		//commento

		if(segment[0] == 'c' && ind <= 1) {
			fprintf(out, "\t\t@SP\n");
			fprintf(out, "\t\tM=M+1\n");
			fprintf(out, "\t\tA=M-1\n");
			fprintf(out, "\t\tM=%d\n", ind);
		}
		else
		{
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
			//POINTER e TEMP
			else if(segment[0] == 'p' || strcmp(segment, "temp") == 0) {
				if(segment[0] == 'p') fprintf(out, "\t\t@%d\n", 3+ind);	//3+0=this, 3+1=that
				else fprintf(out, "\t\t@%d\n", 5+ind);							//temp[0]=5
				fprintf(out, "\t\tD=M\n");
			}
			//LOCAL, ARGUMENT, THIS, THAT
			else{
				if(segment[0] == 'l') fprintf(out, "\t\t@LCL\n");
				else if(segment[0] == 'a') fprintf(out, "\t\t@ARG\n");
				else if(strcmp(segment, "this") == 0) fprintf(out, "\t\t@THIS\n");
				else if(strcmp(segment, "that") == 0) fprintf(out, "\t\t@THAT\n");
				if(ind == 0) fprintf(out, "\t\tA=M\n");
				else if(ind == 1) fprintf(out, "\t\tA=M+1\n");
				else {
					fprintf(out, "\t\tD=M\n");
					fprintf(out, "\t\t@%d\n", ind);
					fprintf(out, "\t\tA=D+A\n");
				}
				fprintf(out, "\t\tD=M\n");
			}

			//push D
			push(out);
		}
	}



void pop_instruction(FILE *out, char segment[], char file_name[], int ind)
	{
		fprintf(out, "\t\t////POP %s %d\n", segment, ind);		//commento

		//STATIC, POINTER, TEMP
		if(segment[0] == 's' || segment[0] == 'p' || strcmp(segment, "temp") == 0) {
			top(out);
			if(segment[0] == 's') fprintf(out, "\t\t@%s.%d\n", file_name, ind);
			else if(segment[0] == 'p') fprintf(out, "\t\t@%d\n", 3+ind);		//3+0=this, 3+1=that
			else fprintf(out, "\t\t@%d\n", 5+ind);								//temp[0]=5
			fprintf(out, "\t\tM=D\n");
		}
		//LOCAL, ARGUMENT, THIS, THAT
		else {
			if(ind <= 1) {
				top(out);
				if(segment[0] == 'l') fprintf(out, "\t\t@LCL\n");
				else if(segment[0] == 'a') fprintf(out, "\t\t@ARG\n");
				else if(strcmp(segment, "this") == 0) fprintf(out, "\t\t@THIS\n");
				else if(strcmp(segment, "that") == 0) fprintf(out, "\t\t@THAT\n");
				if(ind == 0) fprintf(out, "\t\tA=M\n");
				else if(ind == 1) fprintf(out, "\t\tA=M+1\n");
				fprintf(out, "\t\tM=D\n");		//6 righe
			}
			else {
				if(segment[0] == 'l') set_address(out, "LCL", ind);
				else if(segment[0] == 'a') set_address(out, "ARG", ind);
				else if(strcmp(segment, "this") == 0) set_address(out, "THIS", ind);
				else if(strcmp(segment, "that") == 0) set_address(out, "THAT", ind);
				top(out);
				fprintf(out, "\t\t@R15\n");
				fprintf(out, "\t\tA=M\n");
				fprintf(out, "\t\tM=D\n");
			}
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



void comp_instruction(FILE *out, char name[], char current_function[], int return_num)
	{
		fprintf(out, "\t////%s INSTRUCTION\n", name);	//commento

		fprintf(out, "\t@%s$ret.%d\n", current_function, return_num);
		fprintf(out, "\tD=A\n");
		if(name[0] == 'e') fprintf(out, "\t@6\n");			//eq
		else if(name[0] == 'g') fprintf(out, "\t@21\n");	//gt	6+1*15=21
		else if(name[0] == 'l') fprintf(out, "\t@36\n");	//lt	6+2*15=36
		fprintf(out, "\t0;JMP\n");
		fprintf(out, "\t(%s$ret.%d)\n", current_function, return_num);
	}





////INIT

//metto prima in D l'indirizzo di ritorno
void init_default_comp(FILE *out)
	{
		//inizio: riga 6
		fprintf(out, "//DEFAULT COMPARE\n");

		for(int i = 0; i < 3; i++) {
			//salvo D in R15
			fprintf(out, "@R15\n");
			fprintf(out, "M=D\n");				//2 righe
			//compare
			top(out);
			fprintf(out, "A=A-1\n");
			fprintf(out, "D=M-D\n");
			fprintf(out, "M=0\n");				//IF FALSE	6+2=8 righe
			//jumps
			fprintf(out, "@51\n");				//@END (IF FALSE)	51=6+3*15
			if(i == 0) fprintf(out, "D;JNE\n");	//D;JNE (per eq)
			if(i == 1) fprintf(out, "D;JLE\n");	//D;JNE (per gt)
			if(i == 2) fprintf(out, "D;JGE\n");	//D;JNE (per lt)
			fprintf(out, "@SP\n");				//@SP
			fprintf(out, "A=M-1\n");			//A=M-1
			fprintf(out, "M=-1\n");				//M=-1
			fprintf(out, "@51\n");				//M=-1
			fprintf(out, "0;JMP\n");			//M=-1
			fprintf(out, "\n");					//7+8 = 15 righe
		}

		//return
		fprintf(out, "@R15\n");						//51 (6+3*15)
		fprintf(out, "A=M\n");
		fprintf(out, "0;JMP\n\n");					//3*15+3=48 righe
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
