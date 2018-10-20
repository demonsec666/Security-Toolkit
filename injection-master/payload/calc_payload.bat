@echo off
cl -c -nologo -Os -O2 -Gm- -GR- -EHa -Oi -GS- calc.c
link /order:@subclass.txt /entry:SubclassProc /base:0 calc.obj -subsystem:console -nodefaultlib -stack:0x100000,0x100000
xbin calc.exe .text
move calc.exe64.bin ..\calc64.bin
