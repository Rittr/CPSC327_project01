CFLAGS = -Wall

# all:  myexe
# default: myexe
# 	g++ $(CFLAGS) -o myexe myfunc.o main.o
# 
# myexe:  myfunc.o main.o
# 	g++ $(CFLAGS) -o myexe myfunc.o main.o

all: main.o myfunc.o
	g++ $(CFLAGS) -o myexe main.o myfunc.o

myfunc.o:  myfunc.cpp myfunc.h
	g++ $(CFLAGS) -c myfunc.cpp

main.o: main.cpp myfunc.h
	g++ $(CFLAGS) -c main.cpp

clean:
	rm -f *.o myexe
