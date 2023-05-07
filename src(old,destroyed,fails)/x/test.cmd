@echo off



SETLOCAL ENABLEDELAYEDEXPANSION
for /l %%i in (1,1,10) do (
    if %%i==1 set CheckFileName=src\preload\VariablesReset.cmd
    if %%i==2 set CheckFileName=src\preload\CurrentVersion.txt
    if %%i==3 set CheckFileName=bin\ThirdPartySoftware\cECHO.exe
    if %%i==4 set CheckFileName=src\preload\TimeQuery.cmd
    if %%i==5 set CheckFileName=src\ConsoleOutputMenus.cmd
    if %%i==6 set CheckFileName=src\presets\LanguageLoadOrCreateConfigfile.cmd
    if %%i==7 set CheckFileName=src\translations\%countrycode%.cmd
    if %%i==8 set CheckFileName=änderndem
    if %%i==9 set CheckFileName=variablen
    if %%i==10 set CheckFileName=Inhalt.
    Echo !CheckFileName!
)
PAUSE














SETLOCAL ENABLEDELAYEDEXPANSION
SET errorRestart=errorRestartYES

:R
SET AAAAA=IF "!errorRestart!"=="errorRestartYES" GOTO errorRestartYES
ECHO %AAAAA%
%AAAAA%
PAUSE
GOTO R

:errorRestartYES
ECHO JEAHHHHH
PAUSE
GOTO R

















EXIT
:GGGG

SET "TEST=ECHO HALLO WELT"
PAUSE
%TEST%
PAUSE
SET "T=H"
ECHO %T%
SET "G=IF %T%==H B GOTO GGGG"
SET "G=IF %T%==H GOTO GGGG"
PAUSE
ECHO %G%
%G%

PAUSE

EXIT