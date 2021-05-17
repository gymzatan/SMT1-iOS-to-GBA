@ECHO off
SET orig=%1
SET ios=%2

ECHO Recived values:
ECHO Orginal GBA ROM: %orig%
ECHO Orginal iOS ROM: %ios%


ECHO Testing accessibility to Original file
IF NOT EXIST %orig% (
ECHO File not found
CALL :printInstruction
EXIT /B
)

ECHO Testing accessibility to iOS file
IF NOT EXIST %ios% (
ECHO File not found
CALL :printInstruction
EXIT /B
)

ECHO Cleaning old builds
GOTO clean

ECHO Applying patchs
GOTO :applyroms



:: Functions
:printInstruction
ECHO USAGE: SMT1_create.bat [path to original rom] [path to iOS rom]
EXIT /B

:clean
del SMT1_1_gba.gba
del SMT1_2_ios.gba
EXIT /B

:applyroms
ECHO Patching GBA rom
bin\beat.exe -apply -p "SMT1_1_gba.bps" -o "SMT1_1_gba.gba" %orig%
ECHO Patching iOS rom
bin\beat.exe -apply -p "SMT1_2_ios.bps" -o "SMT1_2_ios.gba" %ios%
GOTO :combineroms
EXIT /B

:combineroms
ECHO Combining roms
copy /b SMT1_1_gba.gba+SMT1_2_ios.gba SMT1_new.gba
ECHO Roms patched succefully
EXIT /B
