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
    echo   ^>    Download-URL (Basis): (Von der Webseite �bernummen)
    echo   ^>     -^> %imageDownloadFolderURL%*.*
    echo   ^>
    echo   ^>    Seitenanzahl: (Von der Webseite �bernummen)
    echo   ^>     *-^> %pageCountInput%
    echo   ^>
    echo   ^>
    echo   ^>
    echo   +=======================================================================================================================================================================
    echo.
    echo   #  Geben Sie die Anzahl der Seiten an, welche heruntergeladen werden sollen:
    echo         - M�chten Sie die vorgeschlagene Seitenanzahl �bernehmen, dr�cken Sie nur [Enter] ohne Eingabe einer anderen Zahl.
    echo         # Eingabe mit [Enter] best�tigen:
    echo.
    set /p "pageCountInput=------> Seitenanzahl: "


    SET /a "pages=%pageCountInput%"

    IF %pages_tobig% GTR %pageCountInput% SET /a "pageCountInput=%pages_tobig%"


    ::aktiviere ���
