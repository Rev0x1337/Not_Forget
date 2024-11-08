; 4 parameters

sub rsp, 40 ; -stack

mov r9, param_4
mov r8, param_3
mov rdx, param_2
mov rcx, param_1
call f_api64

add rsp 40 ; +stack
________________________

; 5 parameters

sub rsp, 40 ; -stack

mov qword ptr [rsp+32], param_5
mov r9, param_4
mov r8, param_3
mov rdx, param_2
mov rcx, param_1
call f_api64

add rsp, 40 ; +stack
