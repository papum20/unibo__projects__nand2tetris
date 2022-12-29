#include "main.h"




void function_instruction(FILE *out, string function_name, int locals)
	{
		fprintf(out, "////FUNCTION\n");		//commento

		//etichetta
		fprintf(out, "(");
			print_string2file(out, function_name);
			fprintf(out, ")\n");
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



void call_instruction(FILE *out, string function_name, int args, string current_function, int return_num)
	{
		fprintf(out, "\t////CALL\n");		//commento

		//push return_address
		fprintf(out, "\t@");
			print_string2file(out, current_function);
			fprintf(out, "$ret.%d\n", return_num);
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
		fprintf(out, "\t@");
			print_string2file(out, function_name);
			fprintf(out, "\n");
		fprintf(out, "\t0;JMP\n");
		fprintf(out, "\n(");
			print_string2file(out, current_function);
			fprintf(out, "$ret.%d)\n", return_num);
	}



void return_instruction(FILE *out)
	{
		fprintf(out, "\t////RETURN\n");	//commento

		//*ARG = pop()
		//argument 0 = valore di ritorno; arg 0 corrisponde al top dello stack del chiamante
		string _argument = conc_string_list("argument", NULL);
		pop_instruction(out, _argument, "", 0);
		delete_string(_argument);

		//SP = ARG(chiamante) + 1
		fprintf(out, "\t@ARG\n");
		fprintf(out, "\tD=M+1\n");
		fprintf(out, "\t@SP\n");
		fprintf(out, "\tM=D\n");
		fprintf(out, "\n");

		//FRAME (R14) = LCL
		fprintf(out, "\t@LCL\n");
		fprintf(out, "\tD=M\n");
		fprintf(out, "\t@R14\n");
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
		fprintf(out, "\t@R14\n");	
		fprintf(out, "\tA=M-1\n");
		fprintf(out, "\tA=M\n");	
		fprintf(out, "\t0;JMP\n");
	}
