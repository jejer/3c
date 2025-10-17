BIOS:
IDE Operate Mode: Legacy Mode
ACPI: keep it enabled
PCI: Plug & Play O/S: Yes
     Allocate IRQ to PCI VGA No
Recover from a bad bios config, e.g. disabled vga or disabled usb: 
create a dos boot disk, add bios.exe, bios.sav in root folder, add "bios r" in autoexec.bat.

MBR: plop boot manager: https://www.plop.at/en/bootmanager/index.html

dos audio: https://github.com/crazii/SBEMU
win98 audio: https://github.com/andrew-hoffman/WDMHDA

Hard Drive prepare: 
boot with freedos full image usb.
paritition disks:
1. 256M primary dos fat16 for freedos
2. 1024M primary dos fat16 for msdos + win 3.x + win95
3. 2048M primary fat32 LBA for win98
4. all others primary ntfs for xp

install freedos on 1st partition.
install plop mbr, clear other partitions for every partition.

primary partition 1: freedos 256MB
Install with freedos full image and rufus

primary partition 2: msdos and win3.11 256MB

primary partition 3: msdos and win3.11 and win95 1024MB
use ms-dos 6.22 to format to fat16 and sys the partition for booting
Windows 95 OSR 2:
34698-OEM-0039682-72135
copy iso files to c:\win95 to install
change BootGUI=0;BootMenu=1;BootMenuDefault=1;BootMenuDelay=10 in c:\msdos.sys after install. attrib +r +s +h msdos.sys
install win95 before win3.x and run lock before install win3.x
boot previous dos version made:
io.sys
msdos.sys
command.com

if win95 fail to boot after install, set disk mode to legacy in bios.
Do NOT boot previous dos version, win95 has bug, the partition boot record couldn't boot dos 6.22.


primary partition 4: win98
use ms-dos 7.1 to format to fat32 with LBA and sys the partition for booting
Windows 98 SE:
WHWGP-XDR8Y-GR9X3-863RP-67J2T
Partition Type: must be 0Ch FAT32 with LBA
copy iso files to c:\win98 to install
fix stuck at preparing 100%: use FAT32 with LBA partition type.

A dedicated 16G sdcard for windows xp sp3
SP3 VOL. M6TF9-8XQ2M-YQK9F-7TBB2-XGG88
bios: failsafe default, make sure clear bios password before save! Set IDE in Native mode.


Win98 se Audio driver install(verified by jejer) :
Instructions (Windows 95/98):
1. Download Watlers' driver HDADRV9J.zip
2. Place HDA2.DLL in C:\WINDOWS\System
3. Make sure HDATSR.EXE and WAVEOUT.EXE are accessible (place in "C:\WINDOWS" for convenience)
5. Add line "HDATSR.EXE" to AUTOEXEC.BAT (without quotes)
6. Add to SYSTEM.INI,[Drivers﻿] "WAVEHDA=HDA2﻿﻿.DLL" (without quotes)
7. Reboot

If there is no sound, try my quasi-universal version of  HDAICOUT.HDA (found in DaveH's tread) and place in  C:\WINDOWS and reboot.

If there is sound but system is unstable try in SYSTEM.INI,
[Vcache]
﻿MinFileCache=1024﻿
﻿MaxFileCache=1024
+ you can speed-up﻿﻿﻿﻿﻿ your system by adding line "SMARTDRV.EXE" to AUTOEXEC.BAT (without quotes). Always reboot in between.


---- official drivers:
Win XP & XPe	File
﻿﻿EBOX-3350DX2 Series VGA driver 	m2012_r8
﻿EBOX-3350DX2 Series Audio driver (Win XP)	alc262_xpdriver_04202011
﻿EBOX-3350DX2 Series Audio driver (XPe)	xpe_hda.zip
﻿EBOX-3350DX2 Series LAN  driver 	ethernet_2012_04
﻿EBOX-3350DX2 Series ﻿Wireless LAN﻿ driver	rtl8188su (for DMP USB WLAN dongle only)﻿
Windows 2000 pro + SP4	File
﻿EBOX-3350DX2 Series VGA driver	m2012_r8 ﻿
Linux	File
VGA driver zipped with a must read configuration file name: xorg.conf 	m2012_r0.0.11 ﻿
﻿EBOX-3350DX2 ﻿Wireless LAN﻿ driver 	rtl8188_8192 (for DMP USB WLAN dongle only)﻿
﻿Please use above ﻿Wireless LAN﻿ driver if Linux OS fail to detect and install WLAN driver automatically. 