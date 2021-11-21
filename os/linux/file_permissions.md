Linux file permissions work as follows. Take the sample output from this command:

```
drwxr-xr-x 20 wes  wes   640 Nov 21 03:27 .
drwxr-xr-x  1 root root 4096 Nov  3 21:30 ..
drwxr-xr-x  2 wes  wes    64 Nov 19 05:39 attack_structure
drwxr-xr-x  2 wes  wes    64 Nov 19 05:38 crypto
drwxr-xr-x  4 wes  wes   128 Nov 21 04:14 detection
-rw-r--r--  1 wes  wes  6148 Nov 21 03:27 .DS_Store
drwxr-xr-x  4 wes  wes   128 Nov 19 07:34 exploit
-rw-------  1 wes  wes   190 Nov 21 02:27 .gdb_history
drwxr-xr-x 12 wes  wes   384 Nov 22 06:27 .git
```


The first character `d` refers a special character. Which could be any one of the 
following values: 

|Key|Description|
|-----|-----|
| _ | no special permissions |
| d  | directory |
| l  | symbolic link |
| s  | indicated the setuid set gid permissions | 
| t | sticky bit permissions | 
                                                                       
```
drwxr-xr-x
```

Then we have 3 groups: 


xxxyyyzzz


|Name|Description|
|-----|-----|
| Owner Permissions | Permissions the owner of the file has |
| Group | Permissions the group has on the file |
| All Users | Permissions for all users on the file | 


