# Digital Arithmetic Modules in Verilog

This repository contains a collection of **fundamental digital arithmetic building blocks** implemented in Verilog. Updating as I go, but these are the artihmetic units I've learned so far.

---

## 📁 Modules Included

### 🔹 Half Adder
- This the most basic of adders, which performs two 1-bit additions
- Produces a sum and a carry

### 🔹 Full Adder
- A level just slightly above the Half Adder, performs three 1-bit additions with the carry-in included
- This is a core building block for creating larger modules

### 🔹 Ripple Carry Adder (RCA)
- 4-bit adder built by chaining full adders together
- Demonstrates carry propagation and timing tradeoffs
- Simple and area-efficient

### 🔹 Carry Look-Ahead Adder (CLA)
- Faster 4-bit adder using generate/propagate logic
- Reduces carry propagation delay
- Demonstrates speed vs area tradeoffs in adder design

### 🔹 Multiplier
- 4-bit binary multiplier
- Supports:
  - Unsigned multiplication
  - Signed (two’s complement) multiplication
- Produces full-width product (2N bits)
- Suitable for extension to fixed-point arithmetic

### 🔹 Subtractor (A-B)
- 4-bit Two’s complement subtraction
  - (A-B) = A + (~B)+1
- Implemented using: Bitwise inversion, and a carry-in of 1
- Shares hardware concepts with addition

### 🔹 Adder-Subtractor (A-B)
- 16-bit signed Adder-subtractor Unit
- Uses Carry in as a selector for Subtraction vs. Addition

### 🔹 Status Register
- Register that stores input of 4 key Flags (N, C, Z, V)
- The results for Carry (C) and Overflow (V) flags are performed during addition & subtraction but not stored

### 🔹 Comparator Register
- Comparator register directly relies on the status register
- A method of designing the comparator register would be to use if/else statements with comparative logic, this method avoids the status register. The status reg is instantiated here and 

---


