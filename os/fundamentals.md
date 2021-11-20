# Topics of interest:

1. Kernel
1. Userspace
1. Syscalls 


The Kernel is the OS manager. It has 4 main responsibilities:

1. Manage memory 
1. Manage who has access to the CPU at any point in time
1. Be an intermediary between processes and hardware
1. Syscalls and security 

```
USER_SPACE
KERNEL
HARDWARE
```


## Kernel mode and running code 

Running code in two modes: 

1. Kernel mode
1. User mode

In Kernel mode there is unrestricted access to the hardware on the machine as well as SCI.
The same concept applies to memory as there exists a User Space and a Kernel Space
in memory.

## Syscall 

A syscall is a way for a process to request a resource from the kernel on the 
operating system. 

Remember that we don't want processes having unrestricted access to hardware.
Take the example of reading a file from disk. The requesting process must make
a syscall to the kernel to open a FD referring to this file, and then make
subsequent requests to read it.