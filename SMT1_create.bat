@echo off
GOTO :MAIN

:: Functions
:printInstruction
set a=1
echo usage: SMT1_create.bat [path to original rom] [path to iOS rom]
goto :EOF

:applyroms
bin/flips.exe --apply "SMT1_1_gba.bps" %orig% "SMT1_1_gba.gba"
bin/flips.exe --apply "SMT1_1_ios.bps" %ios% "SMT1_1_ios.gba"
goto :combineroms

:combineroms
copy /b SMT1_1_gba.gba+SMT1_2_ios.gba SMT1_new.gba

goto :EOF



:MAIN
set orig=%1
set ios=%2

echo %orig%
echo %ios%


echo "orig - %orig%; ios = %ios%"

if not exist %orig% (
echo "File not found"
call :printInstruction
)

if not exist %ios% (
echo "File not found"
call :printInstruction
)

IF a==1 (goto :applyroms)

