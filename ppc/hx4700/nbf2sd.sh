#!/bin/sh
wget -c ftp://ftp.compaq.com/pub/softpaq/sp29501-30000/SP29841.exe
cabextract SP29841.exe -F *.nbf
dd if=hx4700_11008_ENG_RC_AKU26.nbf of=raw_rom bs=264744 skip=1 > /dev/null
ROM=hx4700-wince-1.10.rom
# ---- WARNING ----
# !!! Be careful when copy-pasting this !!!
# Each of these echo's should have exactly
# 16 characters. Some mail clients strip
# extra spaces
echo -n "ROADSTER        " > $ROM
echo -n "0000000000000000" >> $ROM
echo -n "1.01            " >> $ROM
# ----------------------------------------
echo -ne "\xe8\x96\xf0\x4c" >> $ROM
head -c 72 /dev/zero >> $ROM
echo -ne "\x1b\xec\x97\x86" >> $ROM
head -c 256 /dev/zero >> $ROM
echo -n "HTCSA004000007FC" >> $ROM
echo -n "00004CF096E8" >> $ROM
cat raw_rom >> $ROM
echo -n "HTCE" >> $ROM
rm hx4700_11008_ENG_RC_AKU26.nbf raw_rom