:all_right_input
    color 0a
    cls
    echo    Sind alle angaben korrekt? / Download starten?
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo   �
    echo   �  Bisherige Eingaben
    echo   �  ==================
    echo   �
    echo   �
    echo   �    Speichern unter:
    echo   �     -^> %savePath%
    echo   �
    echo   �    Aktueller Downloadordner/-unterordner:
    echo   �     -^> %dl_folder%
    echo   �
    echo   �    Comic-Identifikationsnummer:
    echo   �     -^> %main-url_num%
    echo   �
    echo   �    Comic-URL:
    echo   �     -^> %main-url%
    echo   �
    echo   �    Download-URL (Basis):
    echo   �     -^> %dl-URL%*.*
    echo   �
    echo   �    Seitenanzahl:
    echo   �     -^> %pages%
    echo   �
    echo   �    Name des Comics / Der Bildreihe:
    echo   �     -^> %comic-name%
    echo   �
    echo   �
    echo   �    j = Download wird gestartet.         n = Alle Angaben werden wieder zur�ckgesetzt und die Eingabe gebinnt von vorn.
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo.
    echo   #  Sind alle oben angezeigten Daten richtig? Kann der Download gestartet werden?
    echo         -   j / n    (ja/nein)
    echo         # Eingabe mit [Enter] best�tigen:
    echo.
    set /p "all_right_input=------> Download starten: "

    IF "%all_right_input%"=="j" goto continue
    IF "%all_right_input%"=="y" goto continue
    IF "%all_right_input%"=="n" color 0c && echo. && echo. && echo Mit dem Klick auf [Enter] werden alle Eingaben gel�scht und Sie k�nnen die richtigen Daten angeben. && pause && set errorRestart=errorRestartYES
    goto %errorRestart%
:restart_no
    goto all_right_input
:errorRestartYES
:continue
    ::aktiviere ���
