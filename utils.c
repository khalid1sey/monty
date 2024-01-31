#include "monty.h"

/**
* free_stack - frees a doubly linked list
* @head: head of the stack
*/
void free_stack(stack_t *head)
{
	stack_t *util;

	util = head;
	while (head)
	{
		util = head->next;
		free(head);
		head = util;
	}
}
