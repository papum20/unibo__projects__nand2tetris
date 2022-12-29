main: main.o rows.o basic_instructions.o stream_instructions.o function_instructions.o
	gcc main.o rows.o basic_instructions.o stream_instructions.o function_instructions.o -o VMtranslator

main.o: main.c main.h
	gcc -c main.c

rows.o: rows.c main.h
	gcc -c rows.c

basic_instructions.o: basic_instructions.c main.h
	gcc -c basic_instructions.c

stream_instructions.o: stream_instructions.c main.h
	gcc -c stream_instructions.c

function_instructions.o: function_instructions.c main.h
	gcc -c function_instructions.c

	
clean:
	rm *.o ,main