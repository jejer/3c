# SD flash
Facts:  
official rom format: nbf  
flash tool rom format: nb0  
raw rom format: part of nbf/nb0  
  
sd flash image = fixed header + raw rom + end
```
0x00000000 - ROADSTER
...
0x00000180 - HTCSA004000007FC
...
0x0000019C - 0xFE 0x03 (start of raw rom)
...
0x000001DC - ECEC
...
0x07F8019B - 0x00 (end of raw rom)
0x07F8019C - HTCE
```

Important notes about sd flash:
- use a standard SD card, not SDHC or any advanced card.
- Enter the PDA into the bootloader - simultaneously press the contacts + itask + reset buttons with the stylus and wait at this position for 10 seconds, hold 5 more seconds after "serial" displayed.
- Wait until "SD Download" displayed. Be patient. There will not be any indicator on screen to show the SD reading is inprogress. It takes about 3mins on my device.

# Hard Reset
```
1.HP 4700 + WM2003SE
  1. We simultaneously hold the buttons "iTask" and "Calendar" + press "Reset".
  2. It is necessary to hold the combination until the screen goes out completely, but not less than 5 seconds.
  3. After releasing the buttons on the front panel, briefly press the “Reset” button again.
2.HP 4700 + WM5 (also relevant for WM6) -
  XP is done by pressing the button 2 (contacts) + buttons 3 (mail) + reset, then we confirm the desire to make XP button 1 (calendar)
```