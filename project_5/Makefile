assembler: assembler.o A_instruction.o C_instruction.o rows.o
	gcc assembler.o A_instruction.o C_instruction.o rows.o -o assembler

assembler.o: assembler.c assembler.h
	gcc -c assembler.c

A_instruction.o: A_instruction.c assembler.h
	gcc -c A_instruction.c

C_instruction.o: C_instruction.c assembler.h
	gcc -c C_instruction.c

rows.o: rows.c assembler.h
	gcc -c rows.c

clean:
	rm *.o assembler