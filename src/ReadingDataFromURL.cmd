:: DEBUG
  IF "%DEBUG%"=="DebugON" (
    ECHO.
    ECHO DEBUG: %outputReadingDataFromURL1%
    ECHO.
    ECHO.
    ECHO DEBUG: %outputReadingDataFromURL2%
  ) else (CLS)
REM ===============================================================================================(���)
REM      Setze HTML Dokument Pfad und Name + temp Zwischenspeicher
REM ===============================================================================================
    IF NOT EXIST "%savePathTempFolder%" (
      MD "%savePathTempFolder%"
      attrib +h "%savePathTempFolder%"
    )
    IF NOT EXIST "%savePathTempFolderComicID%" MD "%savePathTempFolderComicID%"

    SET "htmlFile=%savePathTempFolderComicID%\temphtml.txt"
    SET "tempFile=%savePathTempFolderComicID%\temp.txt"
REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    ECHO DEBUG: htmlFile= "%htmlFile%"
    ECHO DEBUG: htmlFile= "%tempFile%"
    CHOICE /N /C 123 /T 1 /D 1 >NUL
  )
    ECHO. & ECHO.
REM ===============================================================================================
REM      Starte 64 oder 32 Bit Downlaoder f�r HTML Dokument
REM ===============================================================================================
    IF exist "bin\ThirdPartySoftware\wget%PROCESSOR_ARCHITECTURE:~-2%.exe" "bin\ThirdPartySoftware\wget%PROCESSOR_ARCHITECTURE:~-2%.exe" -O "%htmlFile%" "%mainUrl%"
    IF not exist "bin\ThirdPartySoftware\wget%PROCESSOR_ARCHITECTURE:~-2%.exe" "bin\ThirdPartySoftware\wget.exe" -O "%htmlFile%" "%mainUrl%"

    ECHO. & ECHO.
    IF exist "%htmlFile%" %colorEcho% {0A} %outputReadingDataFromURL3%{#}{\n}{\n}{\n} && CHOICE /N /C 123 /T 1 /D 1 >NUL
    IF not exist "%htmlFile%" %colorEcho% {0C} %outputReadingDataFromURL4%{\n} %outputReadingDataFromURL5%{\n} {08} %outputReadingDataFromURL6%{\n}{\n} %outputReadingDataFromURL7%{#}{\n} && pause && SET errorRestart=errorRestartYES
    goto %errorRestart%

:errorRestartNO
:debugloop
REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    %colorEcho% DEBUG: {0c}%outputReadingDataFromURL8%: {0e}%outputReadingDataFromURL9% && PAUSE
      CLS & ECHO. & ECHO.
      COLOR 08
        %colorEcho% {08}DEBUG: {07}Download-URL: "%imageDownloadFolderURL%"{#}{\n}{\n}
        %colorEcho% DEBUG: {07}Seiten: "%pageCountInput%"{#}{\n}{\n}
        %colorEcho% DEBUG: {07}Language: "%languageInput%"{#}{\n}{\n}
        %colorEcho% DEBUG: {07}Artist: "%artistInput%"{#}{\n}{\n}
        %colorEcho% DEBUG: {07}Comicname: "%comicNameInput%"{#}{\n}{\n}
      CHOICE /N /C 123 /T 1 /D 1 >NUL
  )
REM ===============================================================================================
REM      Filter Variablen aus HTML Dokument
REM ===============================================================================================
REM Download-URL
    findstr /L "cover.jpg" "%htmlFile%" >"%tempFile%"
      SET /p tempVar=<"%tempFile%"
      SET "tempVar=%tempVar:|=%"
      SET "tempVar=%tempVar:<=%"
      SET "tempVar=%tempVar:>=%"
      SET "tempVar=%tempVar:&=%"
      SET "tempVar=%tempVar:^=%"
      SET "tempVar=%tempVar:?=%"
      SET "tempVar=%tempVar:\=%"
      SET "tempVar=%tempVar:!=%"
      SET "tempVar=%tempVar:?=%"
      SET "tempVar=%tempVar: =%"
      SET "tempVar=%tempVar:	=%"
        SET "tempVar=%tempVar:cover.jpg=%"
        SET "tempVar=%tempVar:cover.png=%"
          SET tempVar=%tempVar:"=;%
      ECHO "%tempVar%">"%tempFile%"
        SET "tempVar="
        FOR /F "usebackq tokens=8 delims=;" %%A IN ("%tempFile%") DO SET imageDownloadFolderURL=%%A
        REM SET "imageDownloadFolderURL=%tempVar:~131,39%"
REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    CLS & ECHO. & ECHO.
      %colorEcho% DEBUG: {07}Download-URL: {0A}"%imageDownloadFolderURL%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Seiten: "%pageCountInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Language: "%languageInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Artist: "%artistInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Comicname: "%comicNameInput%"{#}{\n}{\n}
    CHOICE /N /C 123 /T 1 /D 1 >NUL
  )


REM number of pages / Seitenanzahl
    findstr /L "Pages:" "%htmlFile%" >"%tempFile%"
      SET /p tempVar=<"%tempFile%"
      SET "tempVar=%tempVar:|=%"
      SET "tempVar=%tempVar:<=%"
      SET "tempVar=%tempVar:>=%"
      SET "tempVar=%tempVar:&=%"
      SET "tempVar=%tempVar:^=%"
      SET "tempVar=%tempVar:?=%"
      SET "tempVar=%tempVar:\=%"
      SET "tempVar=%tempVar:!=%"
      SET "tempVar=%tempVar:?=%"
      SET "tempVar=%tempVar: =%"
      SET "tempVar=%tempVar:	=%"
        SET tempVar=%tempVar:"=;%
        SET tempVar=%tempVar::=;%
        SET tempVar=%tempVar:/=;%
      ECHO "%tempVar%">"%tempFile%"
        SET "tempVar="
        FOR /F "usebackq tokens=4 delims=;" %%A IN ("%tempFile%") DO SET pageCountInput=%%A
REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    CLS & ECHO. & ECHO.
      %colorEcho% DEBUG: {07}Download-URL: "%imageDownloadFolderURL%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Seiten: {0A}"%pageCountInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Language: "%languageInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Artist: "%artistInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Comicname: "%comicNameInput%"{#}{\n}{\n}
    CHOICE /N /C 123 /T 1 /D 1 >NUL
  )


REM Language
    findstr /L "Languages:" "%htmlFile%" >"%tempFile%"
      FOR /F "usebackq tokens=4 delims=/" %%A IN ("%tempFile%") DO SET languageInput=%%A
REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    CLS & ECHO. & ECHO.
      %colorEcho% DEBUG: {07}Download-URL: "%imageDownloadFolderURL%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Seiten: "%pageCountInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Language: {0A}"%languageInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Artist: "%artistInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Comicname: "%comicNameInput%"{#}{\n}{\n}
    CHOICE /N /C 123 /T 1 /D 1 >NUL
  )

IF "%languageInput%"=="russian" SET "chcpCodeNumber=chcp65001"

GOTO %chcpCodeNumber%
:chcp65001
    IF "%DEBUG%"=="DebugON" (CHCP 65001) else (CHCP 65001>nul)
:chcp1252
REM Artist
    findstr /L "Artists:" "%htmlFile%" >"%tempFile%"
      FOR /F "usebackq tokens=4 delims=/" %%A IN ("%tempFile%") DO SET tempVar=%%A
        SET "tempVar=%tempVar:-= %"
          SET "tempVar=%tempVar:|=-%"
          SET "tempVar=%tempVar:<=%"
          SET "tempVar=%tempVar:>=%"
          SET "tempVar=%tempVar:&=%"
          SET "tempVar=%tempVar:^=%"
          SET "tempVar=%tempVar:"=%"
          SET "tempVar=%tempVar:?=%"
          SET "tempVar=%tempVar:\=%"
          SET "tempVar=%tempVar:!=%"
          SET "tempVar=%tempVar:?=%"
          SET "tempVar=%tempVar:.=%"
          SET "tempVar=%tempVar:'=%"
          SET "tempVar=%tempVar:  = %"
          SET "tempVar=%tempVar:	=%"
        SET "tempVar=%tempVar::=-%"
        SET "tempVar=%tempVar:/=%"
        SET "tempVar=%tempVar:'=-%"
        SET "tempVar=%tempVar:�=e%"
        SET "tempVar=%tempVar:�=e%"
        SET "tempVar=%tempVar:�=e%"
        SET "tempVar=%tempVar:é=e%"
        SET "tempVar=%tempVar:#039;=-%
        SET "tempVar=%tempVar:"lt=(%"
        SET "tempVar=%tempVar:"gt=)%"
        SET "artistInput=%tempVar:";=%"
          SET "tempVar="
REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    CLS & ECHO. & ECHO.
      %colorEcho% DEBUG: {07}Download-URL: "%imageDownloadFolderURL%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Seiten: "%pageCountInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Language: "%languageInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Artist: {0A}"%artistInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Comicname: "%comicNameInput%"{#}{\n}{\n}
    CHOICE /N /C 123 /T 1 /D 1 >NUL
  )


  REM Comicname
      findstr /L "<h1>" "%htmlFile%" >"%tempFile%"
      CHCP 51932
        SET /p tempVar=<"%tempFile%"
          SET "tempVar=%tempVar:&lt;=(%"
          SET "tempVar=%tempVar:&gt;=)%"
          SET "tempVar=%tempVar:（= (%"
          SET "tempVar=%tempVar:）=)%"
          SET "tempVar=%tempVar: <3 =%"
          SET "tempVar=%tempVar: <3=%"
          SET "tempVar=%tempVar:<3 =%"
          SET "tempVar=%tempVar:<3=%"
        SET "tempVar=%tempVar:�=e%"
        SET "tempVar=%tempVar:�=e%"
        SET "tempVar=%tempVar:�=e%"
        SET "tempVar=%tempVar:é=e%"
        SET "tempVar=%tempVar:#039;=-%
        SET "tempVar=%tempVar:&#039;=-%
          SET "tempVar=%tempVar:|=-%"
          REM SET "tempVar=%tempVar:<=%"
          SET "tempVar=%tempVar:>=%"
          SET "tempVar=%tempVar:&=%"
          SET "tempVar=%tempVar:^=%"
          SET "tempVar=%tempVar:"=%"
          SET "tempVar=%tempVar:?=%"
          SET "tempVar=%tempVar:\=%"
          SET "tempVar=%tempVar:/=%"
          SET "tempVar=%tempVar:!=%"
          SET "tempVar=%tempVar:?=%"
          SET "tempVar=%tempVar:.=%"
          SET "tempVar=%tempVar:'=%"
          SET "tempVar=%tempVar:h1=%"
          SET "tempVar=%tempVar:  = %"
          SET "tempVar=%tempVar:	=%"
        SET "tempVar=%tempVar:(English)=(english)%"
        SET "tempVar=%tempVar:[English]=(english)%"
        SET "tempVar=%tempVar:[english]=(english)%"
        SET "tempVar=%tempVar:(Japanese)=(japanese)%"
        SET "tempVar=%tempVar:[Japanese]=(japanese)%"
        SET "tempVar=%tempVar:[japanese]=(japanese)%"
        SET "tempVar=%tempVar:(Deutsch)=(deutsch)%"
        SET "tempVar=%tempVar:[Deutsch]=(deutsch)%"
        SET "tempVar=%tempVar:[deutsch]=(deutsch)%"
        SET "tempVar=%tempVar:(German)=(german)%"
        SET "tempVar=%tempVar:[German]=(german)%"
        SET "tempVar=%tempVar:[german]=(german)%"
        SET "tempVar=%tempVar:(Spanish)=(spanish)%"
        SET "tempVar=%tempVar:[Spanish]=(spanish)%"
        SET "tempVar=%tempVar:[spanish]=(spanish)%"
        SET "tempVar=%tempVar:(Korean)=(korean)%"
        SET "tempVar=%tempVar:[Korean]=(korean)%"
        SET "tempVar=%tempVar:[korean]=(korean)%"
        SET "tempVar=%tempVar:(French)=(french)%"
        SET "tempVar=%tempVar:[French]=(french)%"
        SET "tempVar=%tempVar:[french]=(french)%"
        SET "tempVar=%tempVar:(Russian)=(russian)%"
        SET "tempVar=%tempVar:[Russian]=(russian)%"
        SET "tempVar=%tempVar:[russian]=(russian)%"
          SET "tempVar=%tempVar::=-%"
          SET "tempVar=%tempVar:";=%"
        ECHO "%tempVar%">"%tempFile%"
          SET "tempVar="
          FOR /F "usebackq tokens=2 delims=<" %%A IN ("%tempFile%") DO SET comicNameInput=%%A
  REM DEBUG
    IF "%DEBUG%"=="DebugON" (
      CLS & ECHO. & ECHO.
        %colorEcho% DEBUG: {07}Download-URL: "%imageDownloadFolderURL%"{#}{\n}{\n}
        %colorEcho% DEBUG: {07}Seiten: "%pageCountInput%"{#}{\n}{\n}
        %colorEcho% DEBUG: {07}Language: "%languageInput%"{#}{\n}{\n}
        %colorEcho% DEBUG: {07}Artist: "%artistInput%"{#}{\n}{\n}
        %colorEcho% DEBUG: {07}Comicname: {0A}"%comicNameInput%"{#}{\n}{\n}
      CHOICE /N /C 123 /T 1 /D 1 >NUL
    )

REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    CLS & ECHO. & ECHO.
      %colorEcho% DEBUG: {07}Download-URL: "%imageDownloadFolderURL%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Seiten: "%pageCountInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Language: "%languageInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Artist: "%artistInput%"{#}{\n}{\n}
      %colorEcho% DEBUG: {07}Comicname: "%comicNameInput%"{#}{\n}{\n}
    CHOICE /N /C 123 /T 1 /D 1 >NUL
    REM CLS && goto debugloop
  )

REM ===============================================================================================
REM      L�sche temp Dateien
REM ===============================================================================================
IF "%DEBUG%"=="DebugON" (CHCP 1252) else (CHCP 1252>nul)
    %colorEcho% {\n}{0A} %outputReadingDataFromURL10%{#}{\n}
    %colorEcho% {\n}{0A} %outputReadingDataFromURL11%{#}{\n}
        del "%htmlFile%"
        del "%tempFile%"
    rd /s /q "%savePathTempFolderComicID%"
    IF "%DEBUG%"=="DebugON" ( CHOICE /N /C 123 /T 1 /D 1 >NUL )
:errorRestartYES
