/T %DEBUGTIME%
REM ENG
REM Check whether the programme was started via Start.cmd, if NOT, start it automatically via Start.cmd.

REM DE
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: data-query\ReadingDataFromURL.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    ECHO.
    ECHO DEBUG-Info: %LANG_ReadingDataFromURL_DEBUG_1%
    ECHO.
    ECHO.
    ECHO DEBUG-Info: %LANG_ReadingDataFromURL_DEBUG_2%
  ) ELSE ( CLS )

REM ===============================================================================================(äöü)
REM      Setze HTML Dokument Pfad und Name + temp Zwischenspeicher
REM ===============================================================================================

REM English
REM Create necessary folders if they do not exist and set file paths

REM The code checks if a specified folder exists, and if not, creates it and hides it.
REM Then, it checks if another specified folder exists, and if not, creates it. Finally,
REM it sets the variables "htmlFile" and "tempFile" to specific file paths inside the
REM "savePathTempFolderComicID" directory.

REM Deutsch
REM Erstellt temporäre Verzeichnisse und setzt Variablen für temporäre Dateien.

REM Die ersten beiden Zeilen prüfen, ob der angegebene Ordnerpfad existiert.
REM Falls er nicht existiert, wird er erstellt und dann mit dem Attribut "versteckt"
REM versehen. Die dritte und vierte Zeile setzen die Dateipfade für zwei temporäre Dateien.

    IF NOT EXIST "%savePathTempFolder%" (
      MD "%savePathTempFolder%"
      attrib +h "%savePathTempFolder%"
    )
    IF NOT EXIST "%savePathTempFolderComicID%" MD "%savePathTempFolderComicID%"

    SET "htmlFile=%savePathTempFolderComicID%\temphtml.txt"
    SET "tempFile=%savePathTempFolderComicID%\temp.txt"
REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    ECHO DEBUG-Info: htmlFile= "%htmlFile%"
    ECHO DEBUG-Info: htmlFile= "%tempFile%"
    CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
  )
    ECHO. & ECHO.

REM ===============================================================================================
REM      Starte 64 oder 32 Bit Downlaoder für HTML Dokument
REM ===============================================================================================


REM English
REM Download mainUrl using wget with architecture specific binary, if available, otherwise default binary.
REM Prompt user to continue after download or show error message and set errorRestart variable.

REM Checks if wget executable for current architecture exists and uses it to download file from a given URL.
REM If it does not exist, it uses the default wget executable. If the download is successful, displays a
REM message and waits for user input. If the download fails, displays an error message and prompts user to retry.


REM Deutsch
REM Prüft existenz von wget mit der richtigen Architektur, lädt eine Datei von einer URL herunter
REM und wartet auf Benutzereingabe bei Erfolg. Bei Fehlschlag wird zur Wiederholung aufgefordert.

REM Es wird überprüft, ob die wget-Executable für die aktuelle Architektur existiert und verwendet sie,
REM um eine Datei von einer angegebenen URL herunterzuladen. Wenn sie nicht existiert, wird die
REM Standard-Wget-Executable verwendet. Wenn der Download erfolgreich ist, wird eine Meldung angezeigt
REM und auf Benutzereingabe gewartet. Wenn der Download fehlschlägt, wird eine Fehlermeldung angezeigt
REM und der Benutzer zur Wiederholung aufgefordert.

    IF EXIST "bin\ThirdPartySoftware\wget%PROCESSOR_ARCHITECTURE:~-2%.exe" "bin\ThirdPartySoftware\wget%PROCESSOR_ARCHITECTURE:~-2%.exe" -O "%htmlFile%" "%mainUrl%"
    IF NOT EXIST "bin\ThirdPartySoftware\wget%PROCESSOR_ARCHITECTURE:~-2%.exe" "bin\ThirdPartySoftware\wget.exe" -O "%htmlFile%" "%mainUrl%"

    ECHO. & ECHO.
    IF EXIST "%htmlFile%" %colorEcho% {0A} %LANG_ReadingDataFromURL_1%{#}{\n}{\n}{\n} && CHOICE /N /C 123 /T 2 /D 1 >NUL
    IF NOT EXIST "%htmlFile%" %colorEcho% {0C} %LANG_ReadingDataFromURL_2%{\n} %LANG_ReadingDataFromURL_3%{\n} {08} %LANG_ReadingDataFromURL_4%{\n}{\n} %LANG_ReadingDataFromURL_5%{#}{\n} && pause && SET errorRestart=errorRestartYES
    GOTO %errorRestart%

:errorRestartNO
:debugloop

REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    %colorEcho% DEBUG-Info: {0c}%LANG_ReadingDataFromURL_DEBUG_8%: {0e}%LANG_ReadingDataFromURL_DEBUG_9% && PAUSE
      CLS & ECHO. & ECHO.
      COLOR 08
        %colorEcho% {08}DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_3%: "%imageDownloadFolderURL%"{#}{\n}{\n}
        %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_4%: "%pageCountInput%"{#}{\n}{\n}
        %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_5%: "%languageInput%"{#}{\n}{\n}
        %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_6%: "%artistInput%"{#}{\n}{\n}
        %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_7%: "%comicNameInput%"{#}{\n}{\n}
      CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
  )
REM ===============================================================================================
REM      Filter Variablen aus HTML Dokument
REM ===============================================================================================

REM English
REM The code searches for a specific file name ("cover.jpg") in the contents of the file specified
REM by the "htmlFile" variable. It then manipulates the string to remove certain characters and extract
REM the URL of the folder where the image can be downloaded. The extracted URL is stored in the
REM "imageDownloadFolderURL" variable.

REM Deutsch
REM Der Code sucht in der angegebenen Datei nach einem bestimmten Dateinamen ("cover.jpg").
REM Dann manipuliert er den gefundenen String, um bestimmte Zeichen zu entfernen und die URL des Ordners
REM zu extrahieren, unter der das Bild heruntergeladen werden kann. Die extrahierte URL wird in der Variable
REM "imageDownloadFolderURL" gespeichert.

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
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_3%: {0A}"%imageDownloadFolderURL%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_4%: "%pageCountInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_5%: "%languageInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_6%: "%artistInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_7%: "%comicNameInput%"{#}{\n}{\n}
    CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
  )


REM English
REM The code searches for the string "Pages:" in the file specified by the "htmlFile" variable
REM and outputs the result to the "tempFile" variable. Then, it performs a series of string
REM substitutions on the contents of "tempVar" to remove certain characters. It then sets the
REM "pageCountInput" variable to the fourth token separated by semicolons in the "tempFile" variable.

REM Deutsch
REM Dieser Code sucht nach der Zeichenfolge "Pages:" in der Datei, die in der Variable "htmlFile"
REM gespeichert ist. Wenn es gefunden wird, wird der entsprechende Wert extrahiert und in der Variable
REM "pageCountInput" gespeichert. Der Wert wird durch verschiedene Zeichen ersetzt und die Ergebnisse
REM werden in der temporären Datei gespeichert. Dann wird der Wert aus der temporären Datei extrahiert
REM und in der Variable "pageCountInput" gespeichert.

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
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_3%: "%imageDownloadFolderURL%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_4%: {0A}"%pageCountInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_5%: "%languageInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_6%: "%artistInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_7%: "%comicNameInput%"{#}{\n}{\n}
    CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
  )



REM English
REM The code searches for the line in the downloaded HTML file that contains the string "Languages:"
REM and writes it to a temporary file. Then, it extracts the fourth token delimited by forward slashes
REM from that line and sets the "languageInput" variable to it.

REM Deutsch
REM Der Code sucht im HTML-Dateiinhalt nach dem Ausdruck "Languages:" und speichert die vierte Zeichenfolge,
REM in der Variablen "languageInput" die zwischen dem vierten Schrägstrich und dem fünften Schrägstrich auftritt.

REM Language
    findstr /L "Languages:" "%htmlFile%" >"%tempFile%"
      FOR /F "usebackq tokens=4 delims=/" %%A IN ("%tempFile%") DO SET languageInput=%%A
REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    CLS & ECHO. & ECHO.
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_3%: "%imageDownloadFolderURL%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_4%: "%pageCountInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_5%: {0A}"%languageInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_6%: "%artistInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_7%: "%comicNameInput%"{#}{\n}{\n}
    CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
  )



REM English
REM Change the active code page (character set table) depending on the language used.

REM Deutsch
REM Ändere die den aktiven Codepage (Zeichensatztabelle) abhängig von der verwendeten Sprache
IF "%languageInput%"=="russian" SET "chcpCodeNumber=chcp65001"

GOTO %chcpCodeNumber%
:chcp65001
    IF "%DEBUG%"=="DebugON" (CHCP 65001) ELSE (CHCP 65001>nul)
:chcp1252

REM English
REM This code searches for the string "Artists:" in the specified HTML file and redirects the
REM output to a temporary file. Then, using FOR loop and delimiters, it extracts the fourth
REM token from the temporary file and sets it to a variable called "tempVar". Next, it applies
REM various string replacement operations on "tempVar" to remove unwanted characters and replace
REM them with valid ones. Finally, the resulting value of "tempVar" is assigned to "artistInput"
REM variable and "tempVar" is cleared.

REM Deutsch
REM Dieser Codeabschnitt sucht nach dem Künstler des Comics, extrahiert den Namen aus dem HTML-Code
REM und bereinigt den Namen von unerwünschten Sonderzeichen und Zeichenketten. Dabei werden bestimmte
REM Zeichen durch andere ersetzt, Zeichenfolgen entfernt oder durch Bindestriche ersetzt. Das bereinigte
REM Ergebnis wird dann der Variable "artistInput" zugewiesen. Abschließend wird "tempVar" gelöscht.

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
        SET "tempVar=%tempVar:é=e%"
        SET "tempVar=%tempVar:é=e%"
        SET "tempVar=%tempVar:è=e%"
        SET "tempVar=%tempVar:Ã©=e%"
        SET "tempVar=%tempVar:#039;=-%
        SET "tempVar=%tempVar:"lt=(%"
        SET "tempVar=%tempVar:"gt=)%"
        SET "artistInput=%tempVar:";=%"
          SET "tempVar="
REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    CLS & ECHO. & ECHO.
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_3%: "%imageDownloadFolderURL%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_4%: "%pageCountInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_5%: "%languageInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_6%: {0A}"%artistInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_7%: "%comicNameInput%"{#}{\n}{\n}
    CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
  )



REM English
REM This batch code extracts the title of a comic book from an HTML file by using the
REM FINDSTR command to locate the HTML tag "<h1>". The resulting line is then stored
REM in a temporary file, which is read and modified using various SET commands to remove
REM unwanted characters and convert non-English language names to English. The final title
REM is then stored in the variable "comicNameInput".

REM Deutsch
REM Dieser Batch-Code extrahiert den Titel eines Comics aus einer HTML-Datei, indem er
REM den Befehl FINDSTR verwendet, um das HTML-Tag "<h1>" zu finden. Die resultierende
REM Zeile wird dann in einer temporären Datei gespeichert, die gelesen und mit verschiedenen
REM SET-Befehlen geändert wird, um unerwünschte Zeichen zu entfernen und nicht-englischsprachige
REM Namen ins Englische zu konvertieren. Der endgültige Titel wird dann in der Variablen
REM "comicNameInput" gespeichert.

  REM Comicname
      findstr /L "<h1>" "%htmlFile%" >"%tempFile%"
      CHCP 51932
        SET /p tempVar=<"%tempFile%"
          SET "tempVar=%tempVar:&lt;=(%"
          SET "tempVar=%tempVar:&gt;=)%"
          SET "tempVar=%tempVar:ï¼ˆ= (%"
          SET "tempVar=%tempVar:ï¼‰=)%"
          SET "tempVar=%tempVar: <3 =%"
          SET "tempVar=%tempVar: <3=%"
          SET "tempVar=%tempVar:<3 =%"
          SET "tempVar=%tempVar:<3=%"
        SET "tempVar=%tempVar:é=e%"
        SET "tempVar=%tempVar:é=e%"
        SET "tempVar=%tempVar:è=e%"
        SET "tempVar=%tempVar:Ã©=e%"
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
        %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_3%: "%imageDownloadFolderURL%"{#}{\n}{\n}
        %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_4%: "%pageCountInput%"{#}{\n}{\n}
        %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_5%: "%languageInput%"{#}{\n}{\n}
        %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_6%: "%artistInput%"{#}{\n}{\n}
        %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_7%: {0A}"%comicNameInput%"{#}{\n}{\n}
      CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
    )

REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    CLS & ECHO. & ECHO.
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_3%: "%imageDownloadFolderURL%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_4%: "%pageCountInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_5%: "%languageInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_6%: "%artistInput%"{#}{\n}{\n}
      %colorEcho% DEBUG-Info: {07}%LANG_ReadingDataFromURL_DEBUG_7%: "%comicNameInput%"{#}{\n}{\n}
    CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
    REM CLS && GOTO debugloop
  )

REM ===============================================================================================
REM      Lösche temp Dateien
REM ===============================================================================================

REM English
REM This batch code sets the command prompt encoding to 1252, prints two output messages,
REM deletes two files, removes a directory, and prompts for user input if the DEBUG environment
REM variable is set to "DebugON". Finally, it goes to the :errorRestartYES label.

REM Deutsch
REM Dieser Codeblock löscht temporäre Dateien und Verzeichnisse sowie die Ausgabe von
REM vorherigen Befehlen. Wenn die DEBUG-Option aktiviert ist, wird die Zeichenkodierung
REM auf 1252 geändert und eine Benutzereingabe aufgefordert.

IF "%DEBUG%"=="DebugON" ( CHCP 1252 ) ELSE ( CHCP 1252>nul )
    %colorEcho% {\n}{0A} %LANG_ReadingDataFromURL_DEBUG_10%{#}{\n}
    %colorEcho% {\n}{0A} %LANG_ReadingDataFromURL_DEBUG_11%{#}{\n}
        del "%htmlFile%"
        del "%tempFile%"
    rd /s /q "%savePathTempFolderComicID%"
    IF "%DEBUG%"=="DebugON" ( CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL )
:errorRestartYES
EXIT /B
