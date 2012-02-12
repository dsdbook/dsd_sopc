/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <system.h>

  unsigned volatile long AVA_ALU_BASE;

  unsigned long ava_alu(unsigned A,unsigned B,unsigned OP)
  {
  *(unsigned volatile long *)(AVA_ALU_BASE + 0) = A;
  *(unsigned volatile long *)(AVA_ALU_BASE + 4) = B;
  *(unsigned volatile long *)(AVA_ALU_BASE + 8) = OP;
  return  *(unsigned volatile long *)(AVA_ALU_BASE + 12);
  }

#define OP_ADD	1
#define OP_SUB	2
#define OP_AND	3
#define OP_OR	4
#define OP_XOR	5

int main()
{
  printf("Hello from Nios II!\n");

  printf("ava_alu test:\n");

  //AVA_ALU_BASE = ((unsigned long)na_ava_alu_0)|0x80000000;

  //Nios2 IDE
  AVA_ALU_BASE = ((unsigned long)AVA_ALU_0_BASE)|0x80000000;

  unsigned long A,B,OP,res;
  A=12;
  B=56;
  OP=OP_ADD;

  res = ava_alu(A,B,OP);
  printf("%u + %u = %u\n",A,B,res);

  OP=OP_SUB;
  res = ava_alu(A,B,OP);
  printf("%u - %u = %u  : %d \n",A,B,res,res);

  OP=OP_AND;
  res = ava_alu(A,B,OP);
  printf("%u & %u = %u\n",A,B,res);

  OP=OP_OR;
  res = ava_alu(A,B,OP);
  printf("%u | %u = %u\n",A,B,res);

  OP=OP_XOR;
  res = ava_alu(A,B,OP);
  printf("%u ^ %u = %u\n",A,B,res);


  return 0;
}
