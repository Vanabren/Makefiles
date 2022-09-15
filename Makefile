##
 # @file Makefile
 # @author Vance Brenderabrandis
 # @date 2022-09-14
 # @brief Makefile for easy compilation
 # 
 # Makefile for easy compilation of provided base Employee class and derived Officer and Supervisor classes
##


CC = g++ # Compiler is g++
TARGET = employee # target executable name
CFLAGS = -c -Wall -Wextra # Compile with all warnings and extra warnings notified

default: all # Just typing "make" into the console does the default action, which is to make the executable

all:	$(TARGET)

$(TARGET): 	Employee.o Supervisor.o Officer.o main.o # Links all necessary .o files to create target executable
	$(CC) -Wall -Wextra -o $(TARGET) Employee.o Supervisor.o Officer.o main.o 

Employee.o: 	Employee.cpp Employee.h # Recipe for compiling the Employee object file
	$(CC) $(CFLAGS) Employee.cpp

Supervisor.o: 	Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) Supervisor.cpp

Officer.o: 	Officer.cpp Officer.h
	$(CC) $(CFLAGS) Officer.cpp

main.o:		main.cpp Employee.h Supervisor.h Officer.h
	$(CC) $(CFLAGS) main.cpp

clean: # Typing "make clean" does the below directions, which is to remove the executable, any and all object files, and backup files
	$(RM) employee *.o *~
