BIN=fastcoll

CXX=g++
CC=gcc
CFLAGS=-g -Wall -O2

.cpp.o:
	$(CXX) $(CFLAGS) -c $^ $(INC_DIR)

.cc.o:
	$(CC) $(CFLAGS) -c -std=c99 -x c $^ $(INC_DIR)

.c.o:
	$(CC) $(CFLAGS) -c $^ $(INC_DIR)

.o:
	$(CXX) $(CFLAGS) -o $@ $^ $(LIB)


all: $(BIN)

$(BIN): $(BIN_OBJS)
	$(CXX) $(CFLAGS) -o $@ $^  $(LIB)

fastcoll: main.o md5.o block0.o block1.o block1stevens00.o block1stevens01.o block1stevens10.o block1stevens11.o block1wang.o

clean:
	rm -f *.o $(BIN)