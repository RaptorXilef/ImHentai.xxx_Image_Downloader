REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" ECHO. & ECHO DEBUG-Info: questions\AskAllRight.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

:REDO

  GOTO %chcpCodeNumber%
:chcp65001
      IF "%DEBUG%"=="DebugON" (CHCP 65001) ELSE (CHCP 65001>nul)
:chcp1252
    SET /p "all_right_input=------> %lang_AskAllRight_all_right_input%: "

    IF "%all_right_input%"=="j" GOTO continue
    IF "%all_right_input%"=="y" GOTO continue
    IF "%all_right_input%"=="n" COLOR 0C && ECHO. && ECHO. && ECHO %lang_AskAllRight_n% && pause && SET "errorRestart=errorRestartYES" && COLOR 08 && GOTO continue

GOTO REDO
:continue
EXIT /B
    ::aktiviere äöü
