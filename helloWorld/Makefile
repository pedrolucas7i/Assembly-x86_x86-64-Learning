ASM_FILES := $(wildcard *.asm)
OBJ_FILES := $(ASM_FILES:.asm=.o)
BIN := bin

all: $(BIN)

# Assemble .asm files to .o with nasm
%.o: %.asm
	nasm -f elf64 $< -o $@

# Link .o files to create the final binary
$(BIN): $(OBJ_FILES)
	ld $(OBJ_FILES) -o $(BIN)

clean:
	rm -f $(OBJ_FILES)
