REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Pr�fe ob Programm �ber Start.cmd gestartet wurde, wenn nicht starte es automatisch �ber Start.cmd.
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
    SET "comicNameInput=%comicNameInput:�=-%"
    SET "comicNameInput=%comicNameInput:'=-%"
    SET "comicNameInput=%comicNameInput:�=e%"
    SET "comicNameInput=%comicNameInput:�=e%"
    SET "comicNameInput=%comicNameInput:amp;=^&%"
    SET "comicNameInput=%comicNameInput:Ouml;=�%"
    SET "comicNameInput=%comicNameInput:Auml;=�%"
    SET "comicNameInput=%comicNameInput:Uuml;=�%"
    SET "comicNameInput=%comicNameInput:ouml;=�%"
    SET "comicNameInput=%comicNameInput:auml;=�%"
    SET "comicNameInput=%comicNameInput:uuml;=�%"
    SET "comicNameInput=%comicNameInput:szlig;=�%"


EXIT /B
    ::aktiviere ���
