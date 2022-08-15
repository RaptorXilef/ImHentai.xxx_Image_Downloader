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
    echo   ^>     DB-^> %savePath_renew%
    echo   ^>  ^*  Neu-^> %savePath_renew%
    echo   ^>
    echo   ^>    Aktueller Downloadordner/-unterordner:
    echo   ^>     DB-^> %dl_folder_renew%
    echo   ^>  ^*  Neu-^> %dl_folder%
    echo   ^>
::    echo   ^>    Comic-Identifikationsnummer:
::    echo   ^>  ^*  DB-^> %comicId_renew%
::    echo   ^>
::    echo   ^>    Comic-URL:
::    echo   ^>  ^*  DB-^> %mainUrl_renew%
::    echo   ^>
::    echo   ^>    Download-URL (Basis):
::    echo   ^>     DB-^> %imageDownloadFolderURL_renew%*.*
::    echo   ^>  ^*  Web-^> %imageDownloadFolderURL%*.*
::    echo   ^>
    echo   ^>    Name des Comics / Der Bildreihe:
    echo   ^>  ^*  DB-^> %comic-name_renew%
    echo   ^>
SET /a "pages_start=%pageCountInput_renew%+1"
SET /a "pages_count=%pageCountInput%-%pageCountInput_renew%"
    echo   ^>    Downloadbeginn von Seite ... bis Seite ... (Anzahl Seiten):
    echo   ^>     DB -^> Seite 1 - %pageCountInput_renew% (%pageCountInput_renew% Seite/n)
    echo   ^>  ^*  Neu-^> Seite %pages_start% - %pageCountInput% (=%pages_count% Seite/n)
    echo   ^>
::    echo   ^>    Seitenanzahl:
::    echo   ^>     DB-^> %pageCountInput_renew%
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
    echo         - Die angegebene Zahl muss größer sein als "%pageCountInput_renew%".
    echo         - Möchten Sie die vorgeschlagene Seitenanzahl übernehmen, drücken Sie nur [Enter] ohne Eingabe einer anderen Zahl.
    echo         # Eingabe mit [Enter] bestätigen:
    echo.
    set /p "pageCountInput=------> Letzte Seite: "


    SET /a "pages=%pageCountInput%"

    IF %pages_tobig% GTR %pageCountInput% SET /a "pageCountInput=%pages_tobig%"


    IF %pages% LEQ %pageCountInput_renew% color 0c && echo %pages% ist kleiner als %pageCountInput_renew% und damit ungültig. && echo Bitte versuchen Sie es erneut! && pause && goto pageCountInput

    SET "savePath=%savePath_renew%"
    SET "dl_folder=%dl_folder_renew%"
    SET "comicId=%comicId_renew%"
    SET "mainUrl=%mainUrl_renew%"


    :AntiSonderzeichenName
    ::Entferne Sonderzeichen aus dem eingegebenen String
    set "comicNameInput=%comic-name_renew:<=%"
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
    set "comic-name=%comicNameInput:è=e%"

    set "comic-name_=%comic-name: =_%"


        IF NOT EXIST "%savePath%\%dl_folder%\%comic-name_%" SET /a "pages_start=1"

    ::aktiviere äöü
