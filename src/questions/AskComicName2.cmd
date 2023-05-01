REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" ECHO. & ECHO DEBUG-Info: questions\AskComicName2.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################


  GOTO %chcpCodeNumber%
:chcp65001
      IF "%DEBUG%"=="DebugON" (CHCP 65001) else (CHCP 65001>nul)
:chcp1252
    SET "comicNameInput_temp=%comicNameInput%"
    SET /P "comicNameInput=------> Name: "

        IF "%comicNameInput%"=="1" SET "comicNameInput=%comicNameInput_temp%"
        IF "%comicNameInput%"=="2" SET "comicNameInput=%comicNameInput_temp% (%languageInput%)"
        IF "%comicNameInput%"=="3" SET "comicNameInput=[%artistInput%] %comicNameInput_temp%"
        IF "%comicNameInput%"=="4" SET "comicNameInput=[%artistInput%] %comicNameInput_temp% (%languageInput%)"

    :AntiSonderzeichenName
    ::Entferne Sonderzeichen aus dem eingegebenen String
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
    SET "comicName=%comicNameInput:è=e%"

    SET "comicName_=%comicName: =_%"
    ::SET "comicName_short=%comicName_:~0,99%"


EXIT /B
    ::aktiviere äöü
