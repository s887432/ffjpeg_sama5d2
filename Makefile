# makefile for ffjpeg project
# written by rockcarry

#CC      = gcc
CC      = arm-linux-gnueabihf-gcc
CCFLAGS = -Wall

OBJS = \
    color.o   \
    dct.o     \
    quant.o   \
    zigzag.o  \
    bitstr.o  \
    huffman.o \
    bmp.o     \
    jfif.o    \
    encode.o

OBJS2 = \
    color.o   \
    dct.o     \
    quant.o   \
    zigzag.o  \
    bitstr.o  \
    huffman.o \
    bmp.o     \
    jfif.o    \
    decode.o

all : $(OBJS) $(OBJS2)
	$(CC) -o encode $(OBJS)
	$(CC) -o decode $(OBJS2)

%.o : %.c %.h stdefine.h
	$(CC) $(CCFLAGS) -o $@ $< -c

%.o : %.cpp %.h stdefine.h
	$(CC) $(CCFLAGS) -o $@ $< -c

%.o : %.c stdefine.h
	$(CC) $(CCFLAGS) -o $@ $< -c

%.o : %.cpp stdefine.h
	$(CC) $(CCFLAGS) -o $@ $< -c

%.exe : %.c %.h
	$(CC) $(CCFLAGS) -o $@

%.exe : %.cpp %.h
	$(CC) $(CCFLAGS) -o $@

%.exe : %.c
	$(CC) $(CCFLAGS) -o $@

%.exe : %.cpp
	$(CC) $(CCFLAGS) -o $@

clean :
	-rm -f *.o
	-rm -f *.exe

# rockcarry
# 2016.1.5
# THE END




