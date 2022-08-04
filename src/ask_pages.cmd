set /a pages_tobig=%pages_input%
:pages_input
    color 0a
    cls
    echo    Seitenanzahl
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo   ¦
    echo   ¦  Bisherige Eingaben
    echo   ¦  ==================
    echo   ¦
    echo   ¦
    echo   ¦    Speichern unter: 
    echo   ¦     -^> %save-to%
    echo   ¦
    echo   ¦    Aktueller Downloadordner/-unterordner: 
    echo   ¦     -^> %dl_folder%
    echo   ¦
    echo   ¦    Comic-Identifikationsnummer: 
    echo   ¦     -^> %main-url_num%
    echo   ¦
    echo   ¦    Comic-URL: 
    echo   ¦     -^> %main-url%
    echo   ¦
    echo   ¦    Download-URL (Basis): (Von der Webseite übernummen)
    echo   ¦     -^> %dl-URL%*.*
    echo   ¦
    echo   ¦    Seitenanzahl: (Von der Webseite übernummen)
    echo   ¦     *-^> %pages_input%
    echo   ¦
    echo   ¦
    echo   ¦
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo.
    echo   #  Geben Sie die Anzahl der Seiten an, welche heruntergeladen werden sollen:
    echo         - Möchten Sie die vorgeschlagene Seitenanzahl übernehmen, drücken Sie nur [Enter] ohne Eingabe einer anderen Zahl.
    echo         # Eingabe mit [Enter] bestätigen: 
    echo.
    set /p "pages_input=------> Seitenanzahl: "
    

    SET /a "pages=%pages_input%"
    
    IF %pages_tobig% GTR %pages_input% SET /a "pages_input=%pages_tobig%"


    ::aktiviere äöü
    
    
    