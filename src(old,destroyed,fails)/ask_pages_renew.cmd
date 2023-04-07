set /a pages_tobig=%pageCountInput%
:pageCountInput
    color 0e
    cls
    echo =================================================================================
    echo Das Comic/Die Bildreihe auf der angegebenen Seite wurden bereits heruntergeladen!
    echo  Jedoch wurde eine Änderung an der Seite erkannt. Es gibt folgende unterschiede:
    echo =================================================================================

    echo    Nummer der letzten Seite
    echo   +=======================================================================================================================================================================
    echo   ^>
    echo   ^>  Daten aus der DatenBank = "DB->"
    echo   ^>  ================================
    echo   ^>  Neue Werte von der Webseite oder manueller Eingabe= "Neu->"
    echo   ^>
    echo   ^>    Speichern unter:
    echo   ^>     DB-^> %savePathRenew%
    echo   ^>  ^*  Neu-^> %savePathRenew%
    echo   ^>
    echo   ^>    Aktueller Downloadordner/-unterordner:
    echo   ^>     DB-^> %downloadFolderRenew%
    echo   ^>  ^*  Neu-^> %downloadFolder%
    echo   ^>
::    echo   ^>    Comic-Identifikationsnummer:
::    echo   ^>  ^*  DB-^> %comicIdRenew%
::    echo   ^>
::    echo   ^>    Comic-URL:
::    echo   ^>  ^*  DB-^> %mainUrlRenew%
::    echo   ^>
::    echo   ^>    Download-URL (Basis):
::    echo   ^>     DB-^> %imageDownloadFolderURLRenew%*.*
::    echo   ^>  ^*  Web-^> %imageDownloadFolderURL%*.*
::    echo   ^>
    echo   ^>    Name des Comics / Der Bildreihe:
    echo   ^>  ^*  DB-^> %comicNameRenew%
    echo   ^>
SET /a "pages_start=%pageCountInputRenew%+1"
SET /a "pages_count=%pageCountInput%-%pageCountInputRenew%"
    echo   ^>    Downloadbeginn von Seite ... bis Seite ... (Anzahl Seiten):
    echo   ^>     DB -^> Seite 1 - %pageCountInputRenew% (%pageCountInputRenew% Seite/n)
    echo   ^>  ^*  Neu-^> Seite %pages_start% - %pageCountInput% (=%pages_count% Seite/n)
    echo   ^>
::    echo   ^>    Seitenanzahl:
::    echo   ^>     DB-^> %pageCountInputRenew%
::    echo   ^>  ^*  ^*Neu-^> %pageCountInput%
::    echo   ^>
    echo   ^>
    echo   ^>        ^*Es werden nur die neueren Seiten/Bilder heruntergeladen
    echo   ^>        ^*Die werte mit einem ^* werden mit Klick auf [Enter] übernommen!
    echo   ^>          (Sollte der Speicherort noch nicht Existieren oder gelöscht worden sein, werden alle Seiten bis zum angegebenen Ende heruntergeladen)
    echo   ^>
    echo   +=======================================================================================================================================================================
    echo.
    echo   #  Geben Sie die Nummer der letzten Seiten an, bis zu welcher heruntergeladen werden sollen:
    echo         - Die angegebene Zahl muss größer sein als "%pageCountInputRenew%".
    echo         - Möchten Sie die vorgeschlagene Seitenanzahl übernehmen, drücken Sie nur [Enter] ohne Eingabe einer anderen Zahl.
    echo         # Eingabe mit [Enter] bestätigen:
    echo.
    set /p "pageCountInput=------> Letzte Seite: "


    SET /a "pages=%pageCountInput%"

    IF %pages_tobig% GTR %pageCountInput% SET /a "pageCountInput=%pages_tobig%"


    IF %pages% LEQ %pageCountInputRenew% color 0c && echo %pages% ist kleiner als %pageCountInputRenew% und damit ungültig. && echo Bitte versuchen Sie es erneut! && pause && goto pageCountInput

    SET "savePath=%savePathRenew%"
    SET "downloadFolder=%downloadFolderRenew%"
    SET "comicId=%comicIdRenew%"
    SET "mainUrl=%mainUrlRenew%"


    :AntiSonderzeichenName
    ::Entferne Sonderzeichen aus dem eingegebenen String
    set "comicNameInput=%comicNameRenew:<=%"
    set "comicNameInput=%comicNameInput:>=%"
    set "comicNameInput=%comicNameInput:&=%"
    set "comicNameInput=%comicNameInput:|=%"
    set "comicNameInput=%comicNameInput:^=%"
    set "comicNameInput=%comicNameInput:"=%"
    set "comicNameInput=%comicNameInput:?=%"
    set "comicNameInput=%comicNameInput::=%"
    set "comicNameInput=%comicNameInput:/=%"
    set "comicNameInput=%comicNameInput:\=%"
    set "comicNameInput=%comicNameInput:!=%"
    set "comicNameInput=%comicNameInput:?=%"
    set "comicNameInput=%comicNameInput:.=%"
    set "comicNameInput=%comicNameInput:´=-%"
    set "comicNameInput=%comicNameInput:é=e%"
    set "comicName=%comicNameInput:è=e%"

    set "comicName_=%comicName: =_%"


        IF NOT EXIST "%savePath%\%downloadFolder%\%comicName_%" SET /a "pages_start=1"

    ::aktiviere äöü
