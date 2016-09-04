echo off
SET CC65_HOME=D:\Development\projects\nes\cc65-snapshot-win32
%CC65_HOME%\bin\cl65 -L %CC65_HOME%\lib -t nes -I %CC65_HOME%\include D:\Development\projects\nes\hello-world.c -o D:\Development\projects\nes\hello-world.nes
