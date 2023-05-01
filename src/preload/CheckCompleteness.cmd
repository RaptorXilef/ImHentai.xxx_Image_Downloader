REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: preload\CheckCompleteness.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

REM Initialisiere Variable für Dateinamen
set CheckFileName=

REM Dieser Code verwendet eine for-Schleife, die xx mal ausgeführt wird. Bei jedem Durchgang wird der Inhalt der Variablen %CheckFileName% geändert
for /l %%i in (1,1,20) do (
    if %%i==1 set "CheckFileName=src\preload\VariablesReset.cmd"
    if %%i==2 set "CheckFileName=src\preload\CurrentVersion.txt"
    if %%i==3 set "CheckFileName=bin\ThirdPartySoftware\cECHO.exe"
    if %%i==4 set "CheckFileName=src\preload\TimeQuery.cmd"
    if %%i==5 set "CheckFileName=src\ConsoleOutputMenus.cmd"
    if %%i==6 set "CheckFileName=src\presets\LanguageLoadOrCreateConfigfile.cmd"
    if %%i==7 set "CheckFileName=src\translations\de.cmd"
    if %%i==8 set "CheckFileName=src\translations\en.cmd"
    if %%i==9 set "CheckFileName=src\presets\SavePathLoadOrCreateConfigfile.cmd"
    if %%i==10 set "CheckFileName=src\data-query\UrlNumberFilter.cmd"
    if %%i==11 set "CheckFileName=src\data-query\ReadingDataFromURL.cmd"
    if %%i==12 set "CheckFileName=src\questions\AskDownloadFolder.cmd"
    if %%i==13 set "CheckFileName=src\questions\AskPages.cmd"
    if %%i==14 set "CheckFileName=src\questions\AskPagesRenewLoad.cmd"
    if %%i==15 set "CheckFileName=src\questions\AskPagesRenew.cmd"
    if %%i==16 set "CheckFileName=src\questions\AskComicName1.cmd"
    if %%i==17 set "CheckFileName=src\questions\AskComicName2.cmd"
    if %%i==18 set "CheckFileName=src\questions\AskAllRight.cmd"
    if %%i==19 set "CheckFileName=src\questions\AskAllRightRenew.cmd"
    REM if %%i==20 set "CheckFileName="
    REM if %%i==21 set "CheckFileName="
    IF "%DEBUG%"=="DebugON" ECHO DEBUG-Info: Test: !CheckFileName! & CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL

  REM Test if %CheckFileName% exists
  REM Teste, ob %CheckFileName% existiert
    IF NOT EXIST "!CheckFileName!" (
        CLS & COLOR 0C
        ECHO Fatal ERROR by loading "src\!CheckFileName!", file do not exist or has been corrupted & ECHO Downloads the missing file or the latest version of the software from: & ECHO https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
        START https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader/blob/main/!CheckFileName!
        PAUSE & EXIT
    )
)

EXIT /B
