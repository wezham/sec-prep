# /proc directory

Is organised as a group of virtual directories and sub-directories. No file
exists. The OS creates the directories on the fly. 

It contains useful information about your running process, and many cmd line
tools will look to this directory to generate their output. 

Sample netcat: 
```
attr/            coredump_filter  gid_map          mountinfo        oom_score_adj    sessionid        syscall
autogroup        cpuset           io               mounts           pagemap          setgroups        task/
auxv             cwd/             limits           mountstats       personality      smaps            timers
cgroup           environ          loginuid         net/             projid_map       stack            timerslack_ns
clear_refs       exe              map_files/       ns/              root/            stat             uid_map
cmdline          fd/              maps             oom_adj          sched            statm            wchan
comm             fdinfo/          mem              oom_score        schedstat        status
```

Sample `netcat/stack`:

```
[<0000000000000000>] prepare_to_wait_exclusive+0x62/0x6a
[<0000000000000000>] inet_csk_accept+0xe5/0x21b
[<0000000000000000>] inet_csk_accept+0xe5/0x21b
[<0000000000000000>] add_wait_queue_exclusive+0x3a/0x3a
[<0000000000000000>] inet_accept+0x40/0xf2
[<0000000000000000>] SYSC_accept4+0x113/0x1c7
[<0000000000000000>] syscall_trace_enter+0x102/0x1f5
[<0000000000000000>] do_syscall_64+0x6f/0x7f
[<0000000000000000>] entry_SYSCALL_64_after_swapgs+0x58/0xc6
[<0000000000000000>] 0xffffffffffffffff
```

Each process has its own namespace in this directory. For example:

`/proc/{pid}/environ` - will give you the environment varaibles assocaited with
the process. This seemed interesting to me:


Processes seem to have an owner:

1. Start up a process as `root` and let it sleep. I did `nc -l 8080`
1. `adduser wes`, and now try view the environment file for that process and get
   denied. Lets see if we can view the process space for a process `wes` started by wes
1. root user can view the file


 