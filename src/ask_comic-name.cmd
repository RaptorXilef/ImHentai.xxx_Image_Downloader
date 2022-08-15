goto %chcpCodeNumber%
:chcp65001
    IF "%DEBUG%"=="DebugON" (CHCP 65001) else (CHCP 65001>nul)
:chcp1252
::Entferne Sonderzeichen aus dem eingegebenen String der von der Webseite kommt
    set "comicNameInput=%comicNameInput:|=-%"
    set "comicNameInput=%comicNameInput:<=%"
    set "comicNameInput=%comicNameInput:>=%"
    set "comicNameInput=%comicNameInput:&=%"
    set "comicNameInput=%comicNameInput:^=%"
    set "comicNameInput=%comicNameInput:"=%"
    set "comicNameInput=%comicNameInput:?=%"
    set "comicNameInput=%comicNameInput::=%"
    set "comicNameInput=%comicNameInput:/=%"
    set "comicNameInput=%comicNameInput:\=%"
    set "comicNameInput=%comicNameInput:!=%"
    set "comicNameInput=%comicNameInput:?=%"
    set "comicNameInput=%comicNameInput:.=%"
    set "comicNameInput=%comicNameInput:�=-%"
    set "comicNameInput=%comicNameInput:'=-%"
    set "comicNameInput=%comicNameInput:�=e%"
    set "comicNameInput=%comicNameInput:�=e%"
:comicNameInput
    color 0a
    cls
    echo    Name des Comics / Name der Bildreihe
    echo   +=======================================================================================================================================================================
    echo   ^>
    echo   ^>  Bisherige Eingaben
    echo   ^>  ==================
    echo   ^>
    echo   ^>
    echo   ^>    Speichern unter:
    echo   ^>     -^> %savePath%
    echo   ^>
    echo   ^>    Aktueller Downloadordner/-unterordner:
    echo   ^>     -^> %dl_folder%
    echo   ^>
    echo   ^>    Comic-Identifikationsnummer:
    echo   ^>     -^> %comicId%
    echo   ^>
    echo   ^>    Comic-URL:
    echo   ^>     -^> %mainUrl%
    echo   ^>
    echo   ^>    Download-URL (Basis):
    echo   ^>     -^> %imageDownloadFolderURL%*.*
    echo   ^>
    echo   ^>    Seitenanzahl:
    echo   ^>     -^> %pages%
    echo   ^>
    echo   ^>    Name des Comics / Der Bildreihe: (Von der Webseite �bernummen)(Koreanische und Japanische Zeichen werden nicht unterst�tzt!)
    echo   ^>     ^*-^> 1 = %comicNameInput%
    echo   ^>     ^*-^> 2 = %comicNameInput% (%languageInput%)
    echo   ^>     ^*-^> 3 = [%artistInput%] %comicNameInput%
    echo   ^>     ^*-^> 4 = [%artistInput%] %comicNameInput% (%languageInput%)
    echo   ^>
    echo   ^>
    echo   ^>
  IF "%DEBUG%"=="DebugON" (CHCP 1252) else (CHCP 1252>nul)
    echo   ^>         *Die von mir empfohlenen Formate f�r Comicnamen: (*=optional)
    echo   ^>            [Name Autor/en] Comicnamen/Namen_der_Bildreihe (*Sprache) [*Name �bersetzer] (*status)    -^>    [Tom Fischbach] TwoKinds Kapitel 01 (english)
    echo   ^>            Comicnamen/Namen_der_Bildreihe (*Sprache) [*Name Autor/en]                                -^>    TwoKinds Kapitel 01 (english) [Tom Fischbach]
    echo   ^>
    echo   ^>            * Sie sollten sich im bessten Fall f�r ein einheitliches Format entscheiden, um sp�ter alles leicht wiederzufinden :-)
    echo   ^>
    echo   ^>
    echo   +=======================================================================================================================================================================
    echo.
    echo   #  Geben Sie nun den Namen des Comics ein:
    echo         - M�chten Sie den vorgeschlagenen Namen 1 �bernehmen, dr�cken Sie [Enter] ohne eine weietre Eingabe.
    echo         - M�chten Sie den vorgeschlagenen Namen 2 �bernehmen, dr�cken Sie 2 und dann [Enter]
    echo         - M�chten Sie den vorgeschlagenen Namen 3 �bernehmen, dr�cken Sie 3 und dann [Enter] (und so weiter)
    echo         ^* Sollte keiner der Vorgeschlagenen Namen passen, k�nnen Sie auch selbst einen Namen eingeben oder mit [strg] + [V] einf�gen
    echo         # Eingabe mit [Enter] best�tigen:
    echo.
  goto %chcpCodeNumber%
  :chcp65001
      IF "%DEBUG%"=="DebugON" (CHCP 65001) else (CHCP 65001>nul)
  :chcp1252
    SET "comicNameInput_temp=%comicNameInput%"
    set /p "comicNameInput=------> Name: "

        IF "%comicNameInput%"=="1" SET "comicNameInput=%comicNameInput_temp%"
        IF "%comicNameInput%"=="2" SET "comicNameInput=%comicNameInput_temp% (%languageInput%)"
        IF "%comicNameInput%"=="3" SET "comicNameInput=[%artistInput%] %comicNameInput_temp%"
        IF "%comicNameInput%"=="4" SET "comicNameInput=[%artistInput%] %comicNameInput_temp% (%languageInput%)"

    :AntiSonderzeichenName
    ::Entferne Sonderzeichen aus dem eingegebenen String
    set "comicNameInput=%comicNameInput:|=-%"
    set "comicNameInput=%comicNameInput:<=%"
    set "comicNameInput=%comicNameInput:>=%"
    set "comicNameInput=%comicNameInput:&=%"
    set "comicNameInput=%comicNameInput:^=%"
    set "comicNameInput=%comicNameInput:"=%"
    set "comicNameInput=%comicNameInput:?=%"
    set "comicNameInput=%comicNameInput::=%"
    set "comicNameInput=%comicNameInput:/=%"
    set "comicNameInput=%comicNameInput:\=%"
    set "comicNameInput=%comicNameInput:!=%"
    set "comicNameInput=%comicNameInput:?=%"
    set "comicNameInput=%comicNameInput:.=%"
    set "comicNameInput=%comicNameInput:�=-%"
    set "comicNameInput=%comicNameInput:'=-%"
    set "comicNameInput=%comicNameInput:�=e%"
    set "comic-name=%comicNameInput:�=e%"

    set "comic-name_=%comic-name: =_%"
    ::set "comic-name_short=%comic-name_:~0,99%"


        IF exist "%savePath%\%dl-theme%\%comic-name_%" cls & echo. & echo     Der Name %comic-name% ist bereist vergeben! & echo     Bitte w�hlen Sie einen anderen Namen. & choice /N /C 123 /T 1 /D 1 /M "" >NUL & goto comicNameInput





    ::aktiviere ���
