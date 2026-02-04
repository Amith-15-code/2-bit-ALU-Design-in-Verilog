Simulation Waveform Description – 2-Bit ALU

The waveform represents the functional verification of the designed 2-bit Arithmetic Logic Unit (ALU). The ALU performs arithmetic and logical operations based on the 3-bit select signal (sel). The simulation is carried out for a total duration of 70 ns, with each operation evaluated for 10 ns.

Input Signals

A[1:0]: First 2-bit operand

B[1:0]: Second 2-bit operand

sel[2:0]: Control signal to select the operation

Output Signals

result[1:0]: 2-bit output of the ALU

carry: Carry or borrow indicator

Operation Verification
Test Case 1 (0 ns – 50 ns)

Inputs:
A = 01 (1), B = 10 (2)

sel	Operation	Expected Output	Waveform Result
000	Addition	Result = 11, Carry = 0	✔ Correct
001	Subtraction	Result = 11, Carry = 1	✔ Correct
010	AND	Result = 00	✔ Correct
011	OR	Result = 11	✔ Correct
100	XOR	Result = 11	✔ Correct
Test Case 2 (50 ns – 70 ns)

Inputs:
A = 11 (3), B = 01 (1)

sel	Operation	Expected Output	Waveform Result
000	Addition	Result = 00, Carry = 1	✔ Correct
001	Subtraction	Result = 10, Carry = 0	✔ Correct
Carry/Borrow Interpretation

In addition, the carry signal indicates overflow when the sum exceeds 2 bits.

In subtraction, the carry signal represents the borrow condition in two’s complement arithmetic.

Conclusion

The simulation waveform confirms that the 2-bit ALU operates correctly for all selected arithmetic and logical operations. The output results and carry signal match the expected theoretical values, validating the correctness of the Verilog design.
