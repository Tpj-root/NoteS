# Lcnc






### halrun - manipulate the LinuxCNC HAL from the command line

```
halrun -I
```

 - Input file

```
halcmd -f <filename>

```


**halcmd Command list**



 - loadrt &lt;modname&gt;&nbsp;&nbsp;&nbsp;# load realtime module
 - unloadrt &lt;modname&gt;&nbsp;&nbsp;&nbsp;# unload realtime module
 - loadusr &lt;compname&gt;&nbsp;&nbsp;&nbsp;# load Userspace component
 - unloadusr &lt;compname&gt;&nbsp;&nbsp;&nbsp;# unload Userspace component
 - waitusr &lt;name&gt;&nbsp;&nbsp;&nbsp;# wait for Userspace component
 - unload &lt;compname&gt;&nbsp;&nbsp;&nbsp;# Unloads  a  non-realtime component or realtime module.
 - newsig signame type &nbsp;&nbsp;&nbsp;#  Creates a new HAL signal called signame 
 - delsig signame &nbsp;&nbsp;&nbsp;# delete signal
 - linkpp     &nbsp;&nbsp;&nbsp;#  pinname1 [arrow] pinname2
 - linkps      &nbsp;&nbsp;&nbsp;#  pinname [arrow] signame
 - linksp      &nbsp;&nbsp;&nbsp;# signame [arrow] pinname
 - net signame pinname &nbsp;&nbsp;&nbsp;# Create  signname to match the type of pinname 
 - unlinkp pinname       &nbsp;&nbsp;&nbsp;# unlink  pin
 - getp, gets  <name>   &nbsp;&nbsp;&nbsp;# get the value parameter, pin  or signal
 - ptype, stype <name>   &nbsp;&nbsp;&nbsp;# get the type parameter, pin or signal
 - setp, sets  <name>   &nbsp;&nbsp;&nbsp;# set the value parameter, pin or signal 
 - addf functname threadname &nbsp;&nbsp;&nbsp;# add function
 - delf functname threadname &nbsp;&nbsp;&nbsp;# delete function
 - show [item] &nbsp;&nbsp;&nbsp;# Prints HAL items to stdout in human readable format.

- list type [pattern] &nbsp;&nbsp;&nbsp;# Prints the names of HAL items of the specified type.
       
```
       ex:    list funct
              list comp
              list pin
              list sig
              list thread
```

- source  filename.hal  # Execute the commands from filename.hal.

```
source <file_location/../../<filename.hal>>
                  
```


 - status [type]  &nbsp;&nbsp;&nbsp;# Prints status info about HAL.
```
                  status lock
                  status mem
                  status all
                  
```


- debug [level]  &nbsp;&nbsp;&nbsp;# Sets the rtapi messaging level.
```
                  debug
                  0=None
                  1=ErrorOnly
                  2=Warnings
                  3=INfo
                  4=Debug
                  5=AllMessages
      
```



- save [item]  # Prints HAL items to stdout in the form of HAL commands and help to backup.
``` 
                  save comp
                  save alias
                  save sig | link | net | param | all | <filename.hal>


```


 - start &nbsp;&nbsp;&nbsp; #  Starts  execution  of realtime threads. 
 - stop &nbsp;&nbsp;&nbsp;  # Stops execution of realtime threads.
 - alias type name alias &nbsp;&nbsp;&nbsp;# Assigns "alias" as a second name for the pin or parameter "name"
 - unalias type alias&nbsp;&nbsp;&nbsp; # Removes any alias from the pin or parameter alias.


``` 
alias <type>   <name>          <alias>
alias param setgen.0.dirhold iamnewalias


"type" must be pin or param.
"name" must be an existing name or alias of the specified type.

```



 - echo, unecho # encho commands from stdin to stderr
 - print [message]  # Prints the filename, linenumber and an optional message.
 - quit, exit      # exit from halcmd




# locking_indexer.hal


```
https://github.com/LinuxCNC/linuxcnc/blob/1ed894e830e871ad6f3f84c3213a1cd7dd1e92cc/configs/sim/axis/axis_9axis.ini#L50
https://github.com/LinuxCNC/linuxcnc/blob/1ed894e830e871ad6f3f84c3213a1cd7dd1e92cc/lib/hallib/README#L31
https://github.com/LinuxCNC/linuxcnc/blob/1ed894e830e871ad6f3f84c3213a1cd7dd1e92cc/configs/sim/qtvcp_screens/qtdefault_9axis.ini#L61
https://github.com/LinuxCNC/linuxcnc/blob/1ed894e830e871ad6f3f84c3213a1cd7dd1e92cc/configs/sim/axis/remap/cycle/cycle.ini#L55
https://github.com/LinuxCNC/linuxcnc/blob/1ed894e830e871ad6f3f84c3213a1cd7dd1e92cc/lib/hallib/locking_indexer.hal#L4
```


       lock [all|tune|none]
                Locks HAL to some degree.
                none - no locking done.
                tune - some tuning is possible (setp & such).
                all  - HAL completely locked.

       unlock [all|tune]
                Unlocks HAL to some degree.
                tune - some tuning is possible (setp & such).
                all  - HAL completely unlocked.



