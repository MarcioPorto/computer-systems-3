#CC = /usr/local/cs/bin/gcc
CC = /usr/bin/gcc-4.4
CFLAGS= -O1 -Wall 
CINC =
F32 =-m32
F64 =-m64


.SUFFIXES: .c .32.s .64.s .32o .64o .32d .64d 


.c.32.s:
	$(CC) $(CFLAGS) $(CINC) -S $(F32) $*.c -o $*.$(MACHINE)32.s

.c.64.s:
	$(CC) $(CFLAGS) $(CINC) -S $(F64) $*.c -o $*.$(MACHINE)64.s

.c.32d:
	$(CC) $(CFLAGS) $(CINC) $(F32) $*.c -o $*
	objdump -d $* > $*.32d
	rm -f $*

.c.64d:
	$(CC) $(CFLAGS) $(CINC) $(F64) $*.c -o $*
	objdump -d $* > $*.64d
	rm -f $*

all:	hw3_arith.32.s hw3_arith.64.s \
	trace.32.s trace.64.s \
	prob1.32.s

# additioanl example of compiling sum.c the way we have in the past
hw3_arith32: hw3_arith.c
	$(CC) $(CFLAGS) $(CINC) $(F32) hw3_arith.c -o hw3_arith.32

trace32: trace.c
	$(CC) $(CFLAGS) $(CINC) $(F32) trace.c -o trace.32

prob132: prob1.c
	$(CC) $(CFLAGS) $(CINC) $(F32) prob1.c -o prob1.32

clean:
	rm -f *~ *.32* *.64*
