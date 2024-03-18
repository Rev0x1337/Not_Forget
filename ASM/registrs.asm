A - Accumulator
B - Base Register
C - Count Register
D - Data Register
-------------------------

AH, AL    ;| 8b 1\2 16b
BH, BL    ;|
CH, CL    ;|
DH, DL    ;|

AX        ;| 16b 1\2 32b
BX        ;|
CX        ;|
DX        ;|

EAX       ;| 32b 1\2 64b
EBX       ;|
ECX       ;|
EDX       ;|

RAX       ;| 64b 1\2 128b
RBX       ;|
RCX       ;|
RDX       ;|
**************************

Segment Register (arch x86)

CS - Code Segment
DS - Data Segment
SS - Stack Segment
ES, FS, GS - Extra Segment
**************************
 
Registers - pointers

SP - Stack Pointer
SPL   ; 8b
SP    ; 16b
ESP   ; 32b
RSP   ; 64b

BP - start of stack frame
BPL   ; 8b
BP    ; 16b
EBP   ; 32b
RBP   ; 64b

IP - Instruction Pointer
IP    ; 16b
EIP   ; 32b
RIP   ; 64b
**************************

Index registers

SI - Sourse Index
SIL   ; 8b
SI    ; 16b
ESI   ; 32b
RSI   ; 64b

DI - Destination Index
DIL   ; 8b
DI    ; 16b
EDI   ; 32b
RDI   ; 64b
