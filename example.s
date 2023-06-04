.text
.globl _main
_main:
    movq $0, %rdi          # prepare exit code
    movq $0x2000001, %rax  # macOS exit system call
    syscall
