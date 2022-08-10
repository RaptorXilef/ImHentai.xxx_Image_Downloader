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
      SET "ComicId=%mainUrlInputRemove: =%"
REM Check whether the comic ID determined has 6 digits
REM Prüfung, ob die ermittelte Comic-ID 6 Stellen hat
          SET str=%ComicId%
          call :strLen str strlen
          goto continue
          :strLen
          SETlocal enabledelayedexpansion
          :strLen_Loop
             IF not "!%1:~%len%!"=="" SET /A len+=1 & goto :strLen_Loop
          (endlocal & SET %2=%len%)
          goto :eof
:continue
      SET /a "strlen=%strlen%"
          ::echo %strlen%


  ::Wenn strlen kleiner 6, vervollständige String (Support der alten Seiten)
      IF %strlen% EQU 5 SET "ComicId=0%ComicId%"
      IF %strlen% EQU 4 SET "ComicId=00%ComicId%"
      IF %strlen% EQU 3 SET "ComicId=000%ComicId%"
      IF %strlen% EQU 2 SET "ComicId=0000%ComicId%"
      IF %strlen% EQU 1 SET "ComicId=00000%ComicId%"


      ::######################################################################################################################################
      ::Prüfung ob die ermittelte Comic ID 6 Stellen hat (Code-part by https://www.geeksforgeeks.org/batch-script-string-length/)
          SET str=%ComicId%
          call :strLen str strlen
          ::echo String is %strlen% characters long
          ::pause
          ::exit /b
          goto continue

          :strLen
          SETlocal enabledelayedexpansion

          :strLen_Loop
             IF not "!%1:~%len%!"=="" SET /A len+=1 & goto :strLen_Loop
          (endlocal & SET %2=%len%)
          goto :eof
  ::######################################################################################################################################

  :continue
      SET /a "strlen=%strlen%"
          ::echo %strlen%


      ::+Prüfung ob die ermittelte Comic ID im gesuchten Bereich liegt
      SET /a "ComicIdTemp=%ComicId%"
          ::echo %main_url_temp%
          ::pause

      IF %strlen% EQU 6 IF %ComicIdTemp% GEQ 1 IF %ComicIdTemp% LEQ 999999 goto continue
      echo.
      echo.
      echo.
      color 0c
      echo Die angegebene URL entspricht nicht den Bedingungen!
      echo Bitte versuchen Sie eine andere URL.
      pause
      START start.cmd
      EXIT


  :continue
      echo.
      echo.
      echo.
      %colorEcho% {0A} Die angegebene URL entspricht den Bedingungen! Der Forgang wird fortgeSETzt.{\n}{#}
      SET "mainUrl=https://imhentai.xxx/gallery/%ComicId%/"
          choice /N /C 123 /T 1 /D 1 >NUL
      ::aktiviere äöü
