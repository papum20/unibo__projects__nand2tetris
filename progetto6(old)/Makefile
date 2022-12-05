main: main.o rows.o segments.o basic_functions.o basic_instructions.o compare_instructions.o stream_instructions.o function_instructions.o
	gcc main.o rows.o segments.o basic_functions.o basic_instructions.o compare_instructions.o stream_instructions.o function_instructions.o -o VMtranslator

main.o: main.c main.h
	gcc -c main.c

rows.o: rows.c main.h
	gcc -c rows.c

segments.o: segments.c main.h
	gcc -c segments.c

basic_functions.o: basic_functions.c main.h
	gcc -c basic_functions.c

basic_instructions.o: basic_instructions.c main.h
	gcc -c basic_instructions.c

stream_instructions.o: stream_instructions.c main.h
	gcc -c stream_instructions.c

function_instructions.o: function_instructions.c main.h
	gcc -c function_instructions.c

compare_instructions.o: compare_instructions.c main.h
	gcc -c compare_instructions.c

	
clean:
	rm *.o ,main