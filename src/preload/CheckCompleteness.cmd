REM Check whether the programme was started via Start.cmd, IF not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: preload\CheckCompleteness.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

REM Initialisiere Variable für Dateinamen
SET CheckFileName=

REM Dieser Code verwendet eine for-Schleife, die xx mal ausgeführt wird. Bei jedem Durchgang wird der Inhalt der Variablen %CheckFileName% geändert
for /l %%i in (1,1,24) do (
    IF %%i==1 SET "CheckFileName=src\preload\VariablesReset.cmd"
    IF %%i==2 SET "CheckFileName=src\preload\CurrentVersion.txt"
    IF %%i==3 SET "CheckFileName=bin\ThirdPartySoftware\cECHO.exe"
    IF %%i==4 SET "CheckFileName=src\preload\TimeQuery.cmd"
    IF %%i==5 SET "CheckFileName=src\ConsoleOutputMenus.cmd"
    IF %%i==6 SET "CheckFileName=src\presets\LanguageLoadOrCreateConfigfile.cmd"
    IF %%i==7 SET "CheckFileName=src\translations\de.cmd"
    IF %%i==8 SET "CheckFileName=src\translations\en.cmd"
    IF %%i==9 SET "CheckFileName=src\presets\SavePathLoadOrCreateConfigfile.cmd"
    IF %%i==10 SET "CheckFileName=src\data-query\UrlNumberFilter.cmd"
    IF %%i==11 SET "CheckFileName=src\data-query\ReadingDataFromURL.cmd"
    IF %%i==12 SET "CheckFileName=src\questions\AskDownloadFolder.cmd"
    IF %%i==13 SET "CheckFileName=src\questions\AskPages.cmd"
    IF %%i==14 SET "CheckFileName=src\questions\AskPagesRenewLoad.cmd"
    IF %%i==15 SET "CheckFileName=src\questions\AskPagesRenew.cmd"
    IF %%i==16 SET "CheckFileName=src\questions\AskComicName1.cmd"
    IF %%i==17 SET "CheckFileName=src\questions\AskComicName2.cmd"
    IF %%i==18 SET "CheckFileName=src\questions\AskAllRight.cmd"
    IF %%i==19 SET "CheckFileName=src\questions\AskAllRightRenew.cmd"
    IF %%i==20 SET "CheckFileName=src\wget\wgetDownloadLists.cmd"
    IF %%i==21 SET "CheckFileName=src\refinishing\RenameToPageNumber.cmd"
    IF %%i==22 SET "CheckFileName=src\refinishing\WebLinkCreate.cmd"
    IF %%i==23 SET "CheckFileName=src\refinishing\SaveVarToDatabase.cmd"
    IF %%i==24 SET "CheckFileName=src\refinishing\7zrStart.cmd"
    IF %%i==24 SET "CheckFileName=bin\ThirdPartySoftware\7zr.exe"
    IF %%i==24 SET "CheckFileName=bin\ThirdPartySoftware\cecho.exe"
    IF %%i==24 SET "CheckFileName=bin\ThirdPartySoftware\cecho_bin.zip"
    IF %%i==24 SET "CheckFileName=bin\ThirdPartySoftware\cecho32.exe"
    IF %%i==24 SET "CheckFileName=bin\ThirdPartySoftware\cecho64.exe"
    IF %%i==24 SET "CheckFileName=bin\ThirdPartySoftware\wget.exe"
    IF %%i==24 SET "CheckFileName=bin\ThirdPartySoftware\wget32.exe"
    IF %%i==24 SET "CheckFileName=bin\ThirdPartySoftware\wget64.exe"

  REM Test IF %CheckFileName% exists
  REM Teste, ob %CheckFileName% existiert
    IF EXIST "!CheckFileName!" (
        IF "%DEBUG%"=="DebugON" ECHO DEBUG-Info: Test erfolgreich, !CheckFileName! existiert & CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
    ) ELSE (
        CLS & COLOR 0C
        ECHO Fatal ERROR by loading "src\!CheckFileName!", file do not exist or has been corrupted & ECHO Downloads the missing file or the latest version of the software from: & ECHO https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
        START https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader/blob/main/!CheckFileName!
        PAUSE & EXIT
    )
)

SET check=1
EXIT /B
