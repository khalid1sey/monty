#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "monty.h"


int main(void)
{
	char *line = NULL;
	size_t bufsize = 0;
	size_t linelen;
	unsigned int line_number = 0;

	while ((linelen = getline(&line, &bufsize, stdin)) != -1)
	{
		line_number++;

		char *opcode = strtok(line, " \t\n");

		if (opcode == NULL || opcode[0] == '#')
			continue;

		int i;
		for (i = 0; instructions[i].opcode != NULL; i++)
		{
			if (strcmp(opcode, instructions[i].opcode) == 0)
			{
				instructions[i].f(&stack, line_number);
				break;
			}
		}

		if (instructions[i].opcode == NULL)
		{
			fprintf(stderr, "L%d: unknown instruction %s\n", line_number, opcode);
			exit(EXIT_FAILURE);
		}
	}

	free(line);
	exit(EXIT_SUCCESS);
}
