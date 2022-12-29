#include "main.h"




void function_instruction(FILE *out, char function_name[], int locals)
	{
		fprintf(out, "////FUNCTION\n");		//commento

		//etichetta
		fprintf(out, "(%s)\n", function_name);
		//INIZIALIZZA A 0 n VARIABILI LOCALI
		if(locals > 0) {
			fprintf(out, "D=0\n");
			fprintf(out, "@SP\n");
			fprintf(out, "A=M\n");
			for(int i = 0; i < locals; i++) fprintf(out, "M=D\nA=A+1\n");
			fprintf(out, "D=A\n");
			fprintf(out, "@SP\n");
			fprintf(out, "M=D\n");
		}
	}



void call_instruction(FILE *out, char function_name[], int args, char current_function[], int return_num)
	{
		fprintf(out, "\t////CALL\n");		//commento

		//push return_address
		fprintf(out, "\t@%s$ret.%d\n", current_function, return_num);
		fprintf(out, "\tD=A\n");
		push(out);
		//push segments
		for(int i = 1; i <= 4; i++) {
			fprintf(out, "\t@%d\n", i);
			fprintf(out, "\tD=M\n");
			push(out);
		}
		fprintf(out, "\n");

		//LCL = SP
		fprintf(out, "\t@SP\n");
		fprintf(out, "\tD=M\n");
		fprintf(out, "\t@LCL\n");
		fprintf(out, "\tM=D\n");
		//ARG = SP - n_args - 5
		fprintf(out, "\t@%d\n", args + 5);
		fprintf(out, "\tD=D-A\n");
		fprintf(out, "\t@ARG\n");
		fprintf(out, "\tM=D\n");

		//jump e label di ritorno
		fprintf(out, "\t@%s\n", function_name);
		fprintf(out, "\t0;JMP\n");
		fprintf(out, "\n(%s$ret.%d)\n", current_function, return_num);
	}



void return_instruction(FILE *out)
	{
		fprintf(out, "\t////RETURN\n");	//commento

		//FRAME (R14) = LCL
		fprintf(out, "\t@LCL\n");
		fprintf(out, "\tD=M\n");
		fprintf(out, "\t@R14\n");
		fprintf(out, "\tM=D\n");
		fprintf(out, "\n");
		//RET (R13) = FRAME-5
		fprintf(out, "\t@5\n");
		fprintf(out, "\tA=D-A\n");
		fprintf(out, "\tD=M\n");
		fprintf(out, "\t@R13\n");
		fprintf(out, "\tM=D\n");
		fprintf(out, "\n");	

		//*ARG = pop()
		//argument 0 = valore di ritorno; arg 0 corrisponde al top dello stack del chiamante
		pop_instruction(out, "argument", "", 0);

		//SP = ARG(chiamante) + 1
		fprintf(out, "\t@ARG\n");
		fprintf(out, "\tD=M+1\n");
		fprintf(out, "\t@SP\n");
		fprintf(out, "\tM=D\n");
		fprintf(out, "\n");
		
		//reset segments
		for(int i = 4; i >= 1; i--) {
			fprintf(out, "\t@R14\n");
			fprintf(out, "\tAM=M-1\n");
			fprintf(out, "\tD=M\n");
			fprintf(out, "\t@%d\n", i);
			fprintf(out, "\tM=D\n");
		}
		fprintf(out, "\n");					

		//jump
		fprintf(out, "\t@R13\n");	
		fprintf(out, "\tA=M\n");
		fprintf(out, "\t0;JMP\n");
	}
