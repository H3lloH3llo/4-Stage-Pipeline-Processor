# 4-Stage-Pipeline-Processor
Group Final Project for Computer Architecture. 4-stage pipeline processor with data forwarding written in VHDL and custom assembler written in C++. Includes testbenches and example programs.
Pipeline Block Diagram
<img width="718" height="305" alt="image" src="https://github.com/user-attachments/assets/60e295dd-1e6b-4ed7-9001-b4c554df2559" />
This is a final group project for ESE 345 Computer Architecture in Stony Brook University. It is a 4-stage pipeline processor with data forwarding written in VHDL through the application ModelSIM - INTEL FPGA. The four stages are Instruction Fetch, Instruction Decode, Execute, and Write-Back with data forwarding connecting Write-Back and Execute Stage. The indiviual stages runs asynchronous to the system clock while the registers between each stage runs synchronous to the system clock.

The ALU unit within the Execute Stage has three different 24-bit instruction format listed below along with their description. These were provided within the project's description.

Load Immediate Instruction Format
<img width="385" height="74" alt="image" src="https://github.com/user-attachments/assets/fe2ddc7e-4270-4573-acdc-77503a27095c" />

li: Load a 16-bit Immediate value from the [20:5] instruction field into the 16-bit field specified by the Load Index field [23:21] of the 128-bit register rd. Other fields of register rd are not changed. Note that a LI instruction first reads register rd and then (after inserting an immediate value into one of its fields) writes it back to register rd, i.e., register rd is both a source and destination register of the LI instruction!


Multiply-Add and Mutiply-Subtract R4-Instruction Format
<img width="600" height="71" alt="image" src="https://github.com/user-attachments/assets/c5ccccf4-01be-42f0-803a-269cabfd9479" />

Signed operations are performed with saturated rounding that takes the result, and sets a floor and ceiling corresponding to the max range for that data size. This means that instead of over/underflow wrapping, the max/min values are used.

<img width="319" height="96" alt="image" src="https://github.com/user-attachments/assets/fc94a6e7-4c66-42c8-9012-8d8e5bc1676d" />
<img width="858" height="607" alt="image" src="https://github.com/user-attachments/assets/12de0312-88cf-4aa0-90f1-2e9c9320370a" />


R3-Instruction Format
<img width="482" height="80" alt="image" src="https://github.com/user-attachments/assets/8ff21143-ffa2-4efb-b683-8538cd8367ff" />
In the table below, 16-bit signed integer add (AHS), and subtract (SFHS) operations are performed with saturation to signed halfword rounding that takes a 16-bit signed integer X, and converts it to -32768 (the most negative 16-bit signed value) if it is less than -32768, to +32767 (the highest positive 16-bit signed value) if it is greater than 32767, and leaves it unchanged otherwise.

<img width="968" height="849" alt="image" src="https://github.com/user-attachments/assets/8aa0bd3b-b9f5-4586-87ed-4138c44f2bff" />
<img width="918" height="347" alt="image" src="https://github.com/user-attachments/assets/6a04f8b5-bb9f-4e86-99fd-fcd1ea2caae7" />
