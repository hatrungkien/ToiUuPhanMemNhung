
all:
	gcc -S bai1_goc.c -o bai1_goc_x86.asm -masm=intel
	gcc -S bai2_goc.c -o bai2_goc_x86.asm -masm=intel
	gcc -S bai3_goc.c -o bai3_goc_x86.asm -masm=intel
	gcc -S bai4_goc.c -o bai4_goc_x86.asm -masm=intel
	gcc -S bai5_goc.c -o bai5_goc_x86.asm -masm=intel
	gcc -S bai6_goc.c -o bai6_goc_x86.asm -masm=intel
	gcc -S bai7_goc.c -o bai7_goc_x86.asm -masm=intel
	gcc -S bai8_goc.c -o bai8_goc_x86.asm -masm=intel
	gcc -S bai9_goc.c -o bai9_goc_x86.asm -masm=intel
	gcc -S bai10_goc.c -o bai10_goc_x86.asm -masm=intel

	gcc -S bai1_toiuu.c -o bai1_toiuu_x86.asm -masm=intel
	gcc -S bai2_toiuu.c -o bai2_toiuu_x86.asm -masm=intel
	gcc -S bai3_toiuu.c -o bai3_toiuu_x86.asm -masm=intel
	gcc -S bai4_toiuu.c -o bai4_toiuu_x86.asm -masm=intel
	gcc -S bai5_toiuu.c -o bai5_toiuu_x86.asm -masm=intel
	gcc -S bai6_toiuu.c -o bai6_toiuu_x86.asm -masm=intel
	gcc -S bai7_toiuu.c -o bai7_toiuu_x86.asm -masm=intel
	gcc -S bai8_toiuu.c -o bai8_toiuu_x86.asm -masm=intel
	gcc -S bai9_toiuu.c -o bai9_toiuu_x86.asm -masm=intel
	gcc -S bai10_toiuu.c -o bai10_toiuu_x86.asm -masm=intel

	gcc bai1_goc.c -o bai1_goc.o -lm
	gcc bai2_goc.c -o bai2_goc.o -lm
	gcc bai3_goc.c -o bai3_goc.o -lm
	gcc bai4_goc.c -o bai4_goc.o -lm
	gcc bai5_goc.c -o bai5_goc.o -lm
	gcc bai6_goc.c -o bai6_goc.o -lm
	gcc bai7_goc.c -o bai7_goc.o -lm
	gcc bai8_goc.c -o bai8_goc.o -lm
	gcc bai9_goc.c -o bai9_goc.o -lm
	gcc bai10_goc.c -o bai10_goc.o -lm

	gcc bai1_toiuu.c -o bai1_toiuu.o -lm
	gcc bai2_toiuu.c -o bai2_toiuu.o -lm
	gcc bai3_toiuu.c -o bai3_toiuu.o -lm
	gcc bai4_toiuu.c -o bai4_toiuu.o -lm
	gcc bai5_toiuu.c -o bai5_toiuu.o -lm
	gcc bai6_toiuu.c -o bai6_toiuu.o -lm
	gcc bai7_toiuu.c -o bai7_toiuu.o -lm
	gcc bai8_toiuu.c -o bai8_toiuu.o -lm
	gcc bai9_toiuu.c -o bai9_toiuu.o -lm
	gcc bai10_toiuu.c -o bai10_toiuu.o -lm

	gcc -O3 bai1_goc.c -o bai1_goc_flag.o -lm
	gcc -O3 bai2_goc.c -o bai2_goc_flag.o -lm
	gcc -O3 bai3_goc.c -o bai3_goc_flag.o -lm
	gcc -O3 bai4_goc.c -o bai4_goc_flag.o -lm
	gcc -O3 bai5_goc.c -o bai5_goc_flag.o -lm
	gcc -O3 bai6_goc.c -o bai6_goc_flag.o -lm
	gcc -O3 bai7_goc.c -o bai7_goc_flag.o -lm
	gcc -O3 bai8_goc.c -o bai8_goc_flag.o -lm
	gcc -O3 bai9_goc.c -o bai9_goc_flag.o -lm
	gcc -O3 bai10_goc.c -o bai10_goc_flag.o -lm

	gcc -O3 bai1_toiuu.c -o bai1_toiuu_flag.o -lm
	gcc -O3 bai2_toiuu.c -o bai2_toiuu_flag.o -lm
	gcc -O3 bai3_toiuu.c -o bai3_toiuu_flag.o -lm
	gcc -O3 bai4_toiuu.c -o bai4_toiuu_flag.o -lm
	gcc -O3 bai5_toiuu.c -o bai5_toiuu_flag.o -lm
	gcc -O3 bai6_toiuu.c -o bai6_toiuu_flag.o -lm
	gcc -O3 bai7_toiuu.c -o bai7_toiuu_flag.o -lm
	gcc -O3 bai8_toiuu.c -o bai8_toiuu_flag.o -lm
	gcc -O3 bai9_toiuu.c -o bai9_toiuu_flag.o -lm
	gcc -O3 bai10_toiuu.c -o bai10_toiuu_flag.o -lm

	arm-linux-gnueabi-gcc-5 -S bai1_goc.c -o bai1_goc_arm.asm
	arm-linux-gnueabi-gcc-5 -S bai2_goc.c -o bai2_goc_arm.asm
	arm-linux-gnueabi-gcc-5 -S bai3_goc.c -o bai3_goc_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai4_goc.c -o bai4_goc_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai5_goc.c -o bai5_goc_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai6_goc.c -o bai6_goc_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai7_goc.c -o bai7_goc_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai8_goc.c -o bai8_goc_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai9_goc.c -o bai9_goc_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai10_goc.c -o bai10_goc_arm.asm -lm

	arm-linux-gnueabi-gcc-5 -S bai1_toiuu.c -o bai1_toiuu_arm.asm
	arm-linux-gnueabi-gcc-5 -S bai2_toiuu.c -o bai2_toiuu_arm.asm
	arm-linux-gnueabi-gcc-5 -S bai3_toiuu.c -o bai3_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai4_toiuu.c -o bai4_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai5_toiuu.c -o bai5_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai6_toiuu.c -o bai6_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai7_toiuu.c -o bai7_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai8_toiuu.c -o bai8_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai9_toiuu.c -o bai9_toiuu_arm.asm -lm
	arm-linux-gnueabi-gcc-5 -S bai10_toiuu.c -o bai10_toiuu_arm.asm -lm

	arm-linux-gnueabi-as bai1_goc_arm.asm -o bai1_goc_arm.o
	arm-linux-gnueabi-as bai2_goc_arm.asm -o bai2_goc_arm.o
	arm-linux-gnueabi-as bai3_goc_arm.asm -o bai3_goc_arm.o
	arm-linux-gnueabi-as bai4_goc_arm.asm -o bai4_goc_arm.o
	arm-linux-gnueabi-as bai5_goc_arm.asm -o bai5_goc_arm.o
	arm-linux-gnueabi-as bai6_goc_arm.asm -o bai6_goc_arm.o
	arm-linux-gnueabi-as bai7_goc_arm.asm -o bai7_goc_arm.o
	arm-linux-gnueabi-as bai8_goc_arm.asm -o bai8_goc_arm.o
	arm-linux-gnueabi-as bai9_goc_arm.asm -o bai9_goc_arm.o
	arm-linux-gnueabi-as bai10_goc_arm.asm -o bai10_goc_arm.o

	arm-linux-gnueabi-as bai1_toiuu_arm.asm -o bai1_toiuu_arm.o
	arm-linux-gnueabi-as bai2_toiuu_arm.asm -o bai2_toiuu_arm.o
	arm-linux-gnueabi-as bai3_toiuu_arm.asm -o bai3_toiuu_arm.o
	arm-linux-gnueabi-as bai4_toiuu_arm.asm -o bai4_toiuu_arm.o
	arm-linux-gnueabi-as bai5_toiuu_arm.asm -o bai5_toiuu_arm.o
	arm-linux-gnueabi-as bai6_toiuu_arm.asm -o bai6_toiuu_arm.o
	arm-linux-gnueabi-as bai7_toiuu_arm.asm -o bai7_toiuu_arm.o
	arm-linux-gnueabi-as bai8_toiuu_arm.asm -o bai8_toiuu_arm.o
	arm-linux-gnueabi-as bai9_toiuu_arm.asm -o bai9_toiuu_arm.o
	arm-linux-gnueabi-as bai10_toiuu_arm.asm -o bai10_toiuu_arm.o

	arm-linux-gnueabi-gcc-5 bai1_goc_arm.o -o bai1_goc_arm.elf
	arm-linux-gnueabi-gcc-5 bai2_goc_arm.o -o bai2_goc_arm.elf
	arm-linux-gnueabi-gcc-5 bai3_goc_arm.o -o bai3_goc_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai4_goc_arm.o -o bai4_goc_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai5_goc_arm.o -o bai5_goc_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai6_goc_arm.o -o bai6_goc_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai7_goc_arm.o -o bai7_goc_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai8_goc_arm.o -o bai8_goc_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai9_goc_arm.o -o bai9_goc_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai10_goc_arm.o -o bai10_goc_arm.elf -lm

	arm-linux-gnueabi-gcc-5 bai1_toiuu_arm.o -o bai1_toiuu_arm.elf
	arm-linux-gnueabi-gcc-5 bai2_toiuu_arm.o -o bai2_toiuu_arm.elf
	arm-linux-gnueabi-gcc-5 bai3_toiuu_arm.o -o bai3_toiuu_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai4_toiuu_arm.o -o bai4_toiuu_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai5_toiuu_arm.o -o bai5_toiuu_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai6_toiuu_arm.o -o bai6_toiuu_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai7_toiuu_arm.o -o bai7_toiuu_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai8_toiuu_arm.o -o bai8_toiuu_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai9_toiuu_arm.o -o bai9_toiuu_arm.elf -lm
	arm-linux-gnueabi-gcc-5 bai10_toiuu_arm.o -o bai10_toiuu_arm.elf -lm

clean:
	rm *.asm
	rm *.o
	rm *.elf

#qemu-arm -L /usr/arm-linux-gnueabi/ bai1_goc_arm.elf


