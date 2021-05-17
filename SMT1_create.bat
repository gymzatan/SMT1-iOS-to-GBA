@ECHO off
GOTO :MAIN

:: Functions
:printInstruction
ECHO usage: SMT1_create.bat [path to original rom] [path to iOS rom]
GOTO :EOF

:applyroms
bin\flips.exe --apply "SMT1_1_gba.bps" %orig% "SMT1_1_gba.gba"
bin\flips.exe --apply "SMT1_1_ios.bps" %ios% "SMT1_1_ios.gba"
GOTO :combineroms

:combineroms
copy /b SMT1_1_gba.gba+SMT1_2_ios.gba SMT1_new.gba

GOTO :EOF



:MAIN
SET orig=%1
SET ios=%2
SET a=1

ECHO %orig%
ECHO %ios%


ECHO "orig - %orig%; ios = %ios%"

IF NOT EXIST %orig% (
ECHO "File not found"
CALL :printInstruction
SET a=0
)

IF NOT EXIST %ios% (
ECHO "File not found"
CALL :printInstruction
SET a=0
)

IF %a%==1 (GOTO :applyroms)
