# Makefile for your C program

# Compiler and compiler flags
CC = gcc
CFLAGS = -Wall -Wextra -g

# Source files and target executable
SRCS = PTAlloc.c      # Add more source files if needed
OBJS = $(SRCS:.c=.o)
TARGET = myprogram

# Compile rule
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Linking rule
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

# Phony target to clean up generated files
.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET)
