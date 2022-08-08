    color 08
    cls
    echo.
    echo Lade variablen aus der Webseite hinter der angegebenen URL
    echo.
    echo.
:: ===============================================================================================(äöü)
::      Setze HTML Dokument Pfad und Name + temp Zwischenspeicher
:: ===============================================================================================
    echo Erstelle einen temporären Ordner zur Verarbeitung der Variablen
        IF NOT EXIST "%savePathTempFolder%" MD "%savePathTempFolder%" && attrib +h "%savePathTempFolder%"

        IF NOT EXIST "%savePathTempFolderComicID%" MD "%savePathTempFolderComicID%"
            set "htmlVAR=%savePathTempFolderComicID%\temp.html"
            set "tempVAR=%savePathTempFolderComicID%\temp.txt"
    echo.
    echo.


:: ===============================================================================================
::      Starte 64 oder 32 Bit Downlaoder für HTML Dokument
:: ===============================================================================================
    IF exist "bin\ThirdPartySoftware\wget%PROCESSOR_ARCHITECTURE:~-2%.exe" "bin\ThirdPartySoftware\wget%PROCESSOR_ARCHITECTURE:~-2%.exe" -O "%htmlVAR%" "%main-url%"
    IF not exist "bin\ThirdPartySoftware\wget%PROCESSOR_ARCHITECTURE:~-2%.exe" "bin\ThirdPartySoftware\wget.exe" -O "%htmlVAR%" "%main-url%"


    echo.
    echo.
    IF exist "%htmlVAR%" %color_echo% {0A}Die Webseite wurde erfolgreich ausgelesen. Die Variablen werden nun gespeichert.{#}{\n}{\n}{\n}{#} && ::choice /N /C 123 /T 1 /D 1 >NUL
    IF not exist "%htmlVAR%" %color_echo% {0C} Es ist ein Fehler bei der Verarbeitung aufgetreten.{\n} {08} Der Vorgang wird daher zurückgesetzt.{\n}{\n}  Bitte bestätigen Sie den Vorgang mit {07}[Enter]{\n}{#} && pause && set errorRestart=errorRestartYES
    goto %errorRestart%


:restart_no
cls
    %color_echo% {\n}{07} Download-URL: "%dl-URL%"{\n}{\n}
    %color_echo% {\n}{07} Seiten: "%pages_input%"{\n}{\n}
    %color_echo% {\n}{07} Comicname: "%comic-name_input%"{\n}{\n}
    %color_echo% {\n}{07} Language: "%language_input%"{\n}{\n}
    %color_echo% {\n}{07} Artist: "%artist_input%"{\n}{\n} && choice /N /C 123 /T 1 /D 1 >NUL
:debugloop
:: ===============================================================================================
::      Filter Variablen aus HTML Dokument
:: ===============================================================================================
:: Download-URL
    findstr /L "cover.jpg" "%htmlVAR%" >"%tempVAR%"
            set /p temp=<"%tempVAR%"
            set "temp=%temp:|=%"
            set "temp=%temp:<=%"
            set "temp=%temp:>=%"
            set "temp=%temp:&=%"
            set "temp=%temp:^=%"
            set "temp=%temp:?=%"
            set "temp=%temp:\=%"
            set "temp=%temp:!=%"
            set "temp=%temp:?=%"
            set "temp=%temp: =%"
            set "temp=%temp:	=%"

            set "temp=%temp:cover.jpg=%"
            set "temp=%temp:cover.png=%"

            set temp=%temp:"=;%

            echo "%temp%">"%tempVAR%"

        FOR /F "usebackq tokens=8 delims=;" %%A IN ("%tempVAR%") DO set dl-URL=%%A

        ::set "dl-URL=%temp:~131,39%"
    ::DEBUG
    cls && echo. && echo Download-URL: "%dl-URL%" * && echo.
    echo. && echo Seiten: "%pages_input%" && echo.
    echo. && echo Comicname: "%comic-name_input%" && echo.
    echo. && echo Language: "%language_input%" && echo.
    echo. && echo Artist: "%artist_input%" && echo. && ::choice /N /C 123 /T 1 /D 1 >NUL



:: ===============================================================================================
::      Filter Variablen aus HTML Dokument
:: ===============================================================================================
:: Seitenanzahl
    findstr /L "Pages:" "%htmlVAR%" >"%tempVAR%"
            set /p temp=<"%tempVAR%"
            set "temp=%temp:|=%"
            set "temp=%temp:<=%"
            set "temp=%temp:>=%"
            set "temp=%temp:&=%"
            set "temp=%temp:^=%"
            set "temp=%temp:?=%"
            set "temp=%temp:\=%"
            set "temp=%temp:!=%"
            set "temp=%temp:?=%"
            set "temp=%temp: =%"
            set "temp=%temp:	=%"

            set temp=%temp:"=;%
            set temp=%temp::=;%
            set temp=%temp:/=;%

            echo "%temp%">"%tempVAR%"

        FOR /F "usebackq tokens=4 delims=;" %%A IN ("%tempVAR%") DO set pages_input=%%A

    ::DEBUG
    cls && echo. && echo Download-URL: "%dl-URL%" && echo.
    echo. && echo Seiten: "%pages_input%" * && echo.
    echo. && echo Comicname: "%comic-name_input%" && echo.
    echo. && echo Language: "%language_input%" && echo.
    echo. && echo Artist: "%artist_input%" && echo. && ::choice /N /C 123 /T 1 /D 1 >NUL


:: ===============================================================================================
::      Filter Variablen aus HTML Dokument
:: ===============================================================================================
:: Comicname
    findstr /L "<h1>" "%htmlVAR%" >"%tempVAR%"

        set /p temp=<"%tempVAR%"

            set "temp=%temp:&lt;=(%"
            set "temp=%temp:&gt;=)%"
            set "temp=%temp:ï¼ˆ= (%"
            set "temp=%temp:ï¼‰=)%"
            set "temp=%temp: <3 =%"
            set "temp=%temp: <3=%"
            set "temp=%temp:<3 =%"
            set "temp=%temp:<3=%"

                set "temp=%temp:é=e%"
                set "temp=%temp:é=e%"
                set "temp=%temp:è=e%"
                set "temp=%temp:Ã©=e%"
                set "temp=%temp:#039;=-%
                set "temp=%temp:&#039;=-%

            set "temp=%temp:|=-%"
            ::set "temp=%temp:<=%"
            set "temp=%temp:>=%"
            set "temp=%temp:&=%"
            set "temp=%temp:^=%"
            set "temp=%temp:"=%"
            set "temp=%temp:?=%"
            set "temp=%temp:\=%"
            set "temp=%temp:/=%"
            set "temp=%temp:!=%"
            set "temp=%temp:?=%"
            set "temp=%temp:.=%"
            set "temp=%temp:'=%"
            set "temp=%temp:h1=%"
            set "temp=%temp:  = %"
            set "temp=%temp:	=%"

                set "temp=%temp:(English)=(english)%"
                set "temp=%temp:[English]=(english)%"
                set "temp=%temp:[english]=(english)%"
                set "temp=%temp:(Japanese)=(japanese)%"
                set "temp=%temp:[Japanese]=(japanese)%"
                set "temp=%temp:[japanese]=(japanese)%"
                set "temp=%temp:(Deutsch)=(deutsch)%"
                set "temp=%temp:[Deutsch]=(deutsch)%"
                set "temp=%temp:[deutsch]=(deutsch)%"
                set "temp=%temp:(German)=(german)%"
                set "temp=%temp:[German]=(german)%"
                set "temp=%temp:[german]=(german)%"
                set "temp=%temp:(Spanish)=(spanish)%"
                set "temp=%temp:[Spanish]=(spanish)%"
                set "temp=%temp:[spanish]=(spanish)%"
                set "temp=%temp:(Korean)=(korean)%"
                set "temp=%temp:[Korean]=(korean)%"
                set "temp=%temp:[korean]=(korean)%"
                set "temp=%temp:(French)=(french)%"
                set "temp=%temp:[French]=(french)%"
                set "temp=%temp:[french]=(french)%"
                set "temp=%temp:(Russian)=(russian)%"
                set "temp=%temp:[Russian]=(russian)%"
                set "temp=%temp:[russian]=(russian)%"

            set "temp=%temp::=-%"
            set "temp=%temp:";=%"


        echo "%temp%">"%tempVAR%"

        FOR /F "usebackq tokens=2 delims=<" %%A IN ("%tempVAR%") DO set comic-name_input=%%A


    ::DEBUG
    cls && echo. && echo Download-URL: "%dl-URL%" && echo.
    echo. && echo Seiten: "%pages_input%" && echo.
    echo. && echo Comicname: "%comic-name_input%" * && echo.
    echo. && echo Language: "%language_input%" && echo.
    echo. && echo Artist: "%artist_input%" && echo. && ::choice /N /C 123 /T 1 /D 1 >NUL


:: ===============================================================================================
::      Filter Variablen aus HTML Dokument
:: ===============================================================================================
:: Language
    findstr /L "Languages:" "%htmlVAR%" >"%tempVAR%"
        FOR /F "usebackq tokens=4 delims=/" %%A IN ("%tempVAR%") DO set language_input=%%A
    ::DEBUG
    cls && echo. && echo Download-URL: "%dl-URL%" && echo.
    echo. && echo Seiten: "%pages_input%" && echo.
    echo. && echo Comicname: "%comic-name_input%" && echo.
    echo. && echo Language: "%language_input%" * && echo.
    echo. && echo Artist: "%artist_input%" && echo. && ::choice /N /C 123 /T 1 /D 1 >NUL


:: ===============================================================================================
::      Filter Variablen aus HTML Dokument
:: ===============================================================================================
:: Artist
    findstr /L "Artists:" "%htmlVAR%" >"%tempVAR%"
        FOR /F "usebackq tokens=4 delims=/" %%A IN ("%tempVAR%") DO set artist_input=%%A
        set "artist_input=%artist_input:-= %"
            set "comic-name_input=%comic-name_input:|=-%"
            set "comic-name_input=%comic-name_input:<=%"
            set "comic-name_input=%comic-name_input:>=%"
            set "comic-name_input=%comic-name_input:&=%"
            set "comic-name_input=%comic-name_input:^=%"
            set "comic-name_input=%comic-name_input:"=%"
            set "comic-name_input=%comic-name_input:?=%"
            set "comic-name_input=%comic-name_input:\=%"
            set "comic-name_input=%comic-name_input:!=%"
            set "comic-name_input=%comic-name_input:?=%"
            set "comic-name_input=%comic-name_input:.=%"
            set "comic-name_input=%comic-name_input:'=%"
            set "comic-name_input=%comic-name_input:  = %"
            set "comic-name_input=%comic-name_input:	=%"
                set "comic-name_input=%comic-name_input::=-%"
                set "comic-name_input=%comic-name_input:/=%"
                set "comic-name_input=%comic-name_input:'=-%"
                set "comic-name_input=%comic-name_input:é=e%"
                set "comic-name_input=%comic-name_input:é=e%"
                set "comic-name_input=%comic-name_input:è=e%"
                set "comic-name_input=%comic-name_input:Ã©=e%"
                set "comic-name_input=%comic-name_input:#039;=-%
                set "comic-name_input=%comic-name_input:"lt=(%"
                set "comic-name_input=%comic-name_input:"gt=)%"
                set "comic-name_input=%comic-name_input:";=%"

    ::DEBUG
    cls && echo. && echo Download-URL: "%dl-URL%" && echo.
    echo. && echo Seiten: "%pages_input%" && echo.
    echo. && echo Comicname: "%comic-name_input%" && echo.
    echo. && echo Language: "%language_input%" && echo.
    echo. && echo Artist: "%artist_input%" * && echo. && ::choice /N /C 123 /T 1 /D 1 >NUL
        ::cls && goto debugloop


    cls && echo. && echo Download-URL: "%dl-URL%" && echo.
    echo. && echo Seiten: "%pages_input%" && echo.
    echo. && echo Comicname: "%comic-name_input%" && echo.
    echo. && echo Language: "%language_input%" && echo.
    echo. && echo Artist: "%artist_input%" && echo. && ::choice /N /C 123 /T 1 /D 1 >NUL


:: ===============================================================================================
::      Lösche temp Dateien
:: ===============================================================================================
    echo Die Variablen wurden erfolgreich gespeichert!
    echo Die Temprären Dateien werden nun wieder entfernt.
        del "%htmlVAR%"
        del "%tempVAR%"
    rd /s /q "%savePathTempFolderComicID%"
    ::choice /N /C 123 /T 1 /D 1 >NUL
:errorRestartYES
