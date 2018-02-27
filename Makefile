CC = gcc
CFLAGS = `idris --include`

argtable_idris.o: argtable_idris.c argtable_idris.h

clean: .PHONY
	rm argtable_idris.o

.PHONY:
