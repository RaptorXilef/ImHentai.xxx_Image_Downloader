REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" ECHO. & ECHO DEBUG-Info: questions\AskComicName1.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

GOTO %chcpCodeNumber%
:chcp65001
    IF "%DEBUG%"=="DebugON" (CHCP 65001) ELSE (CHCP 65001>nul)
:chcp1252
::Entferne Sonderzeichen aus dem eingegebenen String der von der Webseite kommt
    SET "comicNameInput=%comicNameInput:|=-%"
    SET "comicNameInput=%comicNameInput:<=%"
    SET "comicNameInput=%comicNameInput:>=%"
    SET "comicNameInput=%comicNameInput:&=%"
    SET "comicNameInput=%comicNameInput:^=%"
    SET "comicNameInput=%comicNameInput:"=%"
    SET "comicNameInput=%comicNameInput:?=%"
    SET "comicNameInput=%comicNameInput::=%"
    SET "comicNameInput=%comicNameInput:/=%"
    SET "comicNameInput=%comicNameInput:\=%"
    SET "comicNameInput=%comicNameInput:!=%"
    SET "comicNameInput=%comicNameInput:?=%"
    SET "comicNameInput=%comicNameInput:.=%"
    SET "comicNameInput=%comicNameInput:´=-%"
    SET "comicNameInput=%comicNameInput:'=-%"
    SET "comicNameInput=%comicNameInput:é=e%"
    SET "comicNameInput=%comicNameInput:è=e%"
    SET "comicNameInput=%comicNameInput:amp;=^&%"
    SET "comicNameInput=%comicNameInput:Ouml;=Ö%"
    SET "comicNameInput=%comicNameInput:Auml;=Ä%"
    SET "comicNameInput=%comicNameInput:Uuml;=Ü%"
    SET "comicNameInput=%comicNameInput:ouml;=ö%"
    SET "comicNameInput=%comicNameInput:auml;=ä%"
    SET "comicNameInput=%comicNameInput:uuml;=ü%"
    SET "comicNameInput=%comicNameInput:szlig;=ß%"


EXIT /B
    ::aktiviere äöü
