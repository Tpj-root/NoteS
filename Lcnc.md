# Lcnc


linuxcnc Default password user::live

reset pass 

```
sudo passwd root
```



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






# man

tpmod - trajectory planning


homemod - homing function





# LinuxCNC_Manual_Pages


 - linuxcnc − LinuxCNC (The Enhanced Machine Controller)

<table>
  <tr>
    <th>NO</th>
    <th>NAME</th>
    <th>SHORT</th>
    <th>SYNOPSIS</th>
    <th>DESCRIPTION</th>
    <th>EXAMPLES</th>
    <th>PageNo</th>
  </tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">1</td>
  <td style="width: 50px; word-wrap: break-word;">linuxcnc</td>
  <td style="width: 50px; word-wrap: break-word;">LinuxCNC (The Enhanced Machine Controller)</td>
  <td style="width: 150px; word-wrap: break-word;">linuxcnc [-v] [-d] [INIFILE]</td>
  <td style="width: 150px; word-wrap: break-word;">It starts the realtime system and
then initializes a number of LinuxCNC components (IO, Motion, GUI, HAL, etc). The most important pa-
rameter is INIFILE, which specifies the configuration name you would like to run. If INIFILE is not speci-
fied, the linuxcnc script presents a graphical wizard to let you choose one.</td>
  <td style="width: 200px; word-wrap: break-word;">linuxcnc configs/sim/sim.ini <br> <br> linuxcnc /etc/linuxcnc/sample-configs/stepper/stepper_mm.ini</td>
  <td style="width: 200px; word-wrap: break-word;">1-2</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">2</td>
  <td style="width: 50px; word-wrap: break-word;">5axisgui</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">5axisgui is one of the sample Vismach GUIs for LinuxCNC</td>
      <td style="width: 200px; word-wrap: break-word;"></td>
    <td style="width: 200px; word-wrap: break-word;">3</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">3</td>
  <td style="width: 50px; word-wrap: break-word;">axis−remote</td>
  <td style="width: 150px; word-wrap: break-word;">AXIS Remote Interface</td>
  <td style="width: 150px; word-wrap: break-word;">axis−remote OPTIONS|FILENAME</td>
  <td style="width: 200px; word-wrap: break-word;">axis−remote is a small script that triggers commands in a running AXIS GUI. Use axis−remote −−help
for further information.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">4</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">4</td>
  <td style="width: 50px; word-wrap: break-word;">axis</td>
  <td style="width: 150px; word-wrap: break-word;">AXIS LinuxCNC Graphical User Interface</td>
  <td style="width: 150px; word-wrap: break-word;">axis −ini INIFILE</td>
  <td style="width: 200px; word-wrap: break-word;">axis is one of the Graphical User Interfaces (GUI) for LinuxCNC It gets run by the runscript usually.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">5</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">5</td>
  <td style="width: 50px; word-wrap: break-word;">debuglevel</td>
  <td style="width: 150px; word-wrap: break-word;">sets the debug level for the userspace part of LinuxCNC</td>
  <td style="width: 150px; word-wrap: break-word;">debuglevel −ini INIFILE</td>
  <td style="width: 200px; word-wrap: break-word;">debuglevel displays a checkbox gui to select the current debug level of some parts of LinuxCNC.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">6</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">6</td>
  <td style="width: 50px; word-wrap: break-word;">elbpcom</td>
  <td style="width: 150px; word-wrap: break-word;">Communicate with Mesa ethernet cards</td>
  <td style="width: 150px; word-wrap: break-word;">elbpcom [−−ip=IP] [−−port=PORT ] [−−timeout=TIMEOUT ]</td>
  <td style="width: 200px; word-wrap: break-word;">Read or write data from a Mesa ethernet card that uses the LBP16 protocol, such as the 7i80. This can be
useful for performing certain low-level tasks</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">7</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">7</td>
  <td style="width: 50px; word-wrap: break-word;">gladevcp</td>
  <td style="width: 150px; word-wrap: break-word;"> Virtual Control Panel for LinuxCNC based on Glade, Gtk and HAL widgets</td>
  <td style="width: 150px; word-wrap: break-word;">gladevcp [−g WxH+X+Y] [−c component-name] [−u handler] [−U useroption] [−H halfile] [−d] myfile.ui</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">8</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">8</td>
  <td style="width: 50px; word-wrap: break-word;">gladevcp</td>
  <td style="width: 150px; word-wrap: break-word;"> used by sample configs to deonstrate Glade Virtual_demo</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">gladevcp_demo is a sample GladeVCP handler
</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">9</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">9</td>
  <td style="width: 50px; word-wrap: break-word;">gmoccapy</td>
  <td style="width: 150px; word-wrap: break-word;">TOUCHY LinuxCNC Graphical User Interface</td>
  <td style="width: 150px; word-wrap: break-word;">gmoccapy −ini INIFILE</td>
  <td style="width: 200px; word-wrap: break-word;">gmoccapy is one of the Graphical User Interfaces (GUI) for LinuxCNC It gets run by the runscript usually.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">10</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">10</td>
  <td style="width: 50px; word-wrap: break-word;">gremlin_view</td>
  <td style="width: 150px; word-wrap: break-word;">G-code graphical preview</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">gremlin_view is a python wrapper for the gremlin G-code graphical preview</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">11-12</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">11</td>
  <td style="width: 50px; word-wrap: break-word;">gs2_vfd</td>
  <td style="width: 150px; word-wrap: break-word;">HAL userspace component for Automation Direct GS2 VFD’s</td>
  <td style="width: 150px; word-wrap: break-word;">gs2_vfd [OPTIONS]</td>
  <td style="width: 200px; word-wrap: break-word;">This manual page explains the gs2_vfd component. This component reads and writes to the GS2 via a mod-
bus connection.
gs2_vfd is for use with LinuxCNC</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">13-15</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">12</td>
  <td style="width: 50px; word-wrap: break-word;">gscreen</td>
  <td style="width: 150px; word-wrap: break-word;">TOUCHY LinuxCNC Graphical User Interface</td>
  <td style="width: 150px; word-wrap: break-word;">gscreen −ini INIFILE</td>
  <td style="width: 200px; word-wrap: break-word;">gscreen is one of the Graphical User Interfaces (GUI) for LinuxCNC It gets run by the runscript usually</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">16</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">13</td>
  <td style="width: 50px; word-wrap: break-word;">hal-histogram</td>
  <td style="width: 150px; word-wrap: break-word;"> plots the value of a HAL pin as a histogram</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">hal-histogram represents the values of a hal pin graphically.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">17</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">14</td>
  <td style="width: 50px; word-wrap: break-word;">hal_input</td>
  <td style="width: 150px; word-wrap: break-word;">control HAL pins with any Linux input device, including USB HID devices</td>
  <td style="width: 150px; word-wrap: break-word;">loadusr hal_input [−KRAL] inputspec ...</td>
  <td style="width: 200px; word-wrap: break-word;">hal_input is an interface between HAL and any Linux input device, including USB HID devices. For each
device named, hal_input creates pins corresponding to its keys, absolute axes, and LEDs. At a fixed rate of
approximately 10ms, it synchronizes the device and the HAL pins.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">18-20</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">15</td>
  <td style="width: 50px; word-wrap: break-word;">hal_manualtoolchange</td>
  <td style="width: 150px; word-wrap: break-word;">HAL userspace component to enable manual tool changes.</td>
  <td style="width: 150px; word-wrap: break-word;">loadusr hal_manualtoolchange</td>
  <td style="width: 200px; word-wrap: break-word;">loadusr −W hal_manualtoolchange</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">21-22</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">16</td>
  <td style="width: 50px; word-wrap: break-word;">hal_parport</td>
  <td style="width: 150px; word-wrap: break-word;">Realtime HAL component to communicate with one or more pc parallel ports.</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt hal_parport cfg="port_addr [type] [[port_addr [type] ...]"</td>
  <td style="width: 200px; word-wrap: break-word;">The hal_parport component is a realtime component that provides connections from HAL via halpins to the
physical pins of one or more parallel ports. It provides a read and write function to send and receive data to
the attached parallel port(s).
The hal_parport component supports up to 8 physical parallel ports.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">4</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">17</td>
  <td style="width: 50px; word-wrap: break-word;">halcmd</td>
  <td style="width: 150px; word-wrap: break-word;">manipulate the LinuxCNC HAL from the command line</td>
  <td style="width: 150px; word-wrap: break-word;">halcmd [OPTIONS] [COMMAND [ARG]]</td>
  <td style="width: 200px; word-wrap: break-word;">halcmd is used to manipulate the HAL (Hardware Abstraction Layer) from the command line. halcmd can
optionally read commands from a file, allowing complex HAL configurations to be set up with a single
command.
</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">27-32</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">18</td>
  <td style="width: 50px; word-wrap: break-word;">halcmd_twopass</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">halcmd_twopass is a utility script used when parsing HAL files. It is of little relevance to normal users
and is used internally by the system.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">33</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">19</td>
  <td style="width: 50px; word-wrap: break-word;">halcompile</td>
  <td style="width: 150px; word-wrap: break-word;">Build, compile and install LinuxCNC HAL components</td>
  <td style="width: 150px; word-wrap: break-word;">halcompile [−−compile|−−preprocess|−−document|−−view−doc] compfile...</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">34</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">20</td>
  <td style="width: 50px; word-wrap: break-word;">halmeter</td>
  <td style="width: 150px; word-wrap: break-word;">observe HAL pins, signals, and parameters</td>
  <td style="width: 150px; word-wrap: break-word;">halmeter [−s] [pin|sig|param name] [−g X-positon Y-position [Width]]</td>
  <td style="width: 200px; word-wrap: break-word;">halmeter is used to observe HAL (Hardware Abstraction Layer) pins, signals, or parameters. It serves the
same purpose as a multimeter does when working on physical systems.
</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">4</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">21</td>
  <td style="width: 50px; word-wrap: break-word;">halreport</td>
  <td style="width: 150px; word-wrap: break-word;">creates a report on the status of the HAL</td>
  <td style="width: 150px; word-wrap: break-word;">halreport [outfilename]</td>
  <td style="width: 200px; word-wrap: break-word;">axis−remote</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">37</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">22</td>
  <td style="width: 50px; word-wrap: break-word;">halrmt</td>
  <td style="width: 150px; word-wrap: break-word;">halrmt is a remote-control interface for LinuxCNC.
</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">38-43</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">23</td>
  <td style="width: 50px; word-wrap: break-word;">halrun</td>
  <td style="width: 150px; word-wrap: break-word;">manipulate the LinuxCNC HAL from the command line</td>
  <td style="width: 150px; word-wrap: break-word;">halrun [−I] [halcmd_opts] [filename[.hal|.tcl]]</td>
  <td style="width: 200px; word-wrap: break-word;">halrun is a convenience script used to manipulate the HAL (Hardware Abstraction Layer) from the com-
mand line.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">44-45</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">24</td>
  <td style="width: 50px; word-wrap: break-word;">halsampler</td>
  <td style="width: 150px; word-wrap: break-word;">sample data from HAL in realtime</td>
  <td style="width: 150px; word-wrap: break-word;">halsampler [options]</td>
  <td style="width: 200px; word-wrap: break-word;"> halsampler are used together to sample HAL data in real time and store it in a file. sam-
pler is a realtime HAL component that exports HAL pins and creates a FIFO in shared memory. It then be-
gins sampling data from the HAL and storing it to the FIFO. halsampler is a user space program that
copies data from the FIFO to stdout, where it can be redirected to a file or piped to some other program.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">46-47</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">24</td>
  <td style="width: 50px; word-wrap: break-word;">halscope</td>
  <td style="width: 150px; word-wrap: break-word;">halscope Software oscilloscope for LinuxCNC/HAL</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">48</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">25</td>
  <td style="width: 50px; word-wrap: break-word;">halshow</td>
  <td style="width: 150px; word-wrap: break-word;">Show HAL parameters, pins and signals</td>
  <td style="width: 150px; word-wrap: break-word;">halshow [Options] [watchfile]</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">49</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">26</td>
  <td style="width: 50px; word-wrap: break-word;">halstreamer</td>
  <td style="width: 150px; word-wrap: break-word;">stream file data into HAL in real time</td>
  <td style="width: 150px; word-wrap: break-word;">halstreamer [options]</td>
  <td style="width: 200px; word-wrap: break-word;">halstreamer are used together to stream data from a file into the HAL in real time.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">50-51</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">27</td>
  <td style="width: 50px; word-wrap: break-word;">haltcl</td>
  <td style="width: 150px; word-wrap: break-word;">manipulate the LinuxCNC HAL from the command line using a tcl interpreter.</td>
  <td style="width: 150px; word-wrap: break-word;">haltcl [−i inifile] [filename]</td>
  <td style="width: 200px; word-wrap: break-word;">haltcl is used to manipulate the HAL (Hardware Abstraction Layer) from the command line using a tcl
interpreter.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">52-53</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">28</td>
  <td style="width: 50px; word-wrap: break-word;">halui</td>
  <td style="width: 150px; word-wrap: break-word;">observe HAL pins and command LinuxCNC through NML</td>
  <td style="width: 150px; word-wrap: break-word;">halui [−ini <path-to-ini>]
</td>
  <td style="width: 200px; word-wrap: break-word;">halui is used to build a User Interface using hardware knobs and switches. It exports a big number of pins,
and acts accordingly when these change.
</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">54-62</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">29</td>
  <td style="width: 50px; word-wrap: break-word;">hbmgui</td>
  <td style="width: 150px; word-wrap: break-word;">Vismach Virtual Machine GUI</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">hbmgui is one of the sample Vismach GUIs for LinuxCNC, simulating a Horizontal Boring Machine</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">63</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">30</td>
  <td style="width: 50px; word-wrap: break-word;">hexagui</td>
  <td style="width: 150px; word-wrap: break-word;">Vismach Virtual Machine GUI</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">hexagui is one of the sample Vismach GUIs for LinuxCNC, simulating a Horizontal Boring Machine.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">64</td>
</tr>

  <tr>
  <td style="width: 50px; word-wrap: break-word;">31</td>
  <td style="width: 50px; word-wrap: break-word;">hy_gt_vfd</td>
  <td style="width: 150px; word-wrap: break-word;">HAL userspace component for Huanyang GT−series VFDs</td>
  <td style="width: 150px; word-wrap: break-word;">hy_gt_vfd [OPTIONS]</td>
  <td style="width: 200px; word-wrap: break-word;">The hy_gt_vfd component interfaces a Huanyang GT−series VFD to the LinuxCNC HAL. The VFD is
connected via RS−485 serial to the LinuxCNC computer.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">65-68</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">32</td>
  <td style="width: 50px; word-wrap: break-word;">hy_vfd</td>
  <td style="width: 150px; word-wrap: break-word;">HAL userspace component for Huanyang VFDs</td>
  <td style="width: 150px; word-wrap: break-word;">hy_vfd [OPTIONS]</td>
  <td style="width: 200px; word-wrap: break-word;">This component connects the Huanyang VFD to the LinuxCNC HAL via a serial (RS-485) connection.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">69-73</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">33</td>
  <td style="width: 50px; word-wrap: break-word;">image-to-gcode</td>
  <td style="width: 150px; word-wrap: break-word;">converts bitmap images to G-code</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">image-to-gcode converts a bitmap image to G-code inteerpreting the brightness of each pixel as a Z-height.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">74</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">34</td>
  <td style="width: 50px; word-wrap: break-word;">inivar</td>
  <td style="width: 150px; word-wrap: break-word;">Query an INI file</td>
  <td style="width: 150px; word-wrap: break-word;">inivar -var <variable> {-sec <section>} {<-ini inifile>}</td>
  <td style="width: 200px; word-wrap: break-word;">inivar does stuff for LinuxCNC</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">75</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">35</td>
  <td style="width: 50px; word-wrap: break-word;">iocontrol</td>
  <td style="width: 150px; word-wrap: break-word;">interacts with HAL or G-code in userspace</td>
  <td style="width: 150px; word-wrap: break-word;">[EMCIO]
EMCIO = io</td>
  <td style="width: 200px; word-wrap: break-word;">I/O control handles I/O tasks like coolant, toolchange, e-stop and lube. The signals are turned on and off in
userspace with G-code or in the case of e-stop in hal.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">76-78</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">36</td>
  <td style="width: 50px; word-wrap: break-word;">iov2</td>
  <td style="width: 150px; word-wrap: break-word;">interacts with HAL or G-code in userspace</td>
  <td style="width: 150px; word-wrap: break-word;">EMCIO = iov2</td>
  <td style="width: 200px; word-wrap: break-word;">I/O control handles I/O tasks like coolant, toolchange, e-stop and lube. The signals are turned on and off in
userspace with G-code or in the case of e-stop in hal.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">79-81</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">37</td>
  <td style="width: 50px; word-wrap: break-word;">latency-histogram</td>
  <td style="width: 150px; word-wrap: break-word;"> plot a histogram of machine latency</td>
  <td style="width: 150px; word-wrap: break-word;">latency-histogram [−?|−−help]</td>
  <td style="width: 200px; word-wrap: break-word;">The latency test is important when configuring a LinuxCNC system. An adjunct to the standard latency-
test latency-histogram plots the distribution of latency. This can be useful to get a feel for how frequent the
high latency excursions are.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">82-83</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">38</td>
  <td style="width: 50px; word-wrap: break-word;">latency-plot</td>
  <td style="width: 150px; word-wrap: break-word;">another way to view latency numbers</td>
  <td style="width: 150px; word-wrap: break-word;">latency-plot [−?|−−help]</td>
  <td style="width: 200px; word-wrap: break-word;">latency-plot makes a strip chart recording for a base and a servo thread. It may be useful to see spikes in la-
tency when other applications are started or used. Mainly superseded by latency-histogram.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">84</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">39</td>
  <td style="width: 50px; word-wrap: break-word;">latency-test</td>
  <td style="width: 150px; word-wrap: break-word;">test the realtime system latency</td>
  <td style="width: 150px; word-wrap: break-word;">latency-test [-nobase]</td>
  <td style="width: 200px; word-wrap: break-word;">latency-test runs a simple latency test http://linuxcnc.org/docs/html/install/latency-test.html</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">85</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">40</td>
  <td style="width: 50px; word-wrap: break-word;">lineardelta</td>
  <td style="width: 150px; word-wrap: break-word;">Vismach Virtual Machine GUI</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">lineardelta is one of the sample Vismach GUIs for LinuxCNC, simulating a delta robot with linear actua-
tors</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">86</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">41</td>
  <td style="width: 50px; word-wrap: break-word;">linuxcnc_info</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">linuxcnc_info supplies information about the linuxcnc version and system info. It creates a text file and
opens it in the default text editor.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">87</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">42</td>
  <td style="width: 50px; word-wrap: break-word;">linuxcnc_module_helper</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">linuxcnc_module_helper This module exists to give root access to system hardware for LinuxCNC It is
not directly useful to users</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">88</td>
</tr>

  <tr>
  <td style="width: 50px; word-wrap: break-word;">43</td>
  <td style="width: 50px; word-wrap: break-word;">linuxcnc_var</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">linuxcnc_var Retrieve LinuxCNC variables</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">89</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">44</td>
  <td style="width: 50px; word-wrap: break-word;">linuxcnclcd</td>
  <td style="width: 150px; word-wrap: break-word;">LinuxCNC Graphical User Interface for LCD character display</td>
  <td style="width: 150px; word-wrap: break-word;">linuxcnclcd −ini INIFILE</td>
  <td style="width: 200px; word-wrap: break-word;">linuxcnclcd is one of the Graphical User Interfaces (GUI) for LinuxCNC It gets run by the runscript usu-
ally. Linuxcnclcd is designed to run on a 4 x 20 LCD character display. It is not clear if it has ever worked.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">90</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">45</td>
  <td style="width: 50px; word-wrap: break-word;">linuxcncmkdesktop</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">linuxcncmkdesktop Script used by pickconfig to create a desktop icon
</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">91</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">46</td>
  <td style="width: 50px; word-wrap: break-word;">linuxcncrsh</td>
  <td style="width: 150px; word-wrap: break-word;">text-mode interface for commanding LinuxCNC over the network</td>
  <td style="width: 150px; word-wrap: break-word;">linuxcncrsh [OPTIONS] [−− LINUXCNC_OPTIONS]</td>
  <td style="width: 200px; word-wrap: break-word;">linuxcncrsh is a user interface for LinuxCNC. Instead of popping up a GUI window like axis(1) and
touchy(1) do, it processes text-mode commands that it receives via the network. A human (or a program)
can interface with linuxcncrsh using telnet(1) or nc(1) or similar programs.
</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">92-99</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">47</td>
  <td style="width: 50px; word-wrap: break-word;">linuxcncsvr</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">linuxcncsvr Allows network access to LinuxCNC internals via NML</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">100</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">48</td>
  <td style="width: 50px; word-wrap: break-word;">linuxcnctop</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">linuxcnctop −ini INIFILE</td>
  <td style="width: 200px; word-wrap: break-word;">linuxcnctop displays much of the LinuxCNC state in a live format similar to the Linux "top" command.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">101</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">49</td>
  <td style="width: 50px; word-wrap: break-word;">hexagui</td>
  <td style="width: 150px; word-wrap: break-word;">Vismach Virtual Machine GUI</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">maho600gui is one of the sample Vismach GUIs for LinuxCNC, simulating a Maho 600 CNC Milling Ma-
chine.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">102</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">50</td>
  <td style="width: 50px; word-wrap: break-word;">hexagui</td>
  <td style="width: 150px; word-wrap: break-word;">Vismach Virtual Machine GUI</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">max5gui is one of the sample Vismach GUIs for LinuxCNC, simulating a 5 axis CNC Milling Machine.
</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">103</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">51</td>
  <td style="width: 50px; word-wrap: break-word;">mb2hal</td>
  <td style="width: 150px; word-wrap: break-word;">HAL userspace component for Modbus</td>
  <td style="width: 150px; word-wrap: break-word;">loadusr -W mb2hal config=config_file.ini</td>
  <td style="width: 200px; word-wrap: break-word;">loadusr -Wn mymodule mb2hal config=config_file.ini</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">104</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">52</td>
  <td style="width: 50px; word-wrap: break-word;">mdi</td>
  <td style="width: 150px; word-wrap: break-word;">Send G-code commands from the terminal to the running LinuxCNC instance</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">mdi sends G-code commands to LinuxCNC. The command starts an envirmonemt in which G-code com-
mands are sent to the interpreter and machine feedback is displayed.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">105</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">53</td>
  <td style="width: 50px; word-wrap: break-word;">milltask</td>
  <td style="width: 150px; word-wrap: break-word;">Userspace task controller for LinuxCNC</td>
  <td style="width: 150px; word-wrap: break-word;">[TASK]TASK=milltask</td>
  <td style="width: 200px; word-wrap: break-word;">milltask is an internal process of LinuxCNC. It is generally not invoked directly but by an inifile setting</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">106-107</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">54</td>
  <td style="width: 50px; word-wrap: break-word;">mitsub_vfd</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt mitsub_vfd [--baud 4800] [--port /dev/ttyUSB0] name1=number1[,name2=numer2...]</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;"> HAL userspace component for Mitsubishi A500 F500 E500 A500 D700 E700 F700-series
VFDs (others may work) This uses the COMPUTER LINK protocol _not_ MODBUS. The connection is
made through the PU connector.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">108-111</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">55</td>
  <td style="width: 50px; word-wrap: break-word;">motion-logger</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">motion-logger is a test program to log motion commands sent from LinuxCNC’s Task module to the Mo-
tion module</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">112</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">56</td>
  <td style="width: 50px; word-wrap: break-word;">moveoff_gui</td>
  <td style="width: 150px; word-wrap: break-word;">a gui for the moveoff component</td>
  <td style="width: 150px; word-wrap: break-word;">moveoff_gui [−−help | −− −h | −?]</td>
  <td style="width: 200px; word-wrap: break-word;">moveoff_gui [options]</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">113-115</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">57</td>
  <td style="width: 50px; word-wrap: break-word;">ngcgui</td>
  <td style="width: 150px; word-wrap: break-word;"> − a framework for conversational G-code generation on the controller</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">ngcgui details: http://linuxcnc.org/docs/html/gui/ngcgui.html</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">116</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">58</td>
  <td style="width: 50px; word-wrap: break-word;">panelui</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">panelui is a userspace component to interface buttons to linuxcnc or HAL. It decodes MESA 7I73 style</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">117</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">59</td>
  <td style="width: 50px; word-wrap: break-word;">pmx485</td>
  <td style="width: 150px; word-wrap: break-word;">Modbus communications with a Powermax Plasma Cutter</td>
  <td style="width: 150px; word-wrap: break-word;">loadusr -Wn pmx485 pmx485 /dev/ttyUSB0</td>
  <td style="width: 200px; word-wrap: break-word;">pmx485 is a userspace HAL component to communicate with a Hypertherm Powermax plasma cutter using
the Modbus ASCII protocol over RS485.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">118</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">60</td>
  <td style="width: 50px; word-wrap: break-word;">pncconf</td>
  <td style="width: 150px; word-wrap: break-word;">configuration wizard for Mesa cards</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">pncconf is used to configure systems that use Mesa cards.
</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">119</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">61</td>
  <td style="width: 50px; word-wrap: break-word;">puma560agui</td>
  <td style="width: 150px; word-wrap: break-word;">Vismach Virtual Machine GUI</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">puma560gui is one of the sample Vismach GUIs for LinuxCNC, simulating a Puma 560 robot arm</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">120</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">62</td>
  <td style="width: 50px; word-wrap: break-word;">pumagui</td>
  <td style="width: 150px; word-wrap: break-word;">Vismach Virtual Machine GUI</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">pumagui is one of the sample Vismach GUIs for LinuxCNC, simulating a generic Puma style robot arm.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">121</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">63</td>
  <td style="width: 50px; word-wrap: break-word;">pyngcgui</td>
  <td style="width: 150px; word-wrap: break-word;">python implementation of ngcgui</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">pyngcgui is an alternative implenentation of ngcgui</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">122</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">64</td>
  <td style="width: 50px; word-wrap: break-word;">pyui</td>
  <td style="width: 150px; word-wrap: break-word;">utility for panelui</td>
  <td style="width: 150px; word-wrap: break-word;">loadusr pyui</td>
  <td style="width: 200px; word-wrap: break-word;">pyui Validates panelui.ini files</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">123</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">65</td>
  <td style="width: 50px; word-wrap: break-word;">pyvcp</td>
  <td style="width: 150px; word-wrap: break-word;">Virtual Control Panel for LinuxCNC</td>
  <td style="width: 150px; word-wrap: break-word;">pyvcp [−g WxH+X+Y] [−c component−name] myfile.xml</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">124</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">66</td>
  <td style="width: 50px; word-wrap: break-word;">pyvcp_demo</td>
  <td style="width: 150px; word-wrap: break-word;"> Python Virtual Control Panel demonstration component</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">pyvcp_demo is mainly used by sample configurations.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">125</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">67</td>
  <td style="width: 50px; word-wrap: break-word;">qtvcp</td>
  <td style="width: 150px; word-wrap: break-word;">QT based virtual control panels</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">qtvcp is a system for creating user interfaces for LinuxCNC</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">126</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">68</td>
  <td style="width: 50px; word-wrap: break-word;">rotarydelta</td>
  <td style="width: 150px; word-wrap: break-word;">Vismach Virtual Machine GUI</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">rotarydelta is one of the sample Vismach GUIs for LinuxCNC, simulating a delta robot with rotary actuators
</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">127</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">69</td>
  <td style="width: 50px; word-wrap: break-word;">rs274</td>
  <td style="width: 150px; word-wrap: break-word;">standalone G-code interpreter</td>
  <td style="width: 150px; word-wrap: break-word;">rs274 [-p interp.so] [-t tool.tbl] [-v var-file.var] [-n 0|1|2]
[-b] [-s] [-g] [input file [output file]]</td>
  <td style="width: 200px; word-wrap: break-word;">rs274 Standalone G-code interpreter interface</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">128-129</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">70</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_app</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">rtapi_app Creates a simulated real time environment</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">130</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">71</td>
  <td style="width: 50px; word-wrap: break-word;">scaragui</td>
  <td style="width: 150px; word-wrap: break-word;">Vismach Virtual Machine GUI</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">scaragui is one of the sample Vismach GUIs for LinuxCNC, simulating a SCARA style robot arm</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">131</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">72</td>
  <td style="width: 50px; word-wrap: break-word;">schedrmt</td>
  <td style="width: 150px; word-wrap: break-word;">telnet based scheduler for LinuxCNC</td>
  <td style="width: 150px; word-wrap: break-word;">schedrmt {-- --port <port number> --name <server name> --connectpw <password>
--enablepw <password> --sessions <max sessions> --path <path>
-ini<inifile>}</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">132-135</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">73</td>
  <td style="width: 50px; word-wrap: break-word;">scorbot-er-3</td>
  <td style="width: 150px; word-wrap: break-word;">to link the Intellitek Scorbot educational robot to LinuxCNC</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">scorbot-er-3 is a userspace, non-realtime component that interfaces the control box of a Scorbot ER-3 ro-
bot arm to the LinuxCNC HAL.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">136</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">74</td>
  <td style="width: 50px; word-wrap: break-word;">sendkeys</td>
  <td style="width: 150px; word-wrap: break-word;">send input events based on pins or scancodes from HAL</td>
  <td style="width: 150px; word-wrap: break-word;">loadusr sendkeys config=s8t5, 16, t12</td>
  <td style="width: 200px; word-wrap: break-word;">This component is intended as a partner component to matrix_kb or the hostmot2 7i73 driver. It accepts the
key−up and key−down event codes from either of these and converts them to keystokes sent from a virtual
keyboard.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">137-138</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">75</td>
  <td style="width: 50px; word-wrap: break-word;">shuttle</td>
  <td style="width: 150px; word-wrap: break-word;">control HAL pins with the ShuttleXpress, ShuttlePRO, and ShuttlePRO2 device made by Contour
Design</td>
  <td style="width: 150px; word-wrap: break-word;">loadusr shuttle [DEVICE ...]</td>
  <td style="width: 200px; word-wrap: break-word;">axis−remote</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">139-140</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">76</td>
  <td style="width: 50px; word-wrap: break-word;">sim_pin</td>
  <td style="width: 150px; word-wrap: break-word;">gui for displaying and setting one or more Hal inputs</td>
  <td style="width: 150px; word-wrap: break-word;">sim_pin [Options] name1 [name2 [name3 ...]]</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">141-142</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">77</td>
  <td style="width: 50px; word-wrap: break-word;">simulate_probe</td>
  <td style="width: 150px; word-wrap: break-word;">simulate a probe input</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">simulate_probe Creates an on-screen GUI button to simulate touch probe input. Typically used in sim
configs or debugging.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">143</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">78</td>
  <td style="width: 50px; word-wrap: break-word;">stepconf</td>
  <td style="width: 150px; word-wrap: break-word;">A configuration wizard for parallel-port based machines.</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">stepconf aids in the configuration of machines using the parallel port interface.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">144</td>
</tr>

  <tr>
  <td style="width: 50px; word-wrap: break-word;">79</td>
  <td style="width: 50px; word-wrap: break-word;">teach-in</td>
  <td style="width: 150px; word-wrap: break-word;">jog the machine to a position, and record the state</td>
  <td style="width: 150px; word-wrap: break-word;">teach-in [> outfile]</td>
  <td style="width: 200px; word-wrap: break-word;">teach-in is a script to learn set positions for later use by a script.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">145</td>
</tr>

  <tr>
  <td style="width: 50px; word-wrap: break-word;">80</td>
  <td style="width: 50px; word-wrap: break-word;">thermistor</td>
  <td style="width: 150px; word-wrap: break-word;">compute temperature indicated by a thermistor</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">This component computes the temperature indicated by a thermistor in a voltage-divider ladder. It uses the
Beta-parameter variant of the Steinhart-Hart equation,</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">146</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">81</td>
  <td style="width: 50px; word-wrap: break-word;">tooledit</td>
  <td style="width: 150px; word-wrap: break-word;">tool table editor</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">tooledit a graphical tool table editor</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">147</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">82</td>
  <td style="width: 50px; word-wrap: break-word;">axis</td>
  <td style="width: 150px; word-wrap: break-word;">TOUCHY LinuxCNC Graphical User Interface</td>
  <td style="width: 150px; word-wrap: break-word;">touchy −ini INIFILE</td>
  <td style="width: 200px; word-wrap: break-word;">touchy is one of the Graphical User Interfaces (GUI) for LinuxCNC It gets run by the runscript usually.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">148</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">83</td>
  <td style="width: 50px; word-wrap: break-word;">update_ini</td>
  <td style="width: 150px; word-wrap: break-word;">A script to convert 2.7 format .ini files to 2.8 format</td>
  <td style="width: 150px; word-wrap: break-word;">update_ini [-f] [-d] inifile</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">149</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">84</td>
  <td style="width: 50px; word-wrap: break-word;">vfdb_vfd</td>
  <td style="width: 150px; word-wrap: break-word;">HAL userspace component for Delta VFD-B Variable Frequency Drives</td>
  <td style="width: 150px; word-wrap: break-word;">vfdb_vfd [OPTIONS]</td>
  <td style="width: 200px; word-wrap: break-word;">This manual page explains the vfdb_vfd component. This component reads and writes to the VFD-B
device via a Modbus connection</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">150-153</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">85</td>
  <td style="width: 50px; word-wrap: break-word;">vfs11_vfd</td>
  <td style="width: 150px; word-wrap: break-word;">HAL userspace component for Toshiba-Schneider VF-S11 Variable Frequency Drives</td>
  <td style="width: 150px; word-wrap: break-word;">vfs11_vfd [OPTIONS]</td>
  <td style="width: 200px; word-wrap: break-word;">This component reads and writes to the vfs11 via a
Modbus connection.
vfs11_vfd is for use with LinuxCNC.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">154-156</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">86</td>
  <td style="width: 50px; word-wrap: break-word;">wj200_vfd</td>
  <td style="width: 150px; word-wrap: break-word;">Hitachi wj200 modbus driver</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">157</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">87</td>
  <td style="width: 50px; word-wrap: break-word;">xhc-hb04-accels</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">xhc-hb04-accels Obsolete script, xhc-hb04.tcl now controls reduced wheel jogging accels</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">158</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">88</td>
  <td style="width: 50px; word-wrap: break-word;">xhc-hb04</td>
  <td style="width: 150px; word-wrap: break-word;">User-space HAL component for the xhc-hb04 pendant.</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">The xhc-hb04 component supports a common USB pendant that provides a number of pushbuttons, a
manual pulse generator (mpg or jog wheel), and a selector switch for the wheel.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">159-163</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">89</td>
  <td style="width: 50px; word-wrap: break-word;">xhc-whb04b-6</td>
  <td style="width: 150px; word-wrap: break-word;">Userspace jog dial HAL component for the wireless XHC WHB04B−6 USB device.</td>
  <td style="width: 150px; word-wrap: break-word;">xhc−whb04b−6 [−h] | [−H] [OPTIONS]</td>
  <td style="width: 200px; word-wrap: break-word;">The xhc−whb04b−6 HAL component supports the XHC WHB04B−6, a 6−axis wireless USB pendant. It
provides a number of push−buttons, a jogwheel, two rotary buttons for axis and speed / step selection and
an ordinary LCD display.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">164-174</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">90</td>
  <td style="width: 50px; word-wrap: break-word;">xyzac-trt-gui</td>
  <td style="width: 150px; word-wrap: break-word;">Vismach Virtual Machine GUI</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">xyzac-trt-gui is one of the sample Vismach GUIs for LinuxCNC, simulating a 5-axis milling machine with
tool-point kinematics</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">175</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">91</td>
  <td style="width: 50px; word-wrap: break-word;">xyzbc-trt-gui</td>
  <td style="width: 150px; word-wrap: break-word;">Vismach Virtual Machine GUI</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">xyzbc-trt-gui is one of the sample Vismach GUIs for LinuxCNC, simulating a 5-axis milling machine with
tool-point kinematics</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">176</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">92</td>
  <td style="width: 50px; word-wrap: break-word;">hal</td>
  <td style="width: 150px; word-wrap: break-word;">Introduction to the HAL API</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">HAL stands for Hardware Abstraction Layer, and is used by LinuxCNC to transfer realtime data to and
from I/O devices and other low-level modules.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">177-178</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">-</td>
  <td style="width: 50px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">funct_names</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">93</td>
  <td style="width: 50px; word-wrap: break-word;">hal_add_funct_to_thread</td>
  <td style="width: 150px; word-wrap: break-word;">cause a function to be executed at regular intervals</td>
  <td style="width: 150px; word-wrap: break-word;">int hal_add_funct_to_thread</td>
  <td style="width: 200px; word-wrap: break-word;">int hal_del_funct_from_thread</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">179</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">94</td>
  <td style="width: 50px; word-wrap: break-word;">hal_create_thread</td>
  <td style="width: 150px; word-wrap: break-word;">Create a HAL thread</td>
  <td style="width: 150px; word-wrap: break-word;">int hal_create_thread</td>
  <td style="width: 200px; word-wrap: break-word;">int hal_thread_delete</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">180</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">95</td>
  <td style="width: 50px; word-wrap: break-word;">hal_exit</td>
  <td style="width: 150px; word-wrap: break-word;">Shut down HAL</td>
  <td style="width: 150px; word-wrap: break-word;">int hal_exit(int comp_id)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">181</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">95</td>
  <td style="width: 50px; word-wrap: break-word;">hal_export_funct</td>
  <td style="width: 150px; word-wrap: break-word;">create a realtime function callable from a thread</td>
  <td style="width: 150px; word-wrap: break-word;">int hal_export_funct</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">182</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">96</td>
  <td style="width: 50px; word-wrap: break-word;">hal_init</td>
  <td style="width: 150px; word-wrap: break-word;">Sets up HAL and RTAPI</td>
  <td style="width: 150px; word-wrap: break-word;">int hal_init(const char *modname)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">183</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">97</td>
  <td style="width: 50px; word-wrap: break-word;">hal_malloc</td>
  <td style="width: 150px; word-wrap: break-word;">Allocate space in the HAL shared memory area</td>
  <td style="width: 150px; word-wrap: break-word;">void *hal_malloc(long int size)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">184</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">98</td>
  <td style="width: 50px; word-wrap: break-word;">hal_param_alias</td>
  <td style="width: 150px; word-wrap: break-word;">create an alternate name for a param</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">int hal_param_alias</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">185</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">99</td>
  <td style="width: 50px; word-wrap: break-word;">hal_param_new</td>
  <td style="width: 150px; word-wrap: break-word;">Create a HAL parameter</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">int hal_param_bit_new</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">185-186</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">100</td>
  <td style="width: 50px; word-wrap: break-word;">hal_parport</td>
  <td style="width: 150px; word-wrap: break-word;">portable access to PC-style parallel ports</td>
  <td style="width: 150px; word-wrap: break-word;">#include "hal_parport.h"</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">188</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">101</td>
  <td style="width: 50px; word-wrap: break-word;">hal_pin_alias</td>
  <td style="width: 150px; word-wrap: break-word;">create an alternate name for a pin</td>
  <td style="width: 150px; word-wrap: break-word;">int hal_pin_alias</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">189</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">102</td>
  <td style="width: 50px; word-wrap: break-word;">hal_pin_new</td>
  <td style="width: 150px; word-wrap: break-word;">Create a HAL pin</td>
  <td style="width: 150px; word-wrap: break-word;">int hal_pin_bit_new</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">190-191</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">103</td>
  <td style="width: 50px; word-wrap: break-word;">hal_ready</td>
  <td style="width: 150px; word-wrap: break-word;">indicates that this component is ready</td>
  <td style="width: 150px; word-wrap: break-word;">hal_ready(int comp_id)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">192</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">104</td>
  <td style="width: 50px; word-wrap: break-word;">hal_set_constructor</td>
  <td style="width: 150px; word-wrap: break-word;">Set the constructor function for this component</td>
  <td style="width: 150px; word-wrap: break-word;">hal_set_constructor</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">193</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">105</td>
  <td style="width: 50px; word-wrap: break-word;">hal_set_lock, hal_get_lock</td>
  <td style="width: 150px; word-wrap: break-word;">Set or get the HAL lock level</td>
  <td style="width: 150px; word-wrap: break-word;">int hal_set_lock(unsigned char lock_type)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">194</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">106</td>
  <td style="width: 50px; word-wrap: break-word;">hal_signal_new, hal_signal_delete, hal_link, hal_unlink</td>
  <td style="width: 150px; word-wrap: break-word;">Manipulate HAL signals</td>
  <td style="width: 150px; word-wrap: break-word;">int hal_signal_new(const char *signal_name, hal_type_t type)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">195</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">107</td>
  <td style="width: 50px; word-wrap: break-word;">hal_start_threads</td>
  <td style="width: 150px; word-wrap: break-word;">Allow HAL threads to begin executing</td>
  <td style="width: 150px; word-wrap: break-word;">int hal_start_threads()</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">196</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">108</td>
  <td style="width: 50px; word-wrap: break-word;">hal_stream</td>
  <td style="width: 150px; word-wrap: break-word;">non-blocking realtime streams</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">197-200</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">109</td>
  <td style="width: 50px; word-wrap: break-word;">hal_type_t</td>
  <td style="width: 150px; word-wrap: break-word;">typedefs for HAL datatypes</td>
  <td style="width: 150px; word-wrap: break-word;">typedef ... hal_bool;</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">A type which may have a value of 0 or nonzero.</td>
  <td style="width: 200px; word-wrap: break-word;">201-202</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">110</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi</td>
  <td style="width: 150px; word-wrap: break-word;">Introduction to the RTAPI API</td>
  <td style="width: 150px; word-wrap: break-word;">axis−remote</td>
  <td style="width: 200px; word-wrap: break-word;">RTAPI is a library providing a uniform API for several real time operating systems. As of LinuxCNC 2.7,
POSIX threads and RTAI are supported.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">204-205</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">111</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_app_exit</td>
  <td style="width: 150px; word-wrap: break-word;">User-provided function to shut down a component</td>
  <td style="width: 150px; word-wrap: break-word;">#include <rtapi_app.h></td>
  <td style="width: 200px; word-wrap: break-word;">void rtapi_app_exit(void) {...}</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">206</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">112</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_app_main</td>
  <td style="width: 150px; word-wrap: break-word;">User-provided function to initialize a component</td>
  <td style="width: 150px; word-wrap: break-word;">#include <rtapi_app.h></td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">207</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">113</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_atomic</td>
  <td style="width: 150px; word-wrap: break-word;">subset of C11 <stdatomic.h></td>
  <td style="width: 150px; word-wrap: break-word;">This header provides at least the subset of C11’s <stdatomic.h> given above.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">208-209</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">114</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_bool.h</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI wrappers for linux kernel functionality</td>
  <td style="width: 150px; word-wrap: break-word;">#include <rtapi_bool.h></td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">210</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">115</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_byteorder.h</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI wrappers for linux kernel functionality</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI_BIG_ENDIAN</td>
  <td style="width: 200px; word-wrap: break-word;">Defined to 1 if the platform is big-endian, 0 otherwise</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">211</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">116</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_clock_set_period</td>
  <td style="width: 150px; word-wrap: break-word;">set the basic time interval for realtime tasks</td>
  <td style="width: 150px; word-wrap: break-word;">rtapi_clock_set_period(long int nsec)</td>
  <td style="width: 200px; word-wrap: break-word;">The desired basic time interval for realtime tasks</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">212</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">117</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_delay</td>
  <td style="width: 150px; word-wrap: break-word;">Busy-loop for short delays</td>
  <td style="width: 150px; word-wrap: break-word;">void rtapi_delay(long int nsec)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">213</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">118</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_device.h</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI wrappers for linux kernel functionality</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">In kernel space, each rtapi_xxx or RTAPI_XXX identifier is mapped to the underlying kernel functionality</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">214</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">119</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_div_u64</td>
  <td style="width: 150px; word-wrap: break-word;">unsigned division of a 64-bit number by a 32-bit number</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">215</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">120</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_exit</td>
  <td style="width: 150px; word-wrap: break-word;">Shut down RTAPI</td>
  <td style="width: 150px; word-wrap: break-word;">int rtapi_exit(int module_id)</td>
  <td style="width: 200px; word-wrap: break-word;">rtapi_exit shuts down and cleans up the RTAPI. It must be called prior to exit by any module that called</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">216</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">121</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_firmware.h</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI wrappers for linux kernel functionality</td>
  <td style="width: 150px; word-wrap: break-word;">struct rtapi_firmware</td>
  <td style="width: 200px; word-wrap: break-word;">In kernel space, each rtapi_xxx or RTAPI_XXX identifier is mapped to the underlying kernel functionality</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">217</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">122</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_get_time</td>
  <td style="width: 150px; word-wrap: break-word;">get the current time</td>
  <td style="width: 150px; word-wrap: break-word;">long long rtapi_get_time()</td>
  <td style="width: 200px; word-wrap: break-word;">long long rtapi_get_clocks()</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">218</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">123</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_gfp.h</td>
  <td style="width: 50px; word-wrap: break-word;">RTAPI wrappers for linux kernel functionality</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI</td>
  <td style="width: 150px; word-wrap: break-word;">enum rtapi_gfp_e</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">219</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">124</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_init</td>
  <td style="width: 150px; word-wrap: break-word;"> Sets up RTAPI</td>
  <td style="width: 150px; word-wrap: break-word;">int rtapi_init(const char *modname)</td>
  <td style="width: 200px; word-wrap: break-word;">rtapi_init sets up the RTAPI. It must be called by any module that intends to use the API, before any other RTAPI calls.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">220</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">125</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_io.h</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI wrappers for linux kernel functionality</td>
  <td style="width: 150px; word-wrap: break-word;">include</td>
  <td style="width: 200px; word-wrap: break-word;">In kernel space, each rtapi_xxx or RTAPI_XXX identifier is mapped to the underlying kernel functionality,</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">221</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">126</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_is</td>
  <td style="width: 150px; word-wrap: break-word;">details of rtapi configuration</td>
  <td style="width: 150px; word-wrap: break-word;">int rtapi_is_kernelspace()</td>
  <td style="width: 200px; word-wrap: break-word;">int rtapi_is_realtime()</td>
  <td style="width: 200px; word-wrap: break-word;">rtapi_is_kernelspace() returns nonzero when rtapi modules run in kernel space (e.g., under rtai) and zero</td>
  <td style="width: 200px; word-wrap: break-word;">222</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">127</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_list.h</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI wrappers for linux kernel functionality</td>
  <td style="width: 150px; word-wrap: break-word;">#include <rtapi_list.h></td>
  <td style="width: 200px; word-wrap: break-word;">In kernel space, each rtapi_xxx or RTAPI_XXX identifier is mapped to the underlying kernel functionality</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">223</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">128</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_module_param</td>
  <td style="width: 150px; word-wrap: break-word;">Specifying module parameters</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI_MP_INT(var, description)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">224-225</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">129</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_mutex</td>
  <td style="width: 150px; word-wrap: break-word;">Mutex-related functions</td>
  <td style="width: 150px; word-wrap: break-word;">#include <rtapi_mutex.h></td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">A pointer to the mutex</td>
  <td style="width: 200px; word-wrap: break-word;">226</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">130</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_open_as_root</td>
  <td style="width: 150px; word-wrap: break-word;">Open a file with "root" privilege</td>
  <td style="width: 150px; word-wrap: break-word;">#include <rtapi.h></td>
  <td style="width: 200px; word-wrap: break-word;">int rtapi_open_as_root(const char *filename, int flags)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">227</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">131</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_outb, rtapi_inb</td>
  <td style="width: 150px; word-wrap: break-word;">Perform hardware I/O</td>
  <td style="width: 150px; word-wrap: break-word;">void rtapi_outb(unsigned char byte, unsigned int port)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">byteThe byte to be written to the port</td>
  <td style="width: 200px; word-wrap: break-word;">228</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">132</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_parport</td>
  <td style="width: 150px; word-wrap: break-word;">portable access to PC-style parallel ports</td>
  <td style="width: 150px; word-wrap: break-word;">#include "rtapi_parport.h"</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">the name of the RTAPI module or HAL component using the parport.</td>
  <td style="width: 200px; word-wrap: break-word;">229</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">133</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_pci.h</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI wrappers for linux kernel functionality</td>
  <td style="width: 150px; word-wrap: break-word;">#include <rtapi_pci.h></td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">230</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">134</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_print, rtapi_print_msg</td>
  <td style="width: 150px; word-wrap: break-word;">print diagnostic messages</td>
  <td style="width: 150px; word-wrap: break-word;">void rtapi_print(const char *fmt, ...)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">231</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">135</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_prio</td>
  <td style="width: 150px; word-wrap: break-word;">thread priority functions</td>
  <td style="width: 150px; word-wrap: break-word;">int rtapi_prio_highest()</td>
  <td style="width: 200px; word-wrap: break-word;">int rtapi_prio_lowest()</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">232</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">136</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_region</td>
  <td style="width: 150px; word-wrap: break-word;">functions to manage I/O memory regions</td>
  <td style="width: 150px; word-wrap: break-word;">void *rtapi_request_region(unsigned long base, unsigned long int size, const char *name)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">233</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">137</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_get_msg_level, rtapi_set_msg_level</td>
  <td style="width: 150px; word-wrap: break-word;">Get or set the logging level</td>
  <td style="width: 150px; word-wrap: break-word;">int rtapi_set_msg_level(int level)</td>
  <td style="width: 200px; word-wrap: break-word;">int rtapi_get_msg_level()</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">234</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">138</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_shmem</td>
  <td style="width: 150px; word-wrap: break-word;">Functions for managing shared memory blocks</td>
  <td style="width: 150px; word-wrap: break-word;">int rtapi_shmem_new(int key, int module_id, unsigned long int size)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">235</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">139</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_slab.h</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI wrappers for linux kernel functionality</td>
  <td style="width: 150px; word-wrap: break-word;">#include <rtapi_slab.h></td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">236</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">140</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_snprintf, rtapi_vsnprintf</td>
  <td style="width: 150px; word-wrap: break-word;">Perform snprintf-like string formatting</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">237</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">141</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_stdint.h</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI wrappers for linux kernel functionality</td>
  <td style="width: 150px; word-wrap: break-word;">#include <rtapi_stdint.h></td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">238</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">142</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_string.h</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI wrappers for linux kernel functionality</td>
  <td style="width: 150px; word-wrap: break-word;">#include <rtapi_string.h></td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">239</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">143</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_strlcpy</td>
  <td style="width: 150px; word-wrap: break-word;">RTAPI string manipulation functions</td>
  <td style="width: 150px; word-wrap: break-word;">#include <rtapi_string.h></td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">240</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">144</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_task_new</td>
  <td style="width: 150px; word-wrap: break-word;">create a realtime task</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">241</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">145</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_task_pause, rtapi_task_resume </td>
  <td style="width: 150px; word-wrap: break-word;">pause and resume real-time tasks</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">242</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">146</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_task_self</td>
  <td style="width: 150px; word-wrap: break-word;">Retrieve ID of current task</td>
  <td style="width: 150px; word-wrap: break-word;">void rtapi_task_self()</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">rtapi_task_self retrieves the current task, or −EINVAL if not in a realtime task </td>
  <td style="width: 200px; word-wrap: break-word;">243</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">147</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_task_start</td>
  <td style="width: 150px; word-wrap: break-word;">start a realtime task in periodic mode</td>
  <td style="width: 150px; word-wrap: break-word;">int rtapi_task_start(int task_id, unsigned long period_nsec)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">244</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">148</td>
  <td style="width: 50px; word-wrap: break-word;">rtapi_task_wait</td>
  <td style="width: 150px; word-wrap: break-word;">suspend execution of this periodic task</td>
  <td style="width: 150px; word-wrap: break-word;">void rtapi_task_wait()</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">245</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">-</td>
  <td style="width: 50px; word-wrap: break-word;">loadrt Functions</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 150px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">149</td>
  <td style="width: 50px; word-wrap: break-word;">abs</td>
  <td style="width: 150px; word-wrap: break-word;">Compute the absolute value and sign of the input signal</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt abs [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">abs.N (requires a floating-point thread)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">247</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">150</td>
  <td style="width: 50px; word-wrap: break-word;">abs.N (requires a floating-point thread)</td>
  <td style="width: 150px; word-wrap: break-word;">Compute the absolute value and sign of the input signal</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt abs_s32 [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">abs-s32.N</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">2</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">151</td>
  <td style="width: 50px; word-wrap: break-word;">and2</td>
  <td style="width: 150px; word-wrap: break-word;">Two-input AND gate</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt and2 [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">and2.N</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">249</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">152</td>
  <td style="width: 50px; word-wrap: break-word;">at_pid</td>
  <td style="width: 150px; word-wrap: break-word;">proportional/integral/derivative controller with auto tuning</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt at_pid [num_chan=num | names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">250-253</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">153</td>
  <td style="width: 50px; word-wrap: break-word;">axistest</td>
  <td style="width: 150px; word-wrap: break-word;">Used to allow testing of an axis. Used IN PNCconf</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt axistest [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">254</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">154</td>
  <td style="width: 50px; word-wrap: break-word;">bin2gray</td>
  <td style="width: 150px; word-wrap: break-word;">convert a number to the gray-code representation</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt bin2gray [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">255</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">155</td>
  <td style="width: 50px; word-wrap: break-word;">biquad</td>
  <td style="width: 150px; word-wrap: break-word;">Biquad IIR filter</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt biquad [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">Biquad IIR filter. Implements the following transfer function: H(z) = (n0 + n1z-1 + n2z-2) / (1+ d1z-1 +
d2z-2)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">256-257</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">156</td>
  <td style="width: 50px; word-wrap: break-word;">bitslice</td>
  <td style="width: 150px; word-wrap: break-word;">Converts an unsigned-32 input into individual bits</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt bitslice [count=N|names=name1[,name2...]] [personality=P,P,...]</td>
  <td style="width: 200px; word-wrap: break-word;">This component creates individual bit-outputs for each bit of an unsigned-32 input. The number of bits can
be limited by the "personality" modparam. </td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">258</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">157</td>
  <td style="width: 50px; word-wrap: break-word;">bitwise</td>
  <td style="width: 150px; word-wrap: break-word;">Computes various bitwise operations on the two input values</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt bitwise [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">bitwise.N</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">259</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">158</td>
  <td style="width: 50px; word-wrap: break-word;">bldc</td>
  <td style="width: 150px; word-wrap: break-word;">BLDC and AC-servo control component</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt bldc cfg=qi6,aH</td>
  <td style="width: 200px; word-wrap: break-word;">This component is designed as an interface between the most common forms of three-phase motor feed-
back devices and the corresponding types of drive. However there is no requirement that the motor and
drive should necessarily be of inherently compatible types.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">260-266</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">159</td>
  <td style="width: 50px; word-wrap: break-word;">blend</td>
  <td style="width: 150px; word-wrap: break-word;">Perform linear interpolation between two values</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt blend [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">blend.N (requires a floating-point thread)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">267</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">160</td>
  <td style="width: 50px; word-wrap: break-word;">carousel</td>
  <td style="width: 150px; word-wrap: break-word;">Orient a toolchanger carousel using various encoding schemes</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt carousel pockets=N[,N] encoding=ssss[,sss] num_sense=N[,N] dir=N[,N]</td>
  <td style="width: 200px; word-wrap: break-word;">ininn</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">268-270</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">161</td>
  <td style="width: 50px; word-wrap: break-word;">charge_pump</td>
  <td style="width: 150px; word-wrap: break-word;">Create a square-wave for the ’charge pump’ input of some controller boards</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt charge_pump</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">271</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">162</td>
  <td style="width: 50px; word-wrap: break-word;">clarke2</td>
  <td style="width: 150px; word-wrap: break-word;">Two input version of Clarke transform</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt clarke2 [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">The Clarke transform can be used to translate a vector quantity from a three phase system (three compo-
nents 120 degrees apart) to a two phase Cartesian system.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">272</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">163</td>
  <td style="width: 50px; word-wrap: break-word;">clarke3</td>
  <td style="width: 150px; word-wrap: break-word;">Clarke (3 phase to cartesian) transform</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt clarke3 [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">273</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">164</td>
  <td style="width: 50px; word-wrap: break-word;">clarkeinv</td>
  <td style="width: 150px; word-wrap: break-word;">Inverse Clarke transform</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt clarkeinv [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">The inverse Clarke transform can be used rotate a vector quantity and then translate it from Cartesian coor-
dinate system to a three phase system (three components 120 degrees apart).</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">274</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">165</td>
  <td style="width: 50px; word-wrap: break-word;">classicladder</td>
  <td style="width: 150px; word-wrap: break-word;">realtime software plc based on ladder logic</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt classicladder_rt [numRungs=N] [numBits=N] [numWords=N] [numTimers=N] [numMonosta-
bles=N] [numCounters=N] [numPhysInputs=N] [numPhysOutputs=N] [numArithmExpr=N] [num-
Sections=N] [numSymbols=N] [numS32in=N] [numS32out=N] [numFloatIn=N] [numFloatOut=N]</td>
  <td style="width: 200px; word-wrap: break-word;">These pins and parameters are created by the realtime classicladder_rt module. Each period (minimum
1000000 ns), classicladder reads the inputs, evaluates the ladder logic defined in the GUI, and then writes
the outputs.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">275-276</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">166</td>
  <td style="width: 50px; word-wrap: break-word;">comp</td>
  <td style="width: 150px; word-wrap: break-word;">Two input comparator with hysteresis</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt comp [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">comp.N (requires a floating-point thread)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">277</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">167</td>
  <td style="width: 50px; word-wrap: break-word;">constant</td>
  <td style="width: 150px; word-wrap: break-word;">Use a parameter to set the value of a pin</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt constant [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">constant.N (requires a floating-point thread)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">278</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">168</td>
  <td style="width: 50px; word-wrap: break-word;">conv_bit_float</td>
  <td style="width: 150px; word-wrap: break-word;">Convert a value from bit to float</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt conv_bit_float [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">conv-bit-float.N (requires a floating-point thread)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">279</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">169</td>
  <td style="width: 50px; word-wrap: break-word;">conv_bit_s32</td>
  <td style="width: 150px; word-wrap: break-word;">Convert a value from bit to s32</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt conv_bit_s32 [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">conv-bit-s32.N</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">280</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">170</td>
  <td style="width: 50px; word-wrap: break-word;">conv_bit_u32</td>
  <td style="width: 150px; word-wrap: break-word;">Convert a value from bit to u32</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt conv_bit_u32 [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">conv-bit-u32.N</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">281</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">171</td>
  <td style="width: 50px; word-wrap: break-word;">conv_float_s32</td>
  <td style="width: 150px; word-wrap: break-word;">Convert a value from float to s32</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt conv_float_s32 [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">conv-float-s32.N (requires a floating-point thread)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">282</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">172</td>
  <td style="width: 50px; word-wrap: break-word;">conv_float_u32</td>
  <td style="width: 150px; word-wrap: break-word;">Convert a value from float to u32</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt conv_float_u32 [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">conv-float-u32.N (requires a floating-point thread)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">283</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">173</td>
  <td style="width: 50px; word-wrap: break-word;">conv_s32_bit</td>
  <td style="width: 150px; word-wrap: break-word;">Convert a value from s32 to bit</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt conv_s32_bit [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">conv-s32-bit.N</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">284</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">174</td>
  <td style="width: 50px; word-wrap: break-word;">conv_s32_float</td>
  <td style="width: 150px; word-wrap: break-word;">Convert a value from s32 to float</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt conv_s32_float [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">conv-s32-float.N (requires a floating-point thread)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">285</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">175</td>
  <td style="width: 50px; word-wrap: break-word;">conv_s32_u32</td>
  <td style="width: 150px; word-wrap: break-word;">Convert a value from s32 to u32</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt conv_s32_u32 [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">conv-s32-u32.N</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">286</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">176</td>
  <td style="width: 50px; word-wrap: break-word;">conv_u32_bit</td>
  <td style="width: 150px; word-wrap: break-word;">Convert a value from u32 to bit</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt conv_u32_bit [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">conv-u32-bit.N</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">287</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">177</td>
  <td style="width: 50px; word-wrap: break-word;">conv_u32_float</td>
  <td style="width: 150px; word-wrap: break-word;">Convert a value from u32 to float</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt conv_u32_float [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">conv-u32-float.N (requires a floating-point thread)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">288</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">178</td>
  <td style="width: 50px; word-wrap: break-word;">conv_u32_s32</td>
  <td style="width: 150px; word-wrap: break-word;">Convert a value from u32 to s32</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt conv_u32_s32 [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">conv-u32-s32.N</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">289</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">179</td>
  <td style="width: 50px; word-wrap: break-word;">corexy_by_hal</td>
  <td style="width: 150px; word-wrap: break-word;">CoreXY kinematics</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt corexy_by_hal [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">Implement CoreXY forward and inverse transformations in HAL. This component provides an alternative method for implementing CoreXY kinematics.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">290-291</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">180</td>
  <td style="width: 50px; word-wrap: break-word;">counter</td>
  <td style="width: 150px; word-wrap: break-word;">counts input pulses (DEPRECATED)</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt counter [num_chan=N]</td>
  <td style="width: 200px; word-wrap: break-word;">counter is a deprecated HAL component and will be removed in a future release. Use the encoder component with encoder.X.counter−mode set to TRUE.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">292</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">181</td>
  <td style="width: 50px; word-wrap: break-word;">dbounce</td>
  <td style="width: 150px; word-wrap: break-word;">alternative debounce component</td>
  <td style="width: 150px; word-wrap: break-word;">This component is similar to the debounce component (man debounce) but uses settable delay pins for each instance and supports count= or names= parameters</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">293</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">182</td>
  <td style="width: 50px; word-wrap: break-word;">ddt</td>
  <td style="width: 150px; word-wrap: break-word;">Compute the derivative of the input function</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt ddt [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">294</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">183</td>
  <td style="width: 50px; word-wrap: break-word;">deadzone</td>
  <td style="width: 150px; word-wrap: break-word;">Return the center if within the threshold</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt deadzone [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">deadzone.N (requires a floating-point thread)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">295</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">184</td>
  <td style="width: 50px; word-wrap: break-word;">debounce</td>
  <td style="width: 150px; word-wrap: break-word;">filter noisy digital inputs</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt debounce cfg=size[,size,...]</td>
  <td style="width: 200px; word-wrap: break-word;">Creates debounce groups with the number of filters specified by (size). Every filter in the same group has the same sample rate and delay. For example cfg=2,3 creates two filter groups with 2 filters in the first group and 3 filters in the second group.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">296</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">185</td>
  <td style="width: 50px; word-wrap: break-word;">demux</td>
  <td style="width: 150px; word-wrap: break-word;">Select one of several output pins by integer and/or or individual bits.</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt demux [count=N|names=name1[,name2...]] [personality=P,P,...]</td>
  <td style="width: 200px; word-wrap: break-word;">This component creates a number of output bits defined by the "personality" command-line parameter. </td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">297</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">186</td>
  <td style="width: 50px; word-wrap: break-word;">differential</td>
  <td style="width: 150px; word-wrap: break-word;">kinematics for a differential transmission</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt differential [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">differential.N (requires a floating-point thread)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">298</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">187</td>
  <td style="width: 50px; word-wrap: break-word;">edge</td>
  <td style="width: 150px; word-wrap: break-word;">Edge detector</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt edge [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">edge.N Produce output pulses from input edges</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">299</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">188</td>
  <td style="width: 50px; word-wrap: break-word;">encoder</td>
  <td style="width: 150px; word-wrap: break-word;">software counting of quadrature encoder signals</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt encoder [num_chan=num | names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">encoder is used to measure position by counting the pulses generated by a quadrature encoder.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">300-302</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">189</td>
  <td style="width: 50px; word-wrap: break-word;">encoder_ratio</td>
  <td style="width: 150px; word-wrap: break-word;">an electronic gear to synchronize two axes</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt encoder_ratio [num_chan=num | names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">encoder_ratio can be used to synchronize two axes (like an "electronic gear").</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">303-304</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">190</td>
  <td style="width: 50px; word-wrap: break-word;">eoffset_per_angle</td>
  <td style="width: 150px; word-wrap: break-word;">Compute External Offset Per Angle</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt eoffset_per_angle [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">An offset is computed (from one of several functions) based on an input angle in degrees. The angle could be a rotary coordinate value or a spindle angle.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">305-306</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">191</td>
  <td style="width: 50px; word-wrap: break-word;">estop_latch</td>
  <td style="width: 150px; word-wrap: break-word;">Software ESTOP latch</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt estop_latch [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">This component can be used as a part of a simple software ESTOP chain.</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">307</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">192</td>
  <td style="width: 50px; word-wrap: break-word;">feedcomp</td>
  <td style="width: 150px; word-wrap: break-word;">Multiply the input by the ratio of current velocity to the feed rate</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt feedcomp [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">feedcomp.N (requires a floating-point thread)</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">308</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">193</td>
  <td style="width: 50px; word-wrap: break-word;">flipflop</td>
  <td style="width: 150px; word-wrap: break-word;">D type flip-flop</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt flipflop [count=N|names=name1[,name2...]]</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">309</td>
</tr>
  <tr>
  <td style="width: 50px; word-wrap: break-word;">194</td>
  <td style="width: 50px; word-wrap: break-word;">gantry</td>
  <td style="width: 150px; word-wrap: break-word;">LinuxCNC HAL component for driving multiple joints from a single axis</td>
  <td style="width: 150px; word-wrap: break-word;">loadrt gantry [count=N|names=name1[,name2...]] [personality=P,P,...]</td>
  <td style="width: 200px; word-wrap: break-word;">Drives multiple physical motors (joints) from a single axis input</td>
  <td style="width: 200px; word-wrap: break-word;">-</td>
  <td style="width: 200px; word-wrap: break-word;">310-311</td>
</tr>



</table>



diff language tag to generate some colored text:

```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@```





Learnmore

https://github.com/multigcs/linuxcnc-web
http://wiki.linuxcnc.org/cgi-bin/wiki.pl?Rockhopper_Web_Server

https://forum.linuxcnc.org/38-general-linuxcnc-questions/45801-how-to-install-vnc-on-linuxcnc-2-9-with-qtplasmac

