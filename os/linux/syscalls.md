# Syscalls 


Syscalls provide the interface for a process to interact with hardware via the
kernel. For example:

1. to read something from the filesystem 
1. to read from from memory 

If there was no layer of indirection between processess and hardware it
would be difficult to implement things like virtual memory as each process
would have unrestricted access to system resources. 

# Linux Syscalls 

Provide that interface to user space programs in the form on an interrupt.
A process signals an interrupt using the 0x80 value ( 120 ), along with the 
syscall table number. This number refers to a mapping stored internally on the
OS, which maps to a handler. 

Syscalls are defined in such a way that they look at the stack for a functions
arguements. 

# Adding syscalls 

Its possible to add syscalls, either via re-compilation or via adding a KLM 
( Kernel Loadable Module ).