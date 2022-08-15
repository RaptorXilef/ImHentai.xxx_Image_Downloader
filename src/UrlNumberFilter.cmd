:ReloadUserInput
REM Query the URL and wait for user input
REM Frage die URL ab und warte auf eine Benutzereingabe
    SET /p "mainUrlInput=------> URL: "
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
          ECHO "%mainUrlInput%" %outputUrlNumberFilter1%!
          ECHO %outputUrlNumberFilter2%
          PAUSE
          SET "outputMenu=OutputMenuMainUrl"
          CALL "src\ConsoleOutputMenus.cmd"
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


REM If strlen less than 6, complete string (old site support)
REM Wenn strlen kleiner 6, vervollständige String (Support der alten Seiten)
      IF %strlen% EQU 5 SET "comicId=0%comicId%"
      IF %strlen% EQU 4 SET "comicId=00%comicId%"
      IF %strlen% EQU 3 SET "comicId=000%comicId%"
      IF %strlen% EQU 2 SET "comicId=0000%comicId%"
      IF %strlen% EQU 1 SET "comicId=00000%comicId%"


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
          IF "%DEBUG%"=="DebugON" (ECHO. & ECHO. & ECHO DEBUG: strlen: "%strlen%")


REM Checking whether the determined comic ID is in the searched area
REM Prüfung, ob die ermittelte Comic-ID im gesuchten Bereich liegt
      SET /a "comicIdTemp=%comicId%"
          IF "%DEBUG%"=="DebugON" (ECHO. & ECHO DEBUG: comicIdTemp= "%comicIdTemp%" & ECHO DEBUG: comicId= "%comicId%")

      IF %strlen% EQU 6 IF %comicIdTemp% GEQ 1 IF %comicIdTemp% LEQ 999999 GOTO continue
      ECHO.
      ECHO.
      ECHO.
      color 0c
      ECHO %outputUrlNumberFilter3%!
      ECHO %outputUrlNumberFilter4%.
      PAUSE
      SET "outputMenu=OutputMenuMainUrl"
      CALL "src\ConsoleOutputMenus.cmd"
      GOTO ReloadUserInput
      EXIT


  :continue
      ECHO.
      ECHO.
      ECHO.
      %colorEcho% {0A} %outputUrlNumberFilter5%.{\n}{#}
      SET "mainUrl=https://imhentai.xxx/gallery/%comicId%/"
          IF "%DEBUG%"=="DebugON" (ECHO. & ECHO DEBUG: mainUrl= "%mainUrl%")
          CHOICE /N /C 123 /T 1 /D 1 >NUL
      ::aktiviere äöü
