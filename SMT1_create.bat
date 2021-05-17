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

ECHO Applying patchs
GOTO :applyroms

:: Functions
:printInstruction
ECHO USAGE: SMT1_create.bat [path to original rom] [path to iOS rom]
EXIT /B

:applyroms
ECHO Patching GBA rom
bin\flips.exe --apply "SMT1_1_gba.bps" %orig% "SMT1_1_gba.gba"
ECHO Patching iOS rom
bin\flips.exe --apply "SMT1_1_ios.bps" %ios% "SMT1_1_ios.gba"
GOTO :combineroms
EXIT /B

:combineroms
ECHO Combining roms
copy /b SMT1_1_gba.gba+SMT1_2_ios.gba SMT1_new.gba
ECHO Roms patched succefully
EXIT /B
