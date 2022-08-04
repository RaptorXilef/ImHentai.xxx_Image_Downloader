:all_right_input
    color 0a
    cls
    echo    Sind alle angaben korrekt? / Download starten?
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
    echo   ¦    Download-URL (Basis):
    echo   ¦     -^> %dl-URL%*.*
    echo   ¦
    echo   ¦    Seitenanzahl:
    echo   ¦     -^> %pages%
    echo   ¦
    echo   ¦    Name des Comics / Der Bildreihe: 
    echo   ¦     -^> %comic-name%
    echo   ¦
    echo   ¦
    echo   ¦    j = Download wird gestartet.         n = Alle Angaben werden wieder zurückgesetzt und die Eingabe gebinnt von vorn.
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo.
    echo   #  Sind alle oben angezeigten Daten richtig? Kann der Download gestartet werden?
    echo         -   j / n    (ja/nein)
    echo         # Eingabe mit [Enter] bestätigen: 
    echo.
    set /p "all_right_input=------> Download starten: "
    
    if "%all_right_input%"=="j" goto weiter
    if "%all_right_input%"=="y" goto weiter
    if "%all_right_input%"=="n" color 0c && echo. && echo. && echo Mit dem Klick auf [Enter] werden alle Eingaben gelöscht und Sie können die richtigen Daten angeben. && pause && set restart_yn=restart_yes
    goto %restart_yn%
:restart_no
    goto all_right_input
:restart_yes
:weiter
    ::aktiviere äöü
    
    
    