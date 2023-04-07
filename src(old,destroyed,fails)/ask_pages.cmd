set /a pages_tobig=%pageCountInput%
:pageCountInput
    color 0a
    cls
    echo    Seitenanzahl
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
    echo   ^>     -^> %downloadFolder%
    echo   ^>
    echo   ^>    Comic-Identifikationsnummer:
    echo   ^>     -^> %comicId%
    echo   ^>
    echo   ^>    Comic-URL:
    echo   ^>     -^> %mainUrl%
    echo   ^>
    echo   ^>    Download-URL (Basis): (Von der Webseite übernummen)
    echo   ^>     -^> %imageDownloadFolderURL%*.*
    echo   ^>
    echo   ^>    Seitenanzahl: (Von der Webseite übernummen)
    echo   ^>     *-^> %pageCountInput%
    echo   ^>
    echo   ^>
    echo   ^>
    echo   +=======================================================================================================================================================================
    echo.
    echo   #  Geben Sie die Anzahl der Seiten an, welche heruntergeladen werden sollen:
    echo         - Möchten Sie die vorgeschlagene Seitenanzahl übernehmen, drücken Sie nur [Enter] ohne Eingabe einer anderen Zahl.
    echo         # Eingabe mit [Enter] bestätigen:
    echo.
    set /p "pageCountInput=------> Seitenanzahl: "


    SET /a "pages=%pageCountInput%"

    IF %pages_tobig% GTR %pageCountInput% SET /a "pageCountInput=%pages_tobig%"


    ::aktiviere äöü
