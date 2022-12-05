#include "main.h"



//DEFAULT


//per chiamarlo, in R13 metto l'indirizzo di ritorno, in R14 il numero di argomenti, in D l'indirizzo della funzione chiamata
void init_default_call(FILE *out)
	{
		fprintf(out, "//DEFAULT_CALL\n");

		//push return_address
		push(out);						//4 righe
		//push segments
		for(int i = 1; i <= 4; i++) {	//4*6=24 righe +4 = 28
			fprintf(out, "@%d\n", i);
			fprintf(out, "D=M\n");
			push(out);
		}
		fprintf(out, "\n");

		//LCL = SP
		fprintf(out, "@SP\n");
		fprintf(out, "D=M\n");
		fprintf(out, "@LCL\n");
		fprintf(out, "M=D\n");
		//ARG = SP - n_args - 5
		fprintf(out, "@R14\n");
		fprintf(out, "D=D-M\n");
		fprintf(out, "@5\n");
		fprintf(out, "D=D-A\n");
		fprintf(out, "@ARG\n");
		fprintf(out, "M=D\n");

		//jump e label di ritorno
		fprintf(out, "@R15\n");
		fprintf(out, "A=M\n");
		fprintf(out, "0;JMP\n\n");		//13 righe +28 = 41
	}

void init_default_return(FILE *out)
	{
		fprintf(out, "//DEFAULT_RETURN\n");

		//FRAME (R14) = LCL
		fprintf(out, "@LCL\n");
		fprintf(out, "D=M\n");
		fprintf(out, "@R14\n");
		fprintf(out, "M=D\n");
		fprintf(out, "\n");
		//RET (R13) = FRAME-5
		fprintf(out, "@5\n");
		fprintf(out, "A=D-A\n");
		fprintf(out, "D=M\n");
		fprintf(out, "@R13\n");
		fprintf(out, "M=D\n");
		fprintf(out, "\n");							//9 righe

		//*ARG = pop()
		//argument 0 = valore di ritorno; arg 0 corrisponde al top dello stack del chiamante
		pop_instruction(out, "argument", "", 0);	//6 righe +9 = 15

		//SP = ARG(chiamante) + 1
		fprintf(out, "@ARG\n");
		fprintf(out, "D=M+1\n");
		fprintf(out, "@SP\n");
		fprintf(out, "M=D\n");
		fprintf(out, "\n");							//4 righe +15 = 19
		
		//reset segments
		for(int i = 4; i >= 1; i--) {				//4*5=20 righe +19 = 39
			fprintf(out, "@R14\n");
			fprintf(out, "AM=M-1\n");
			fprintf(out, "D=M\n");
			fprintf(out, "@%d\n", i);
			fprintf(out, "M=D\n");
		}
		fprintf(out, "\n");					

		//jump
		fprintf(out, "@R13\n");	
		fprintf(out, "A=M\n");
		fprintf(out, "0;JMP\n");					//3 righe +39 = 42
	}



//ISTRUZIONI

void function_instruction(FILE *out, char function_name[], int locals)
	{
		fprintf(out, "////FUNCTION\n");		//commento

		//etichetta
		fprintf(out, "(%s)\n", function_name);
		//INIZIALIZZA A 0 n VARIABILI LOCALI
		if(locals == 1) {
			fprintf(out, "@SP\n");
			fprintf(out, "M=M+1\n");
			fprintf(out, "A=M-1\n");
			fprintf(out, "M=0\n");
		}
		else if(locals > 1) {
			fprintf(out, "@SP\n");
			fprintf(out, "A=M\n");
			for(int i = 0; i < locals; i++) fprintf(out, "M=0\nA=A+1\n");
			fprintf(out, "D=A\n");
			fprintf(out, "@SP\n");
			fprintf(out, "M=D\n");
		}
	}



void call_instruction(FILE *out, char function_name[], int args, char current_function[], int return_num)
	{
		fprintf(out, "\t////CALL\n");		//commento

		//R14 = numero di argomenti
		fprintf(out, "\t@%d\n", args);
		fprintf(out, "\tD=A\n");
		fprintf(out, "\t@R14\n");
		fprintf(out, "\tM=D\n");
		//R15 = indirizzo funzione
		fprintf(out, "\t@%s\n", function_name);
		fprintf(out, "\tD=A\n");
		fprintf(out, "\t@R15\n");
		fprintf(out, "\tM=D\n");
		//D = return address
		fprintf(out, "\t@%s$ret.%d\n", current_function, return_num);
		fprintf(out, "\tD=A\n");

		//jump a default_call e label di ritorno
		fprintf(out, "\t@54\n");					//@DEFAULT_CALL
		fprintf(out, "\t0;JMP\n");
		fprintf(out, "\n(%s$ret.%d)\n", current_function, return_num);
	}



void return_instruction(FILE *out)
	{
		fprintf(out, "\t////RETURN\n");	//commento				

		//jump a default_return
		fprintf(out, "\t@95\n");	
		fprintf(out, "\t0;JMP\n");
	}
