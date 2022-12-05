#include "main.h"




/*	void SP_increment(FILE *out)
	{
		fprintf(out, "\t\t\t\t@SP\n");
		fprintf(out, "\t\t\t\tM=M+1\n");

		fprintf(out, "\n");
	}

	void SP_decrement(FILE *out)
	{
		fprintf(out, "\t\t\t\t@SP\n");
		fprintf(out, "\t\t\t\tM=M-1\n");
		
		fprintf(out, "\n");
	}*/


////PUSH
	void get_lcl_arg_value(FILE *out, char segment_start[], int ind)
	{
		fprintf(out, "\t\t\t@%s\n", segment_start);
		fprintf(out, "\t\t\tD=M\n");
		fprintf(out, "\t\t\t@%d\n", ind);
		fprintf(out, "\t\t\tA=D+A\n");
		fprintf(out, "\t\t\tD=M\n");

		fprintf(out, "\n");
	}

/*	void static_value(FILE *out, char file_name[], int ind)
	{
		fprintf(out, "\t\t\t@%s.%d\n", file_name, ind);
		fprintf(out, "\t\t\tD=M\n");

		fprintf(out, "\n");
	}*/

	void push(FILE *out)
	{
		fprintf(out, "\t\t\t@SP\n");
		fprintf(out, "\t\t\tM=M+1\n");
		fprintf(out, "\t\t\tA=M-1\n");
		fprintf(out, "\t\t\tM=D\n");
	}


////POP
	void set_address(FILE *out, char segment_start[], int ind)
	{
		fprintf(out, "\t\t\t@%s\n", segment_start);
		fprintf(out, "\t\t\tD=M\n");
		fprintf(out, "\t\t\t@%d\n", ind);
		fprintf(out, "\t\t\tD=D+A\n");
		fprintf(out, "\t\t\t@R15\n");
		fprintf(out, "\t\t\tM=D\n");

		fprintf(out, "\n");
	}

	void top(FILE *out)
	{
		fprintf(out, "\t\t\t@SP\n");
		fprintf(out, "\t\t\tAM=M-1\n");
		fprintf(out, "\t\t\tD=M\n");

		fprintf(out, "\n");
	}

	void pop_lcl_arg(FILE *out)
	{
		top(out);
		fprintf(out, "\t\t\t@R15\n");
		fprintf(out, "\t\t\tA=M\n");
		fprintf(out, "\t\t\tM=D\n");

		fprintf(out, "\n");
	}

/*	void pop_static(FILE *out, char file_name[], int ind)
	{
		top(out);			//D=top(stack)
		fprintf(out, "\t\t\t@%s.%d\n", file_name, ind);
		fprintf(out, "\t\t\tM=D\n");

		fprintf(out, "\n");
	}*/


////FUNCTIONS
	void push_segment_value(FILE* out, char segment[])
	{
		fprintf(out, "\t\t\t@%s\n", segment);
		fprintf(out, "\t\t\tD=M\n");
		push(out);		
	}
