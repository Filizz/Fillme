FLEX=flex
BISON=bison
CC=gcc




PROGRAM = fillme
LEX = fillme.l
PARSER = fillme.y




$(PROGRAM): $(LEX) $(PARSER)

$(FLEX) $(LEX)

$(BISON) -d -t $(PARSER)

$(CC) $(CFLAGS) *.c -ll

