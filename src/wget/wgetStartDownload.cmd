REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" ECHO. & ECHO DEBUG-Info: wget\wgetStartDownload.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################


REM Erstelle Comicordner für den Download
    IF "%DEBUG%"=="DebugON" (
        CLS
        ECHO.
        ECHO Erstelle Downloadordner
    )
    MD "%savePath_comic_folder%"
REM Starte Download mit WGet über 32 oder 64 bit
    CLS
    COLOR 0E
    IF EXIST "bin\ThirdPartySoftware\wget%PROCESSOR_ARCHITECTURE:~-2%.exe" "bin\ThirdPartySoftware\wget%PROCESSOR_ARCHITECTURE:~-2%.exe" -i "%dl_list_all%" -P "%savePath_comic_folder%"
    IF NOT EXIST "bin\ThirdPartySoftware\wget%PROCESSOR_ARCHITECTURE:~-2%.exe" "bin\ThirdPartySoftware\wget.exe" -i "%dl_list_all%" -P "%savePath_comic_folder%"

EXIT /B
    ::aktiviere äöü
