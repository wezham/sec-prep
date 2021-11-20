# ELF ( Executable Linkable Format ) 

ELF is file format for executable files, object code, shared libraries and core dumps

Each ELF is made up of 1 ELF Header followed by file data. Data can include:

1. Program header table, describing memory segments 
1. Section header table - describes sections 
1. Data referred to by entries in the program header table or section table

The segements contain info required for run time execution. 

See: https://en.wikipedia.org/wiki/Executable_and_Linkable_Format#/media/File:ELF_Executable_and_Linkable_Format_diagram_by_Ange_Albertini.png


Tools:

`readelf`. Sample output:


Binary not compiled on my machine
```
ELF Header:
  Magic:   7f 45 4c 46 01 01 01 00 00 00 00 00 00 00 00 00
  Class:                             ELF32
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              EXEC (Executable file)
  Machine:                           Intel 80386
  Version:                           0x1
  Entry point address:               0x80483c0
  Start of program headers:          52 (bytes into file)
  Start of section headers:          6160 (bytes into file)
  Flags:                             0x0
  Size of this header:               52 (bytes)
  Size of program headers:           32 (bytes)
  Number of program headers:         9
  Size of section headers:           40 (bytes)
  Number of section headers:         30
  Section header string table index: 29
```



The ELF could be one place we could look to get information about how a file will be used at run time. 