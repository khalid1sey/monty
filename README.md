
<img src="![](img/images.jpeg)">

The Monty Bytecode Interpreter is a project that involves creating an interpreter for Monty Bytecode files. Monty is a scripting language that operates on a unique stack and uses specific instructions to manipulate it. The goal of this project is to develop a program that can read Monty Bytecode files and execute the instructions contained within them.

The Monty Bytecode files have the extension ".m" and consist of a series of instructions, with one instruction per line. Each instruction consists of an opcode (the operation to be performed) and, in some cases, an argument. The opcode and its argument can have spaces before or after them.

The Monty program is executed by providing the file containing the Monty Bytecode instructions as a command-line argument. For example, the command would be:

```
$ monty file.m
```

Here, "file.m" represents the path to the file containing the Monty Bytecode instructions.

The Monty program follows certain conditions:
- If the user does not provide a file or provides more than one argument, it will display an error message and exit.
- If it is unable to open the file, it will display an error message and exit.
- If the file contains an invalid instruction, it will display an error message indicating the line number and the unknown opcode.
- The program executes the bytecodes line by line and stops if it completes all the instructions successfully or encounters an error.
- If the program fails to allocate memory using `malloc`, it will display an error message and exit.

The Monty Bytecode Interpreter should be implemented in the C programming language, following specific requirements and guidelines. It should include header files, use appropriate memory allocation techniques, and handle errors properly.


| # | Opcode/Program | Description | Usage | Example |
| --- | --- | --- | --- | --- |
| 1 | push | The push opcode pushes an element to the stack. | push <int> | push 1 |
| 2 | pall | The pall opcode prints all the values on the stack, starting from the top. | pall | pall |
| 3 | pint | The pint opcode prints the value at the top of the stack. | pint | pint |
| 4 | pop | The pop opcode removes the top element of the stack. | pop | pop |
| 5 | swap | The swap opcode swaps the top two elements of the stack. | swap | swap |
| 6 | add | The add opcode adds the top two elements of the stack. | add | add |
| 7 | nop | The nop opcode does nothing. | nop | nop |
| 8 | sub | The sub opcode subtracts the top two elements of the stack. | sub | sub |
| 9 | div | The div opcode divides the second top element by the top element of the stack. | div | div |
| 10 | mul | The mul opcode multiplies the second top element by the top element of the stack. | mul | mul |
| 11 | mod | The mod opcode computes the modulo of the second top element divided by the top element of the stack. | mod | mod |
| 12 | comments | The comments feature allows adding comments in the Monty bytecode file. | # This is a comment | # This is a comment |
| 13 | pchar | The pchar opcode prints the character at the top of the stack. | pchar | pchar |
| 14 | pstr | The pstr opcode prints the string starting at the top of the stack. | pstr | pstr |
| 15 | rotl | The rotl opcode rotates the stack to the top. | rotl | rotl |
| 16 | rotr | The rotr opcode rotates the stack to the bottom. | rotr | rotr |
| 17 | stack | The stack opcode sets the format of the data to a stack (LIFO). | stack | stack |
| 18 | queue | The queue opcode sets the format of the data to a queue (FIFO). | queue | queue |
| 19 | Brainf*ck | Implements a Brainf*ck program. | bf <file> | bf brainf*ck_program.bf |
| 20 | Add two digits | Implements a program to add two digits. | add_two_digits | add_two_digits |
| 21 | Multiplication | Implements a program to multiply two digits. | multiply_digits | multiply_digits |
| 22 | Multiplication level up | Implements an advanced multiplication program. | multiply_advanced | multiply_advanced |


# Opcode(operation code)
* opcode is fundemental concept in computer archtechure and programming. it refers to a numeric code that represents a specfic operation or instruction that a computer's cpu can execute.

* An opcode is part of the machine language instruction format, which is the lowest level of programming language understood by a computer. Each opcode corresponds to a particular operation, such as arithmetic operations (addition, subtraction, etc.), logical operations (AND, OR, NOT), data movement (load, store), branching (jump, conditional jump), and more.

* In a typical computer architecture, an instruction consists of an opcode followed by operands, which are the data or addresses on which the operation acts. The CPU fetches an instruction from memory, interprets the opcode, and performs the specified operation using the provided operands.