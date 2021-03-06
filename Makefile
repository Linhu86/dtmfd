#
# Defines:
#  UNSIGNED  -  use unsigned 8 bit samples
#               otherwise use signed 8 bit samples
#

CFLAGS= -DUNSIGNED

default: detect gen

detect: detect.c
	$(CC) detect.c -o detect

gen:	gen.c
	$(CC) gen.c -o gen

clean:
	rm -rf *.o core a.out
	rm -rf detect gen 

