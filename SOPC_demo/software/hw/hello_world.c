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
#include <io.h>
int main()
{
	int i;
	int volatile j;
	i=0;
	while(1)
	{
		printf("Hello from Nios II! %d\n",i);
		IOWR(PIO_0_BASE,0,i);
		i++;
		for(j=0;j<20000;j++)
		{
			j=j;
		}
	}
  return 0;
}
