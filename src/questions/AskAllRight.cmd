REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" ECHO. & ECHO DEBUG-Info: questions\AskAllRight.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

:REDO

  goto %chcpCodeNumber%
  :chcp65001
      IF "%DEBUG%"=="DebugON" (CHCP 65001) else (CHCP 65001>nul)
  :chcp1252
    set /p "all_right_input=------> Download starten: "

    IF "%all_right_input%"=="j" goto continue
    IF "%all_right_input%"=="y" goto continue
    IF "%all_right_input%"=="n" color 0c && echo. && echo. && echo Mit dem Klick auf [Enter] werden alle Eingaben gelöscht und Sie können die richtigen Daten angeben. && pause && set "errorRestart=errorRestartYES" && GOTO continue

GOTO REDO
:continue
EXIT /B
    ::aktiviere äöü
