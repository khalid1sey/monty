make a markdown table for these 19 tasks 


0. push, pall
mandatory

Implement the push and pall opcodes.

The push opcode

The opcode push pushes an element to the stack.

    Usage: push <int>
        where <int> is an integer
    if <int> is not an integer or if there is no argument given to push, print the error message L<line_number>: usage: push integer, followed by a new line, and exit with the status EXIT_FAILURE
        where is the line number in the file
    You won’t have to deal with overflows. Use the atoi function

The pall opcode

The opcode pall prints all the values on the stack, starting from the top of the stack.

    Usage pall
    Format: see example
    If the stack is empty, don’t print anything

julien@ubuntu:~/monty$ cat -e bytecodes/00.m
push 1$
push 2$
push 3$
pall$
julien@ubuntu:~/monty$ ./monty bytecodes/00.m
3
2
1
julien@ubuntu:~/monty$

Repo:

    GitHub repository: monty

1. pint
mandatory

Implement the pint opcode.

The pint opcode

The opcode pint prints the value at the top of the stack, followed by a new line.

    Usage: pint
    If the stack is empty, print the error message L<line_number>: can't pint, stack empty, followed by a new line, and exit with the status EXIT_FAILURE

julien@ubuntu:~/monty$ cat bytecodes/06.m 
push 1
pint
push 2
pint
push 3
pint
julien@ubuntu:~/monty$ ./monty bytecodes/06.m 
1
2
3
julien@ubuntu:~/monty$ 

Repo:

    GitHub repository: monty

2. pop
mandatory

Implement the pop opcode.

The pop opcode

The opcode pop removes the top element of the stack.

    Usage: pop
    If the stack is empty, print the error message L<line_number>: can't pop an empty stack, followed by a new line, and exit with the status EXIT_FAILURE

julien@ubuntu:~/monty$ cat bytecodes/07.m 
push 1
push 2
push 3
pall
pop
pall
pop
pall
pop
pall
julien@ubuntu:~/monty$ ./monty bytecodes/07.m 
3
2
1
2
1
1
julien@ubuntu:~/monty$ 

Repo:

    GitHub repository: monty

3. swap
mandatory

Implement the swap opcode.

The swap opcode

The opcode swap swaps the top two elements of the stack.

    Usage: swap
    If the stack contains less than two elements, print the error message L<line_number>: can't swap, stack too short, followed by a new line, and exit with the status EXIT_FAILURE

julien@ubuntu:~/monty$ cat bytecodes/09.m 
push 1
push 2
push 3
pall
swap
pall
julien@ubuntu:~/monty$ ./monty bytecodes/09.m 
3
2
1
2
3
1
julien@ubuntu:~/monty$ 

Repo:

    GitHub repository: monty

4. add
mandatory

Implement the add opcode.

The add opcode

The opcode add adds the top two elements of the stack.

    Usage: add
    If the stack contains less than two elements, print the error message L<line_number>: can't add, stack too short, followed by a new line, and exit with the status EXIT_FAILURE
    The result is stored in the second top element of the stack, and the top element is removed, so that at the end:
        The top element of the stack contains the result
        The stack is one element shorter

julien@ubuntu:~/monty$ cat bytecodes/12.m 
push 1
push 2
push 3
pall
add
pall

julien@ubuntu:~/monty$ ./monty bytecodes/12.m 
3
2
1
5
1
julien@ubuntu:~/monty$

Repo:

    GitHub repository: monty

5. nop
mandatory

Implement the nop opcode.

The nop opcode

The opcode nop doesn’t do anything.

    Usage: nop

Repo:

    GitHub repository: monty

6. sub
#advanced

Implement the sub opcode.

The sub opcode

The opcode sub subtracts the top element of the stack from the second top element of the stack.

    Usage: sub
    If the stack contains less than two elements, print the error message L<line_number>: can't sub, stack too short, followed by a new line, and exit with the status EXIT_FAILURE
    The result is stored in the second top element of the stack, and the top element is removed, so that at the end:
        The top element of the stack contains the result
        The stack is one element shorter

julien@ubuntu:~/monty$ cat bytecodes/19.m 
push 1
push 2
push 10
push 3
sub
pall
julien@ubuntu:~/monty$ ./monty bytecodes/19.m 
7
2
1
julien@ubuntu:~/monty$

Repo:

    GitHub repository: monty

7. div
#advanced

Implement the div opcode.

The div opcode

The opcode div divides the second top element of the stack by the top element of the stack.

    Usage: div
    If the stack contains less than two elements, print the error message L<line_number>: can't div, stack too short, followed by a new line, and exit with the status EXIT_FAILURE
    The result is stored in the second top element of the stack, and the top element is removed, so that at the end:
        The top element of the stack contains the result
        The stack is one element shorter
    If the top element of the stack is 0, print the error message L<line_number>: division by zero, followed by a new line, and exit with the status EXIT_FAILURE

Repo:

    GitHub repository: monty

8. mul
#advanced

Implement the mul opcode.

The mul opcode

The opcode mul multiplies the second top element of the stack with the top element of the stack.

    Usage: mul
    If the stack contains less than two elements, print the error message L<line_number>: can't mul, stack too short, followed by a new line, and exit with the status EXIT_FAILURE
    The result is stored in the second top element of the stack, and the top element is removed, so that at the end:
        The top element of the stack contains the result
        The stack is one element shorter

Repo:

    GitHub repository: monty

9. mod
#advanced

Implement the mod opcode.

The mod opcode

The opcode mod computes the rest of the division of the second top element of the stack by the top element of the stack.

    Usage: mod
    If the stack contains less than two elements, print the error message L<line_number>: can't mod, stack too short, followed by a new line, and exit with the status EXIT_FAILURE
    The result is stored in the second top element of the stack, and the top element is removed, so that at the end:
        The top element of the stack contains the result
        The stack is one element shorter
    If the top element of the stack is 0, print the error message L<line_number>: division by zero, followed by a new line, and exit with the status EXIT_FAILURE

Repo:

    GitHub repository: monty

10. comments
#advanced

Every good language comes with the capability of commenting. When the first non-space character of a line is #, treat this line as a comment (don’t do anything).

Repo:

    GitHub repository: monty

11. pchar
#advanced

Implement the pchar opcode.

The pchar opcode

The opcode pchar prints the char at the top of the stack, followed by a new line.

    Usage: pchar
    The integer stored at the top of the stack is treated as the ascii value of the character to be printed
    If the value is not in the ascii table (man ascii) print the error message L<line_number>: can't pchar, value out of range, followed by a new line, and exit with the status EXIT_FAILURE
    If the stack is empty, print the error message L<line_number>: can't pchar, stack empty, followed by a new line, and exit with the status EXIT_FAILURE

julien@ubuntu:~/monty$ cat bytecodes/28.m 
push 72
pchar
julien@ubuntu:~/monty$ ./monty bytecodes/28.m 
H
julien@ubuntu:~/monty$

Repo:

    GitHub repository: monty

12. pstr
#advanced

Implement the pstr opcode.

The pstr opcode

The opcode pstr prints the string starting at the top of the stack, followed by a new line.

    Usage: pstr
    The integer stored in each element of the stack is treated as the ascii value of the character to be printed
    The string stops when either:
        the stack is over
        the value of the element is 0
        the value of the element is not in the ascii table
    If the stack is empty, print only a new line

julien@ubuntu:~/monty$ cat bytecodes/31.m 
push 1
push 2
push 3
push 4
push 0
push 110
push 0
push 108
push 111
push 111
push 104
push 99
push 83
pstr
julien@ubuntu:~/monty$ ./monty bytecodes/31.m 
School
julien@ubuntu:~/monty$ 

Repo:

    GitHub repository: monty

13. rotl
#advanced

Implement the rotl opcode.

The rotl opcode

The opcode rotl rotates the stack to the top.

    Usage: rotl
    The top element of the stack becomes the last one, and the second top element of the stack becomes the first one
    rotl never fails

julien@ubuntu:~/monty$ cat bytecodes/35.m 
push 1
push 2
push 3
push 4
push 5
push 6
push 7
push 8
push 9
push 0
pall
rotl
pall
julien@ubuntu:~/monty$ ./monty bytecodes/35.m 
0
9
8
7
6
5
4
3
2
1
9
8
7
6
5
4
3
2
1
0
julien@ubuntu:~/monty$ 

Repo:

    GitHub repository: monty

14. rotr
#advanced

Implement the rotr opcode.

The rotr opcode

The opcode rotr rotates the stack to the bottom.

    Usage: rotr
    The last element of the stack becomes the top element of the stack
    rotr never fails

Repo:

    GitHub repository: monty

15. stack, queue
#advanced

Implement the stack and queue opcodes.

The stack opcode

The opcode stack sets the format of the data to a stack (LIFO). This is the default behavior of the program.

    Usage: stack

The queue opcode

The opcode queue sets the format of the data to a queue (FIFO).

    Usage: queue

When switching mode:

    The top of the stack becomes the front of the queue
    The front of the queue becomes the top of the stack

julien@ubuntu:~/monty$ cat bytecodes/47.m
queue
push 1
push 2
push 3
pall
stack
push 4
push 5
push 6
pall
add
pall
queue
push 11111
add
pall
julien@ubuntu:~/monty$ ./monty bytecodes/47.m
1
2
3
6
5
4
1
2
3
11
4
1
2
3
15
1
2
3
11111
julien@ubuntu:~/monty$ 

Repo:

    GitHub repository: monty

16. Brainf*ck
#advanced

Write a Brainf*ck script that prints School, followed by a new line.

    All your Brainf*ck files should be stored inside the bf sub directory
    You can install the bf interpreter to test your code: sudo apt-get install bf
    Read: Brainf*ck

julien@ubuntu:~/monty/bf$ bf 1000-school.bf 
School
julien@ubuntu:~/monty/bf$ 

Repo:

    GitHub repository: monty
    Directory: bf
    File: 1000-school.bf

17. Add two digits
#advanced

Add two digits given by the user.

    Read the two digits from stdin, add them, and print the result
    The total of the two digits with be one digit-long (<10)

julien@ubuntu:~/monty/bf$ bf ./1001-add.bf
81
9julien@ubuntu:~/monty/bf$

Repo:

    GitHub repository: monty
    Directory: bf
    File: 1001-add.bf

18. Multiplication
#advanced

Multiply two digits given by the user.

    Read the two digits from stdin, multiply them, and print the result
    The result of the multiplication will be one digit-long (<10)

julien@ubuntu:~/monty/bf$ bf 1002-mul.bf
24
8julien@ubuntu:~/monty/bf$

Repo:

    GitHub repository: monty
    Directory: bf
    File: 1002-mul.bf

19. Multiplication level up
#advanced

Multiply two digits given by the user.



    Read the two digits from stdin, multiply them, and print the result, followed by a new line

julien@ubuntu:~/monty/bf$ bf 1003-mul.bf 
77
49
julien@ubuntu:~/monty/bf$ 

Repo:

    GitHub repository: monty
    Directory: bf
    File: 1003-mul.bf