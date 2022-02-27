# BBC Micro  DeMiSTified - Atlas CYC1000 port

27/02/22 Atlas CYC1000 port DeMiSTified by Somhic from prior demistification for Neptuno by @neurorulez and @rampa069. Original MiST core https://github.com/mist-devel/beeb

Special thanks to Alastair M. Robinson creator of [DeMiSTify](https://github.com/robinsonb5/DeMiSTify) for helping me. 

[Read this guide if you want to know how I DeMiSTified this core](https://github.com/DECAfpga/DECA_board/tree/main/Tutorials/DeMiSTify).

**Features:**

* HDMI video output
* ~~VGA 222 video output is available through an HDMI to VGA adapter~~
* Sigma-Delta audio
* Joystick (**NOT** tested with a Megadrive gamepad)

**Additional hardware required**:

- PS/2 Keyboard 

##### Versions:

v0.3 cleared constraints

### STATUS

* HDMI video outputs special resolution so will not work on all monitors. 



### Instructions to compile the project for a specific board:

(Note that sof/rbf files are already included in /atlas_cyc/output_files/)

```sh
git clone https://github.com/somhi/BBC_DemiSTify
cd BBC_DemiSTify
#Do a first make (will finish in error) but it will download missing submodules 
make
cd DeMiSTify
#Create file site.mk in DeMiSTify folder 
cp site.template site.mk
#Edit site.mk and add your own PATHs to Quartus (Q18)
gedit site.mk
#Go back to root folder and do a make with board target (deca, neptuno, uareloaded, atlas_cyc, ...). If not specified it will compile for all targets.
cd ..
make BOARD=atlas_cyc
#when asked just accept default settings with Enter key
```

After that you can:

* Flash bitstream directly from [command line](https://github.com/DECAfpga/DECA_binaries#flash-bitstream-to-fgpa-with-quartus)
* Load project in Quartus from /atlas_cyc/BBC_DemiSTify_atlas_cyc.qpf

**Others:**

* User Button is a reset button

### OSD Controls

* F12 show/hide OSD 
* The reset button KEY0 resets the controller (so re-initialises the SD card if it's been changed, reloads any autoboot ROM.) The OSD Reset menu item resets the core itself.

