#include "monty.h"

/**
 * addqueue - add node to the tail stack
 * @n: new_value
 * @head: head of the stack
 * Return: no return
*/
void addqueue(stack_t **head, int n)
{
	stack_t *temp, *util;

	util = *head;
	temp = malloc(sizeof(stack_t));
	if (temp == NULL)
	{
		printf("Error\n");
	}
	temp->n = n;
	temp->next = NULL;
	if (util)
	{
		while (util->next)
			util = util->next;
	}
	if (!util)
	{
		*head = temp;
		temp->prev = NULL;
	}
	else
	{
		util->next = temp;
		temp->prev = util;
	}
}
