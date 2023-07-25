REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" ECHO. & ECHO DEBUG-Info: data-query\UrlNumberFilter.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

:ReloadUserInput
REM Query the URL and wait for user input
REM Frage die URL ab und warte auf eine Benutzereingabe
    SET /p "mainUrlInput=------> !lang_UrlNumberFilter_mainUrlInput!: "
REM Remove all parts of the URL except comic ID
REM Entferne alle Bestandteile der URL außer der Comic-ID
      SET "mainUrlInputRemove=%mainUrlInput:h=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:t=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:p=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:s=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove::=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:/=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:i=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:m=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:e=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:n=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:t=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:a=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:.=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:x=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:g=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:l=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:r=%"
      SET "mainUrlInputRemove=%mainUrlInputRemove:y=%"
      SET "comicIdTest=%mainUrlInputRemove: =%"
REM Repeat the prompt if input is not a number or a valid URL.
REM Wiederhole die Eingabeaufforderung, wenn die Eingabe keine Zahl oder gültige URL ist.

        SET /a "comicIdTest2=%comicIdTest%+0
        IF %comicIdTest% NEQ %comicIdTest2% (
          ECHO "%mainUrlInput%" %lang_UrlNumberFilter_1%!
          ECHO %lang_UrlNumberFilter_2%
          PAUSE
          SET "outputMenu=OutputMenuMainUrl"
          CALL "src\ConsoleOutputMenus.cmd" 1 & IF "!errorRestart!"=="errorRestartYES" GOTO errorRestartYES
          GOTO ReloadUserInput
        )
      SET "comicId=%comicIdTest%"


REM ######################################################################################################################################
REM Check whether the comic ID determined has 6 digits (Code-part by https://www.geeksforgeeks.org/batch-script-string-length/)
REM Prüfung, ob die ermittelte Comic-ID 6 Stellen hat (Code-part by https://www.geeksforgeeks.org/batch-script-string-length/)
          SET str=%comicId%
          call :strLen str strlen
          GOTO continue
          :strLen
          SETlocal enabledelayedexpansion
          :strLen_Loop
             IF not "!%1:~%len%!"=="" SET /A len+=1 & GOTO :strLen_Loop
          (endlocal & SET %2=%len%)
          GOTO :eof
REM ######################################################################################################################################
:continue
      SET /a "strlen=%strlen%"
          ::ECHO %strlen%


REM If strlen less than 7, complete string (old site support)
REM Wenn strlen kleiner 7, vervollständige String (Support der alten Seiten)
      IF %strlen% EQU 6 SET "comicId=0%comicId%"
      IF %strlen% EQU 5 SET "comicId=00%comicId%"
      IF %strlen% EQU 4 SET "comicId=000%comicId%"
      IF %strlen% EQU 3 SET "comicId=0000%comicId%"
      IF %strlen% EQU 2 SET "comicId=00000%comicId%"
      IF %strlen% EQU 1 SET "comicId=000000%comicId%"


REM ######################################################################################################################################
REM Check whether the comic ID determined has 6 digits (Code-part by https://www.geeksforgeeks.org/batch-script-string-length/)
REM Prüfung, ob die ermittelte Comic-ID 6 Stellen hat (Code-part by https://www.geeksforgeeks.org/batch-script-string-length/)
          SET str=%comicId%
          call :strLen str strlen
          GOTO continue
          :strLen
          SETlocal enabledelayedexpansion
          :strLen_Loop
             IF not "!%1:~%len%!"=="" SET /A len+=1 & GOTO :strLen_Loop
          (endlocal & SET %2=%len%)
          GOTO :eof
REM ######################################################################################################################################

  :continue
      SET /a "strlen=%strlen%"
          IF "%DEBUG%"=="DebugON" (ECHO. & ECHO. & ECHO DEBUG-Info: strlen: "%strlen%")


REM Checking whether the determined comic ID is in the searched area
REM Prüfung, ob die ermittelte Comic-ID im gesuchten Bereich liegt
      SET /a "comicIdTemp=%comicId%"
          IF "%DEBUG%"=="DebugON" (ECHO. & ECHO DEBUG-Info: comicIdTemp= "%comicIdTemp%" & ECHO DEBUG-Info: comicId= "%comicId%")

      IF %strlen% EQU 7 IF %comicIdTemp% GEQ 1 IF %comicIdTemp% LEQ 9999999 GOTO continue
      ECHO.
      ECHO.
      ECHO.
      color 0c
      ECHO %lang_UrlNumberFilter_3%!
      ECHO %lang_UrlNumberFilter_4%.
      PAUSE
      ::SET "outputMenu=OutputMenuMainUrl"
      ::CALL "src\ConsoleOutputMenus.cmd"
      ::GOTO ReloadUserInput
      ::EXIT
      SET "errorRestart=errorRestartYES"
      EXIT /B


  :continue
      ECHO.
      ECHO.
      ECHO.
      %colorEcho% {0A} %lang_UrlNumberFilter_5%.{\n}{#}
      SET "mainUrl=https://imhentai.xxx/gallery/%comicId%/"
          IF "%DEBUG%"=="DebugON" (ECHO. & ECHO DEBUG-Info: mainUrl= "%mainUrl%")
          CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
      ::aktiviere äöü
EXIT /B
