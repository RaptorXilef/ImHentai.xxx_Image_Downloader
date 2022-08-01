    color 0e
    cls
    echo.
    echo Lade variablen aus der Webseite hinter der angegebenen URL
    echo.
    echo.
:: ===============================================================================================(äöü)
::      Setze HTML Dokument Pfad und Name + temp Zwischenspeicher 
:: ===============================================================================================
    echo Erstelle einen temporären Ordner zur Verarbeitung der Variablen
        md "%save-to_tempfolder_num%"
            set "htmlVAR=%save-to_tempfolder_num%\temp.html"
            set "tempVAR=%save-to_tempfolder_num%\temp.txt"
    echo.
    echo.


:: ===============================================================================================
::      Starte 64 oder 32 Bit Downlaoder für HTML Dokument
:: ===============================================================================================
    if exist "third-party_software\wget%xxbit%.exe" "third-party_software\wget%xxbit%.exe" -O "%htmlVAR%" "%main-url%"
    if not exist "third-party_software\wget%xxbit%.exe" "third-party_software\wget.exe" -O "%htmlVAR%" "%main-url%"


    echo.
    echo.
    if exist "%htmlVAR%" color 0b && echo Die Webseite wurde erfolgreich ausgelesen. Die Variablen werden nun gespeichert. && echo. && echo. && color 0e
    if not exist "%htmlVAR%" color 0c && echo Es ist ein Fehler bei der Verarbeitung aufgetreten. && echo Möglicherweise sind im Dateipfad Sonderzeichen wie "(" und ")" enthalten. && echo Mit diesen hat die Software noch schwierigkeiten. && echo Das Programm wird daher neu geladen. && echo. && echo Bitte bestätigen Sie den Ladevorgang mit [Enter] && pause && set restart_yn=restart_yes
    goto %restart_yn%
:restart_no

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
            set "temp=%temp:"=%"
            set "temp=%temp:?=%"
            set "temp=%temp:\=%"
            set "temp=%temp:!=%"
            set "temp=%temp:?=%"
            ::set "temp=%temp:.=%"
            set "temp=%temp:'=%"
            set "temp=%temp:^==%"
            set "temp=%temp: =%"
            set "temp=%temp:	=%"
        set "dl-URL=%temp:~131,39%"
    ::DEBUG echo %dl-URL% && pause


:: ===============================================================================================
::      Filter Variablen aus HTML Dokument
:: ===============================================================================================
:: Seitenanzahl
    findstr /L "Pages: " "%htmlVAR%" >"%tempVAR%"
        set /p temp=<"%tempVAR%"
            set "temp=%temp:|=%"
            set "temp=%temp:<=%"
            set "temp=%temp:>=%"
            set "temp=%temp:&=%"
            set "temp=%temp:^=%"
            set "temp=%temp:"=%"
            set "temp=%temp:?=%"
            set "temp=%temp:\=%"
            set "temp=%temp:!=%"
            set "temp=%temp:?=%"
            set "temp=%temp:.=%"
            set "temp=%temp:'=%"
            set "temp=%temp:^==%"
            set "temp=%temp: =%"
            set "temp=%temp:	=%"
                set "temp=%temp:/=%"
                set "temp=%temp::=%"
                set "temp=%temp:li=%"
                set "temp=%temp:class=%"
                set "temp=%temp:pages=%"
        set "pages_input=%temp:~1%"
    ::DEBUG echo %pages_input% && pause


:: ===============================================================================================
::      Filter Variablen aus HTML Dokument
:: ===============================================================================================
:: Comicname
    findstr /L "<h1>" "%htmlVAR%" >"%tempVAR%"
        set /p temp=<"%tempVAR%"
            set "temp=%temp:|=-%"
            set "temp=%temp:<=%"
            set "temp=%temp:>=%"
            set "temp=%temp:&=%"
            set "temp=%temp:^=%"
            set "temp=%temp:"=%"
            set "temp=%temp:?=%"
            set "temp=%temp:\=%"
            set "temp=%temp:!=%"
            set "temp=%temp:?=%"
            set "temp=%temp:.=%"
            set "temp=%temp:'=%"
            set "temp=%temp:  = %"
            set "temp=%temp:	=%"
                set "temp=%temp:h1=%"
                set "temp=%temp::=%"
                set "temp=%temp:/=%"
                set "temp=%temp:'=-%"
                set "temp=%temp:é=e%"
                set "temp=%temp:é=e%"
                set "temp=%temp:è=e%"
                set "temp=%temp:Ã©=e%"
                set "temp=%temp:#039;=-%"
                set "temp=%temp:[English]=(english)%"
                set "temp=%temp:[english]=(english)%"
                set "temp=%temp:[Japanese]=(japanese)%"
                set "temp=%temp:[japanese]=(japanese)%"
                set "temp=%temp:[Deutsch]=(deutsch)%"
                set "temp=%temp:[deutsch]=(deutsch)%"
                set "temp=%temp:[German]=(german)%"
                set "temp=%temp:[german]=(german)%"
                set "temp=%temp:[Spanish]=(spanish)%"
                set "temp=%temp:[spanish]=(spanish)%"
                set "temp=%temp:[Korean]=(korean)%"
                set "temp=%temp:[korean]=(korean)%"
                set "temp=%temp:[French]=(french)%"
                set "temp=%temp:[french]=(french)%"
            set "comic-name_input=%temp:~1%"
    ::DEBUG echo %comic-name% && pause


:: ===============================================================================================
::      Filter Variablen aus HTML Dokument
:: ===============================================================================================
:: Language
    findstr /L "Languages:" "%htmlVAR%" >"%tempVAR%"
        set /p temp=<"%tempVAR%"
            set "temp=%temp:|=%"
            set "temp=%temp:<li>=%"
            set "temp=%temp:<span=%"
            set "temp=%temp:class=%"
            set "temp=%temp:'tags_text'=%"
            set "temp=%temp:Languages:=%"
            set "temp=%temp:</span>=%"
            set "temp=%temp:<a=%"
            set "temp=%temp:'tag  btn btn-primary' =%"
            set "temp=%temp:href=%"
            set "temp=%temp:'/language/english/'=%"
            set "temp=%temp:'badge'=%"
            set "temp=%temp:</a>=%"
            set "temp=%temp:</li>=%"
            set "temp=%temp:<=%"
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
            set "temp=%temp: =%"
            set "temp=%temp:	=%"
            set "temp=%temp:0=%"
            set "temp=%temp:1=%"
            set "temp=%temp:2=%"
            set "temp=%temp:3=%"
            set "temp=%temp:4=%"
            set "temp=%temp:5=%"
            set "temp=%temp:6=%"
            set "temp=%temp:7=%"
            set "temp=%temp:8=%"
            set "temp=%temp:9=%"
            goto test
            set "temp=%temp:languagegerman=%"
            set "temp=%temp:languagetranslatedtranslated=%"
            set "temp=%temp:languagespeechless=%"
            set "temp=%temp:languageenglish=%"
            set "temp=%temp:languagejapanese=%"
            set "temp=%temp%"
        set "language_input=%temp:~3,-1%"
    ::DEBUG echo %language_input% && pause
    :test
    IF "%temp:~3,7%"=="english" set "temp=%temp:~3,7%"

    
    
    
    japanese
    echo %temp%
    pause


:: ===============================================================================================
::      Lösche temp Dateien
:: ===============================================================================================
    echo Die Variablen wurden erfolgreich gespeichert!
    echo Die Temprären Dateien werden nun wieder entfernt.
        del "%htmlVAR%"
        del "%tempVAR%"
    rd /s /q "%save-to_tempfolder_num%"
    choice /N /C 123 /T 1 /D 1 >NUL
:restart_yes