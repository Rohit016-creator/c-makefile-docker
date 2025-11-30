CC = gcc
CFLAGS = -Wall -I include

OBJS = obj/main.o obj/utils.o obj/parser.o obj/compute.o
SRC = src/main.c src/utils.c src/parser.c src/compute.c

TARGET = parser
all: $(TARGET)
$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)
	
obj/%.o: src/%.c
	mkdir -p obj
	$(CC) $(CFLAGS) -c $< -o $@

run: $(TARGET)
	./$(TARGET)

clean: 
	rm -f $(OBJS) $(TARGET)
	rm -rf obj
.PHONY: all clean run 
