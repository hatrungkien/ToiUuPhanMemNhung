ALL = $(BAI1GOC) $(BAI2GOC) $(BAI3GOC) $(BAI4GOC) $(BAI5GOC) $(BAI6GOC) $(BAI7GOC) $(BAI8GOC) $(BAI9GOC) $(BAI10GOC) $(BAI1TOIUU) $(BAI2TOIUU) $(BAI3TOIUU) $(BAI4TOIUU) $(BAI5TOIUU) $(BAI6TOIUU) $(BAI7TOIUU) $(BAI8TOIUU) $(BAI9TOIUU) $(BAI10TOIUU)
all: $(ALL)
    gcc -S bai1_goc.c -o bai1_goc.asm -masm=intel
main.o: main.asm
    nasm -f elf -g -F stabs main.asm
