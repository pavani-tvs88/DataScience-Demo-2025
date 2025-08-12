# Makefile for building and cleaning the project

.PHONY: all clean

# Compiler and flags
CC = gcc
CFLAGS = -Wall -Wextra -O2

# Source files and target
SRC = $(wildcard src/*.c)
TARGET = bin/project

all: $(TARGET)

$(TARGET): $(SRC)
	@mkdir -p bin
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -rf bin