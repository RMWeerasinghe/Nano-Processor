# Nano-Processor
This is a 4-bit Nano-processor design which will be used as a lab assignment for CS1050 - Computer Organization and Digital Design Module.

## Description
This is a simple microprocessor design (a nanoprocessor) capable of 
executing a simple set of instructions including the following assembly instructions.

  * MOVI R,d : move immediate value d to the register R
  * ADD Ra,Rb: add values in registers Ra and Rb
  * NEG R    : 2's complement of the register R
  * JZ R,d   : Jump if value in register R is 0
  
  
This nanoprocessor consists of following major components
  * 4-bit Add/Subtract unit
  * 3-bit adder
  * 3-bit Program Counter (PC)
  * k-way b-bit multiplexers
  * Register Bank
  * Program ROM (stores the assembly program)
  * Buses
  * Instruction Decoder
  
 
This nanoprocessor will execute an assembly code stored in program ROM to calculate the total of all integers between 1 to 3 and desplay the value in 7-segment 
display of the BASYS 3 board.
