ASM_FILES := $(wildcard *.asm)
C_FILES := $(wildcard *.c)
OBJ_FILES := $(ASM_FILES:.asm=.o) $(C_FILES:.c=.o)
BIN := bin

all: $(BIN)

# Assemble .asm files to .o with nasm
%.o: %.asm
	nasm -f elf64 $< -o $@

# Compile .c files to .o with gcc
%.o: %.c
	gcc -c $< -o $@

# Link .o files to create the final binary
$(BIN): $(OBJ_FILES)
	gcc -no-pie $(OBJ_FILES) -o $(BIN)

clean:
	rm -f $(OBJ_FILES)
