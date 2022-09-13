##
 # @file Makefile
 # @author Vance Brenderabrandis
 # @date 2022-09-13
 # @brief Makefile for easy compilation
 # 
 # Makefile for easy compilation of provided base Employee class and derived Officer and Supervisor classes
##


CC = g++  # Compiler is g++
TARGET = employee # target executable name
CFLAGS = -g -c -Wall -Wextra # Compilation settings / flags

all: $(TARGET)

$(TARGET):	Employee.o Supervisor.o Officer.o main.o # Links all necessary .o files to create target executable
	$(CC) $(CFLAGS) -o Employee Employee.o Supervisor.o Officer.o main.o

Employee.o:	Employee.cpp Employee.h
	$(CC) $(CFLAGS) Employee.cpp

Supervisor.o:	Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) Supervisor.cpp

Officer.o:	Officer.cpp Officer.h
	$(CC) $(CFLAGS) Officer.cpp

main.o:	main.cpp Employee.h Supervisor.h Officer.h
	$(CC) $(CFLAGS) main.cpp

clean:
	$(RM) Employee *.o *~
