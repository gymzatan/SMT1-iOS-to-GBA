@ECHO off
GOTO :MAIN

:: Functions
:printInstruction
ECHO "USAGE: SMT1_create.bat [path to original rom] [path to iOS rom]"
GOTO :exit

:applyroms
ECHO "Patching GBA rom"
bin\flips.exe --apply "SMT1_1_gba.bps" %orig% "SMT1_1_gba.gba"
ECHO "Patching iOS rom"
bin\flips.exe --apply "SMT1_1_ios.bps" %ios% "SMT1_1_ios.gba"
GOTO :combineroms

:combineroms
ECHO "Combining roms"
copy /b SMT1_1_gba.gba+SMT1_2_ios.gba SMT1_new.gba

GOTO :exit



:MAIN
SET orig=%1
SET ios=%2
SET bRun=1

ECHO "Recived values:"
ECHO "Orginal GBA ROM: %orig%"
ECHO "Orginal iOS ROM: %ios%"


ECHO "Testing accessibility to Original file"
IF NOT EXIST %orig% (
ECHO "File not found"
CALL :printInstruction
SET bRun=0
)

ECHO "Testing accessibility to iOS file"
IF NOT EXIST %ios% (
ECHO "File not found"
CALL :printInstruction
SET bRun=0
)

ECHO "Applying patchs"
IF %bRun%==1 (GOTO :applyroms)

:exit
echo "Exiting"
