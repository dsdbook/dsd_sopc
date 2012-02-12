#include <stdio.h>
#include <string.h>
#include <malloc.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <signal.h>
#include <sys/ioctl.h>
#include <asm/nios2.h>
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
  printf("ava_alu test:\n");

  AVA_ALU_BASE = ((unsigned long)na_ava_alu_0)|0x80000000;

  //Nios2 IDE
  //AVA_ALU_BASE = ((unsigned long)AVA_ALU_0_BASE)|0x80000000;
  //AVA_ALU_BASE = ((unsigned long)AVA_ALU_0_BASE);
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

