##
 # @file Makefile
 # @author Vance Brenderabrandis
 # @date 2022-09-09
 # @brief Makefile for easy compilation
 # 
 # Makefile for easy compilation of provided base Employee class and derived Officer and Supervisor classes
##


CC = g++  # Compiler is g++
CFLAGS = -g -Wall -Wextra # Flags : -g (Compil

default: employee

employee:	Employee.o Supervisor.o Officer.o main.o
	$(CC) $(CFLAGS) -o Employee Employee.o Supervisor.o Officer.o main.o

Employee.o:	Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp

Supervisor.o:	Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp

Officer.o:	Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp

main.o:	main.cpp Employee.h Supervisor.h Officer.h
	$(CC) $(CFLAGS) -c main.cpp

clean:
	$(RM) Employee *.o *~
