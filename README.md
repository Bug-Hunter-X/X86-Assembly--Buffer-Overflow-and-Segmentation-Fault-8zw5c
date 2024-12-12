# x86 Assembly: Buffer Overflow and Segmentation Fault Example

This repository demonstrates two common vulnerabilities in x86 assembly language: buffer overflow and segmentation faults.  The `bug.asm` file contains the vulnerable code, while `bugSolution.asm` presents possible mitigations.

**Vulnerabilities:**
* **Buffer Overflow:** The instruction `mov eax, [ebx + ecx*4]` is prone to buffer overflow if the value in `ecx` is not carefully checked and bounded, potentially leading to reading data outside the allocated memory region. 
* **Segmentation Fault:** The instruction `mov [eax], 10` can cause a segmentation fault if the value in `eax` points to an invalid memory address. This is especially problematic if `eax` was derived from unchecked user input or from a previously corrupted value.

**Mitigation Strategies (in bugSolution.asm):**
* **Bounds checking:**  Implement checks to ensure `ecx` is within the allowed bounds before array access.
* **Address validation:** Verify the validity of memory addresses before attempting to access them.