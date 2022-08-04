    ::Entferne Sonderzeichen aus dem eingegebenen String der von der Webseite kommt
    set "comic-name_input=%comic-name_input:|=-%"
    set "comic-name_input=%comic-name_input:<=%"
    set "comic-name_input=%comic-name_input:>=%"
    set "comic-name_input=%comic-name_input:&=%"
    set "comic-name_input=%comic-name_input:^=%"
    set "comic-name_input=%comic-name_input:"=%"
    set "comic-name_input=%comic-name_input:?=%"
    set "comic-name_input=%comic-name_input::=%"
    set "comic-name_input=%comic-name_input:/=%"
    set "comic-name_input=%comic-name_input:\=%"
    set "comic-name_input=%comic-name_input:!=%"
    set "comic-name_input=%comic-name_input:?=%"
    set "comic-name_input=%comic-name_input:.=%"
    set "comic-name_input=%comic-name_input:´=-%"
    set "comic-name_input=%comic-name_input:'=-%"
    set "comic-name_input=%comic-name_input:é=e%"
    set "comic-name_input=%comic-name_input:è=e%"
:comic-name_input
    color 0a
    cls
    echo    Name des Comics / Name der Bildreihe
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
    echo   ¦    Name des Comics / Der Bildreihe: (Von der Webseite übernummen)
    echo   ¦     ^*-^> 1 = %comic-name_input%
    echo   ¦     ^*-^> 2 = %comic-name_input% (%language_input%)
    echo   ¦     ^*-^> 3 = [%artist_input%] %comic-name_input%
    echo   ¦     ^*-^> 4 = [%artist_input%] %comic-name_input% (%language_input%)
    echo   ¦
    echo   ¦
    echo   ¦
    echo   ¦         *Die von mir empfohlenen Formate für Comicnamen: (*=optional)
    echo   ¦            [Name Autor/en] Comicnamen/Namen_der_Bildreihe (*Sprache) [*Name Übersetzer] (*status)    -^>    [Tom Fischbach] TwoKinds Kapitel 01 (english)
    echo   ¦            Comicnamen/Namen_der_Bildreihe (*Sprache) [*Name Autor/en]                                -^>    TwoKinds Kapitel 01 (english) [Tom Fischbach]
    echo   ¦
    echo   ¦            * Sie sollten sich im bessten Fall für ein einheitliches Format entscheiden, um später alles leicht wiederzufinden :-)
    echo   ¦
    echo   ¦
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo.
    echo   #  Geben Sie nun den Namen des Comics ein:
    echo         - Möchten Sie den vorgeschlagenen Namen 1 übernehmen, drücken Sie [Enter] ohne eine weietre Eingabe.
    echo         - Möchten Sie den vorgeschlagenen Namen 2 übernehmen, drücken Sie 2 und dann [Enter]
    echo         - Möchten Sie den vorgeschlagenen Namen 3 übernehmen, drücken Sie 3 und dann [Enter] (und so weiter)
    echo         ^* Sollte keiner der Vorgeschlagenen Namen passen, können Sie auch selbst einen Namen eingeben oder mit [strg] + [V] einfügen
    echo         # Eingabe mit [Enter] bestätigen: 
    echo.
    SET "comic-name_input_temp=%comic-name_input%"
    set /p "comic-name_input=------> Name: "
    
        IF "%comic-name_input%"=="1" SET "comic-name_input=%comic-name_input_temp%"
        IF "%comic-name_input%"=="2" SET "comic-name_input=%comic-name_input_temp% (%language_input%)"
        IF "%comic-name_input%"=="3" SET "comic-name_input=[%artist_input%] %comic-name_input_temp%"
        IF "%comic-name_input%"=="4" SET "comic-name_input=[%artist_input%] %comic-name_input_temp% (%language_input%)"
    
    :AntiSonderzeichenName
    ::Entferne Sonderzeichen aus dem eingegebenen String
    set "comic-name_input=%comic-name_input:|=-%"
    set "comic-name_input=%comic-name_input:<=%"
    set "comic-name_input=%comic-name_input:>=%"
    set "comic-name_input=%comic-name_input:&=%"
    set "comic-name_input=%comic-name_input:^=%"
    set "comic-name_input=%comic-name_input:"=%"
    set "comic-name_input=%comic-name_input:?=%"
    set "comic-name_input=%comic-name_input::=%"
    set "comic-name_input=%comic-name_input:/=%"
    set "comic-name_input=%comic-name_input:\=%"
    set "comic-name_input=%comic-name_input:!=%"
    set "comic-name_input=%comic-name_input:?=%"
    set "comic-name_input=%comic-name_input:.=%"
    set "comic-name_input=%comic-name_input:´=-%"
    set "comic-name_input=%comic-name_input:'=-%"
    set "comic-name_input=%comic-name_input:é=e%"
    set "comic-name=%comic-name_input:è=e%"

    set "comic-name_=%comic-name: =_%"
    ::set "comic-name_short=%comic-name_:~0,99%"


        if exist "%save-to%\%dl-theme%\%comic-name_%" cls & echo. & echo     Der Name %comic-name% ist bereist vergeben! & echo     Bitte wählen Sie einen anderen Namen. & choice /N /C 123 /T 1 /D 1 /M "" >NUL & goto comic-name_input





    ::aktiviere äöü
    
    
    