REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" ECHO. & ECHO DEBUG-Info: questions\AskComicName1.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

goto %chcpCodeNumber%
:chcp65001
    IF "%DEBUG%"=="DebugON" (CHCP 65001) else (CHCP 65001>nul)
:chcp1252
::Entferne Sonderzeichen aus dem eingegebenen String der von der Webseite kommt
    set "comicNameInput=%comicNameInput:|=-%"
    set "comicNameInput=%comicNameInput:<=%"
    set "comicNameInput=%comicNameInput:>=%"
    set "comicNameInput=%comicNameInput:&=%"
    set "comicNameInput=%comicNameInput:^=%"
    set "comicNameInput=%comicNameInput:"=%"
    set "comicNameInput=%comicNameInput:?=%"
    set "comicNameInput=%comicNameInput::=%"
    set "comicNameInput=%comicNameInput:/=%"
    set "comicNameInput=%comicNameInput:\=%"
    set "comicNameInput=%comicNameInput:!=%"
    set "comicNameInput=%comicNameInput:?=%"
    set "comicNameInput=%comicNameInput:.=%"
    set "comicNameInput=%comicNameInput:´=-%"
    set "comicNameInput=%comicNameInput:'=-%"
    set "comicNameInput=%comicNameInput:é=e%"
    set "comicNameInput=%comicNameInput:è=e%"
    set "comicNameInput=%comicNameInput:amp;=^&%"
    set "comicNameInput=%comicNameInput:Ouml;=Ö%"
    set "comicNameInput=%comicNameInput:Auml;=Ä%"
    set "comicNameInput=%comicNameInput:Uuml;=Ü%"
    set "comicNameInput=%comicNameInput:ouml;=ö%"
    set "comicNameInput=%comicNameInput:auml;=ä%"
    set "comicNameInput=%comicNameInput:uuml;=ü%"
    set "comicNameInput=%comicNameInput:szlig;=ß%"


EXIT /B
    ::aktiviere äöü
