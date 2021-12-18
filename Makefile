
all:
	gcc -S bai1_goc.c -o bai1_goc.asm -masm=intel
	gcc -S bai2_goc.c -o bai2_goc.asm -masm=intel
	gcc -S bai3_goc.c -o bai3_goc.asm -masm=intel
	gcc -S bai4_goc.c -o bai4_goc.asm -masm=intel
	gcc -S bai5_goc.c -o bai5_goc.asm -masm=intel
	gcc -S bai6_goc.c -o bai6_goc.asm -masm=intel
	gcc -S bai7_goc.c -o bai7_goc.asm -masm=intel
	gcc -S bai8_goc.c -o bai8_goc.asm -masm=intel
	gcc -S bai9_goc.c -o bai9_goc.asm -masm=intel
	gcc -S bai10_goc.c -o bai10_goc.asm -masm=intel

	gcc -S bai1_toiuu.c -o bai1_toiuu.asm -masm=intel
	gcc -S bai2_toiuu.c -o bai2_toiuu.asm -masm=intel
	gcc -S bai3_toiuu.c -o bai3_toiuu.asm -masm=intel
	gcc -S bai4_toiuu.c -o bai4_toiuu.asm -masm=intel
	gcc -S bai5_toiuu.c -o bai5_toiuu.asm -masm=intel
	gcc -S bai6_toiuu.c -o bai6_toiuu.asm -masm=intel
	gcc -S bai7_toiuu.c -o bai7_toiuu.asm -masm=intel
	gcc -S bai8_toiuu.c -o bai8_toiuu.asm -masm=intel
	gcc -S bai9_toiuu.c -o bai9_toiuu.asm -masm=intel
	gcc -S bai10_toiuu.c -o bai10_toiuu.asm -masm=intel

	arm-linux-gnueabi-gcc bai1_goc.c -o bai1_goc_arm.asm
	arm-linux-gnueabi-gcc bai2_goc.c -o bai2_goc_arm.asm
	arm-linux-gnueabi-gcc bai3_goc.c -o bai3_goc_arm.asm -lm
	arm-linux-gnueabi-gcc bai4_goc.c -o bai4_goc_arm.asm -lm
	arm-linux-gnueabi-gcc bai5_goc.c -o bai5_goc_arm.asm -lm
	arm-linux-gnueabi-gcc bai6_goc.c -o bai6_goc_arm.asm -lm
	arm-linux-gnueabi-gcc bai7_goc.c -o bai7_goc_arm.asm -lm
	arm-linux-gnueabi-gcc bai8_goc.c -o bai8_goc_arm.asm -lm
	arm-linux-gnueabi-gcc bai9_goc.c -o bai9_goc_arm.asm -lm
	arm-linux-gnueabi-gcc bai10_goc.c -o bai10_goc_arm.asm -lm

	arm-linux-gnueabi-gcc bai1_toiuu.c -o bai1_toiuu_arm.asm
	arm-linux-gnueabi-gcc bai2_toiuu.c -o bai2_toiuu_arm.asm
	arm-linux-gnueabi-gcc bai3_toiuu.c -o bai3_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc bai4_toiuu.c -o bai4_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc bai5_toiuu.c -o bai5_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc bai6_toiuu.c -o bai6_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc bai7_toiuu.c -o bai7_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc bai8_toiuu.c -o bai8_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc bai9_toiuu.c -o bai9_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc bai10_toiuu.c -o bai10_toiuu_arm.asm -lm
#
#	arm-linux-gnueabi-gcc-5 bai1_goc.o -o bai1_goc.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai2_goc.o -o bai2_goc.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai3_goc.o -o bai3_goc.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai4_goc.o -o bai4_goc.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai5_goc.o -o bai5_goc.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai6_goc.o -o bai6_goc.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai7_goc.o -o bai7_goc.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai8_goc.o -o bai8_goc.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai9_goc.o -o bai9_goc.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai10_goc.o -o bai10_goc.elf -nostdlib
#
#	arm-linux-gnueabi-gcc-5 bai1_toiuu.o -o bai1_toiuu.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai2_toiuu.o -o bai2_toiuu.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai3_toiuu.o -o bai3_toiuu.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai4_toiuu.o -o bai4_toiuu.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai5_toiuu.o -o bai5_toiuu.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai6_toiuu.o -o bai6_toiuu.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai7_toiuu.o -o bai7_toiuu.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai8_toiuu.o -o bai8_toiuu.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai9_toiuu.o -o bai9_toiuu.elf -nostdlib
#	arm-linux-gnueabi-gcc-5 bai10_toiuu.o -o bai10_toiuu.elf -nostdlib

clean:
	rm *.asm
	#rm *.o
	#rm *.elf



