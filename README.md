# 4-Stage-Pipeline-Processor
**Pipeline Block Diagram**

<img width="718" height="305" alt="image" src="https://github.com/user-attachments/assets/60e295dd-1e6b-4ed7-9001-b4c554df2559" />

This is a final group project for ESE 345 Computer Architecture in Stony Brook University. It is a 4-stage pipeline processor with data forwarding written in VHDL and an assembler that would take assembly language and convert it into specific instruction codes written in C++. The 4-stage pipeline consists of Instruction Fetch, Instruction Decode, Execute, and Write-Back with data forwarding connecting Write-Back and Execute Stage. The individual stages run asynchronous to the system clock while the registers between each stage runs synchronous to the system clock. The assembler will read an assembly file and convert it to a 25 bit instruction format for the pipeline.

## Pipeline Stages function
**Instruction Fetch:** Fetches 25-bit instructions specified by the program counter from the instruction file and places them into the instruction buffer.

**Instruction Decode:** Decodes the 25-bit instruction and sends required register contents to the ID/EX register.

**Execute:** Performs the arithmetic specified by the opcode of the instruction.

**Data Forwarding:** Bypasses register content from ID/EX register and takes register content from EX/WB register if hazards are detected to prevent stalling.

**Write-Back:** Writes back to the register file in Instruction Decode if write back is enabled.

The ALU unit within the Execute Stage has three different 25-bit instruction format listed below along with their description. These were provided within the project's description.

**Load Immediate Instruction Format**

<img width="385" height="74" alt="image" src="https://github.com/user-attachments/assets/fe2ddc7e-4270-4573-acdc-77503a27095c" />

li: Load a 16-bit Immediate value from the [20:5] instruction field into the 16-bit field specified by the Load Index field [23:21] of the 128-bit register rd. Other fields of register rd are not changed. Note that a LI instruction first reads register rd and then (after inserting an immediate value into one of its fields) writes it back to register rd, i.e., register rd is both a source and destination register of the LI instruction!


**Multiply-Add and Multiply-Subtract R4-Instruction Format**

<img width="600" height="71" alt="image" src="https://github.com/user-attachments/assets/c5ccccf4-01be-42f0-803a-269cabfd9479" />

Signed operations are performed with saturated rounding that takes the result, and sets a floor and ceiling corresponding to the max range for that data size. This means that instead of over/underflow wrapping, the max/min values are used.

<img width="319" height="96" alt="image" src="https://github.com/user-attachments/assets/fc94a6e7-4c66-42c8-9012-8d8e5bc1676d" />
<img width="858" height="607" alt="image" src="https://github.com/user-attachments/assets/12de0312-88cf-4aa0-90f1-2e9c9320370a" />


**R3-Instruction Format**

<img width="482" height="80" alt="image" src="https://github.com/user-attachments/assets/8ff21143-ffa2-4efb-b683-8538cd8367ff" />

In the table below, 16-bit signed integer add (AHS), and subtract (SFHS) operations are performed with saturation to signed halfword rounding that takes a 16-bit signed integer X, and converts it to -32768 (the most negative 16-bit signed value) if it is less than -32768, to +32767 (the highest positive 16-bit signed value) if it is greater than 32767, and leaves it unchanged otherwise.

<img width="919" height="850" alt="image" src="https://github.com/user-attachments/assets/22515b3b-0069-491e-ba50-d68969e20dcf" />
<img width="924" height="348" alt="image" src="https://github.com/user-attachments/assets/26cf79c9-5ccb-4894-833f-1875b83822e1" />

## Team Contributions
**Partner: Timmy Tan**

My Contribution: ALU instruction formats (R3-Instruction Format), Pipeline stages (Execute, Write-Back), Data-Forwarding Unit, Pipeline top structural code, Testbenches of the associated parts

Timmy's Contribution: C++ Assembler, ALU instruction formats (Load Immediate Instruction Format, Multiply-Add and Multiply-Subtract R4-Instruction Format), Pipeline stages (Instruction Fetch, Instruction Decode), Testbenches of the associated parts

## How to Simulate
We used **Visual Studio** (assembler) and **ModelSIM - INTEL FPGA** (Pipeline simulation).
### Visual Studio
1. Open `assembler.cpp`
2. Compile and run the program
3. In the terminal of Visual Studio, run: `.\assembler input.asm output.txt`
(Replace the input.asm and output.txt with your own file names)

### ModelSIM
1. Create a new project
2. Upload and compile all the .vhd files included in the repository
3. Upload the output.txt file from the assembler and save it
4. Run simulation and set `pipeline_tb.vhd` as the top-level structure
5. Add all signals you want to observe to the waveform
