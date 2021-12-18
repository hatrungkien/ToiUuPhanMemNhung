*Compile command*
```
root@df2cd9f3c823:/opt/mounted_folder/ClionProjects/Toiuu10code# make
gcc -S bai1_goc.c -o bai1_goc.asm -masm=intel
gcc -S bai2_goc.c -o bai2_goc.asm -masm=intel
gcc -S bai3_goc.c -o bai3_goc.asm -masm=intel
gcc -S bai4_goc.c -o bai4_goc.asm -masm=intel
gcc -S bai5_goc.c -o bai5_goc.asm -masm=intel
bai5_goc.c:6:1: warning: data definition has no type or storage class
    6 | x=0;
      | ^
bai5_goc.c:6:1: warning: type defaults to 'int' in declaration of 'x' [-Wimplicit-int]
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
bai5_goc.c:6:1: warning: data definition has no type or storage class
    6 | x=0;
      | ^
bai5_goc.c:6:1: warning: type defaults to 'int' in declaration of 'x' [-Wimplicit-int]
arm-linux-gnueabi-gcc bai6_goc.c -o bai6_goc_arm.asm -lm
arm-linux-gnueabi-gcc bai7_goc.c -o bai7_goc_arm.asm -lm
arm-linux-gnueabi-gcc bai8_goc.c -o bai8_goc_arm.asm -lm
arm-linux-gnueabi-gcc bai9_goc.c -o bai9_goc_arm.asm -lm
arm-linux-gnueabi-gcc bai10_goc.c -o bai10_goc_arm.asm -lm
arm-linux-gnueabi-gcc bai1_toiuu.c -o bai1_toiuu_arm.asm
arm-linux-gnueabi-gcc bai2_toiuu.c -o bai2_toiuu_arm.asm
arm-linux-gnueabi-gcc bai3_toiuu.c -o bai3_toiuu_arm.asm
/usr/lib/gcc-cross/arm-linux-gnueabi/9/../../../../arm-linux-gnueabi/bin/ld: /tmp/ccWA2yh8.o: in function `isPrimeNumber':
bai3_toiuu.c:(.text+0x3c): undefined reference to `sqrt'
collect2: error: ld returned 1 exit status
make: *** [Makefile:35: all] Error 1
root@df2cd9f3c823:/opt/mounted_folder/ClionProjects/Toiuu10code# make
gcc -S bai1_goc.c -o bai1_goc.asm -masm=intel
gcc -S bai2_goc.c -o bai2_goc.asm -masm=intel
gcc -S bai3_goc.c -o bai3_goc.asm -masm=intel
gcc -S bai4_goc.c -o bai4_goc.asm -masm=intel
gcc -S bai5_goc.c -o bai5_goc.asm -masm=intel
bai5_goc.c:6:1: warning: data definition has no type or storage class
    6 | x=0;
      | ^
bai5_goc.c:6:1: warning: type defaults to 'int' in declaration of 'x' [-Wimplicit-int]
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
bai5_goc.c:6:1: warning: data definition has no type or storage class
    6 | x=0;
      | ^
bai5_goc.c:6:1: warning: type defaults to 'int' in declaration of 'x' [-Wimplicit-int]
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
root@df2cd9f3c823:/opt/mounted_folder/ClionProjects/Toiuu10code# make clean
rm *.asm
#rm *.o
#rm *.elf
root@df2cd9f3c823:/opt/mounted_folder/ClionProjects/Toiuu10code# make
gcc -S bai1_goc.c -o bai1_goc.asm -masm=intel
gcc -S bai2_goc.c -o bai2_goc.asm -masm=intel
gcc -S bai3_goc.c -o bai3_goc.asm -masm=intel
gcc -S bai4_goc.c -o bai4_goc.asm -masm=intel
gcc -S bai5_goc.c -o bai5_goc.asm -masm=intel
bai5_goc.c:6:1: warning: data definition has no type or storage class
    6 | x=0;
      | ^
bai5_goc.c:6:1: warning: type defaults to 'int' in declaration of 'x' [-Wimplicit-int]
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
bai5_goc.c:6:1: warning: data definition has no type or storage class
    6 | x=0;
      | ^
bai5_goc.c:6:1: warning: type defaults to 'int' in declaration of 'x' [-Wimplicit-int]
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
root@df2cd9f3c823:/opt/mounted_folder/ClionProjects/Toiuu10code# file bai1_goc_arm.asm 
bai1_goc_arm.asm: ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux.so.3, BuildID[sha1]=0715254fe76f8cc851731d9e42f136345b439d9e, for GNU/Linux 3.2.0, not stripped
root@df2cd9f3c823:/opt/mounted_folder/ClionProjects/Toiuu10code# file bai1_goc.asm 
bai1_goc.asm: assembler source, ASCII text
root@df2cd9f3c823:/opt/mounted_folder/ClionProjects/Toiuu10code# 

```

or Load CMakeLists.txt


gcc -fno-asynchronous-unwind-tables -O2 -s -c -o main.o main.c && objconv -fnasm main.o
# ToiUuPhanMemNhung
