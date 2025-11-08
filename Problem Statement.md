# Custom 16-bit RISC-V Style Processor Core

The objective of this project is to design and implement a custom Instruction Set Architecture (ISA) and its corresponding processor using Verilog HDL. The ISA must be defined such that all instructions are 16 bits wide, and the processor includes 8 General Purpose Registers (GPRs).
Find the specifications of the instructions of the ISA linked [here](https://docs.google.com/spreadsheets/d/18On-sn_LSf54qCVk8wgvnJ0nMea1kv3EHVJAyhfKcl8/edit?gid=1331383528#gid=1331383528)
Find a list of compiled instructions here to help test your processor: 

---

## Core Architecture Specifications

* **ISA:** Custom 16-bit Architecture
* **Instruction Width:** 16 bits
* **Register File:** 8 General-Purpose Registers (GPRs)
* **Design Language:** Verilog HDL
* **Core Type:** Evolves from a single-cycle to a fully pipelined design.

---

## Project Milestones

### 1. Base Processor: Single-Cycle Core

Design a single cycle processor that supports the following fundamental instructions:

* **Memory Instructions:**
    * `LH` (Load Halfword)
    * `SH` (Store Halfword)
* **Arithmetic & Logical (R-Type) Instructions:**
    * `ADD`
    * `SUB`
    * `SLT` (Set on Less Than)
    * `OR`
    * `AND`
* **Control Flow Instructions:**
    * `JAL` (Jump and Link)
    * `BEQ` (Branch on Equal)
    * `BNE` (Branch on Not Equal)
    * `BLT` (Branch on Less Than)
    * `BGE` (Branch on Greater Than or Equal)

### 2. ISA Extension: Additional Operations

Extend the base ISA to support a wider range of operations for more complex programs as follows:

* **Indirect Jump Instruction:**
    * `JALR` (Jump and Link Register)
* **Shift Operations (R-Type):**
    * `SRL` (Shift Right Logical)
    * `SLL` (Shift Left Logical)
    * `SRA` (Shift Right Arithmetic)
* **Immediate Operations (I-Type):**
    * `ADDI` (Add Immediate)
    * `SUBI` (Subtract Immediate)
    * `ORI` (OR Immediate)
    * `ANDI` (AND Immediate)
    * `SLTI` (Set on Less Than Immediate)
* **Immediate Shift Operations:**
    * `SRLI` (Shift Right Logical Immediate)
    * `SLLI` (Shift Left Logical Immediate)
    * `SRAI` (Shift Right Arithmetic Immediate)

### 3. Floating-Point Unit (FPU) Integration

Desimng a Floating Point Arithmetic Processing Unit. All FPU operations must comply with the ***IEEE 754 half precision standard***.
The instructions to be supported ar as follows:

* **FPU Operations:**
    * `FADD` (Floating-Point Add)
    * `FMUL` (Floating-Point Multiply)

### 4. Pipelined Core & Power Management

Pipeline the processor and implement a hazard detection-resolution unit. Integrate the FPU core into the pipelined processor.

### 5. Cryptographic Co-Processor Integration

Design a co-processor interface and integrate the cyptography core with the main pipelined cpu receiving commands and data from there. Instructions to be implemented:

* **Custom Crypto Core Instructions:**
    * `ENC` (Encrypt): Triggers the co-processor to perform an encryption operation.
    * `DEC` (Decrypt): Triggers the co-processor to perform a decryption operation.
 
