REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: ConsoleOutputMenus.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

REM display in the console
REM Anzeige in der Konsole
IF "%DEBUG%"=="DebugON" ( ECHO Debug-Info: Var-outputMenu=%outputMenu% & CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL )
GOTO %outputMenu%
:OutputMenuCountrycode
    %colorEcho%    # {0B}Choose Language / Sprache wählen{#} # {\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}Countrycodes{#}{\n}
    %colorEcho%   ^>  {07}============{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>    {02}English =^> en (not available yet){#}{\n}
    %colorEcho%   ^>    {02}Deutsch =^> de{#}{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    ECHO.
    %colorEcho%   #  {07}en: Choose a Countrycode. Than klick [Enter]{#}{\n}
    %colorEcho%   #  {07}de: Wählen Sie einen Ländercode. Dann bestätigen Sie mit [Enter]{#}{\n}
    ECHO.
    GOTO BackToMainCode

:OutputMenuSavePath
    %colorEcho%    # {0B}%outputMenuSavePath_header%{#} # {\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}%outputMenuSavePath_headline1%{#}{\n}
    %colorEcho%   ^>  {07}%outputMenuSavePath_headline2%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>    {0f}%outputMenuSavePath_body1%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>      {07}%outputMenuSavePath_body2%{#}{\n}
    %colorEcho%   ^>        {08}%outputMenuSavePath_body3%{#}{\n}
    %colorEcho%   ^>        {08}%outputMenuSavePath_body4%{#}{\n}
    %colorEcho%   ^>        {08}%outputMenuSavePath_body5%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>      {07}%outputMenuSavePath_body6%{#}{\n}
    %colorEcho%   ^>        {08}%outputMenuSavePath_body7%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>      {07}%outputMenuSavePath_body8%{#}{\n}
    %colorEcho%   ^>        {08}%outputMenuSavePath_body9%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    ECHO.
    ECHO   #  %outputMenuSavePath_footer%
    ECHO.
    GOTO BackToMainCode

:OutputMenuMainUrl
    ECHO.
    %colorEcho%    # {0B}%outputMenuMainUrl_header%{#} # {\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}%outputMenuMainUrl_headline1%{#}{\n}
    %colorEcho%   ^>  {07}%outputMenuMainUrl_headline2%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>    {02}%outputMenuMainUrl_body1%{#}{\n}
    %colorEcho%   ^>     {07}-^> %savePath%{#}\*{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    %colorEcho%   #  {07}%outputMenuMainUrl_body2% {0B}%outputMenuMainUrl_body3%{07} %outputMenuMainUrl_body4% {0B}%outputMenuMainUrl_body5%{07} %outputMenuMainUrl_body6%:{#}{\n}
    %colorEcho%         - {08}%outputMenuMainUrl_body7%{#}{\n}
    %colorEcho%          - {08}%outputMenuMainUrl_body8%: https://imhentai.xxx/gallery/598258/   %outputMenuMainUrl_body4%   https://imhentai.xxx/gallery/000258/{#}{\n}
    %colorEcho%          - {08}%outputMenuMainUrl_body8%: 598258, 397 %outputMenuMainUrl_body4% 000237{#}{\n}
    %colorEcho%         # {07}%outputMenuMainUrl_footer%: {#}{\n}
    ECHO.
    GOTO BackToMainCode

:OutputMenuDownloadFolderInput
    ECHO    Thema: Unterordner wählen / Thema wählen
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    ECHO   ^>  Downloadthema
    ECHO   ^>  =============
    ECHO   ^>
    ECHO   ^>
    ECHO   ^>    Eingabe ^| Unter-Ordnername
    ECHO   ^>    --------^|----------------------
    ECHO   ^>       d    ^| Downloads_Allgemein
    ECHO   ^>       a    ^| Animals_-_Feral
    ECHO   ^>       dr   ^| Dragon
    ECHO   ^>       f    ^| Furry
    ECHO   ^>       c    ^| Furry_Cub
    ECHO   ^>       h    ^| Human /Menschen
    ECHO   ^>       hc   ^| Human Children
    ECHO   ^>       k    ^| Kids_movies
    ECHO   ^>       p    ^| Pokemon
    ECHO   ^>       di   ^| Digimon
    ECHO   ^>       s    ^| Spezial
    ECHO   ^>       z    ^| Zootopia
    ECHO   ^>       an   ^| Anime
    ECHO   ^>       de   ^| Deutsch
    ECHO   ^>      mlp   ^| MyLittlePony
    ECHO   ^>      pic   ^| Pictures_only
    ECHO   ^>       tk   ^| TwoKinds
    ECHO   ^>      tlk   ^| The_Lion_King
    ECHO   ^>       o    ^| Other
    ECHO   ^>
    ECHO   ^>      sfw   ^| SFW
    ECHO   ^>
    ECHO   ^>       f    ^| Favouriten
    ECHO   ^>
    ECHO   ^>            ^| Manuelle Eingabe eines eigenen Ordnernamen (Der Inhalt des Ordners wird nur bei dessen Auswahl geprüft) (In dieser Version nicht empfohlen)
    ECHO   ^>
    ECHO   ^>
    ECHO   ^>       i    ^| ImHentai.xxx öffnen
    ECHO   ^>       e    ^| Exit / Anwendung beenden
    ECHO   +=======================================================================================================================================================================
    ECHO.
    ECHO   #  In welchen Ordner soll der Comic gedownloadet werden?
    ECHO         - Beispiel: tk
    ECHO         # Eingabe mit Enter bestätigen:
    ECHO.
    GOTO BackToMainCode

:OutputMenuPageCountInput
    ECHO    Thema: Seitenanzahl
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    ECHO   ^>  Bisherige Eingaben
    ECHO   ^>  ==================
    ECHO   ^>
    ECHO   ^>
    ECHO   ^>    Speichern unter:
    ECHO   ^>     -^> %savePath%
    ECHO   ^>
    ECHO   ^>    Aktueller Downloadordner/-unterordner:
    ECHO   ^>     -^> %downloadFolder%
    ECHO   ^>
    ECHO   ^>    Comic-Identifikationsnummer:
    ECHO   ^>     -^> %comicId%
    ECHO   ^>
    ECHO   ^>    Comic-URL:
    ECHO   ^>     -^> %mainUrl%
    ECHO   ^>
    ECHO   ^>    Download-URL (Basis): (Von der Webseite übernummen)
    ECHO   ^>     -^> %imageDownloadFolderURL%*.*
    ECHO   ^>
    ECHO   ^>    Seitenanzahl: (Von der Webseite übernummen)
    ECHO   ^>     *-^> %pageCountInput%
    ECHO   ^>
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    ECHO   #  Geben Sie die Anzahl der Seiten an, welche heruntergeladen werden sollen:
    ECHO         - Möchten Sie die vorgeschlagene Seitenanzahl übernehmen, drücken Sie nur [Enter] ohne Eingabe einer anderen Zahl.
    ECHO         # Eingabe mit [Enter] bestätigen:
    ECHO.
    GOTO BackToMainCode

:OutputMenuPageCountInputRenew
    echo =================================================================================
    echo Das Comic/Die Bildreihe auf der angegebenen Seite wurden bereits heruntergeladen!
    echo  Jedoch wurde eine Änderung an der Seite erkannt. Es gibt folgende unterschiede:
    echo =================================================================================
    echo.
    echo    Thema: Nummer der letzten Seite
    echo   +=======================================================================================================================================================================
    echo   ^>
    echo   ^>  Daten aus der DatenBank = "DB->"
    echo   ^>  ================================
    echo   ^>  Neue Werte werden wie folgt makiert: "Neu->"
    echo   ^>
    echo   ^>    Speichern unter:
    echo   ^>     DB-^> %savePathRenew%
    echo   ^>  ^*  Neu-^> %savePathRenew%
    echo   ^>
    echo   ^>    Aktueller Downloadordner/-unterordner:
    echo   ^>     DB-^> %downloadFolderRenew%
    echo   ^>  ^*  Neu-^> %downloadFolder%
    echo   ^>
    echo   ^>    Name des Comics / Der Bildreihe:
    echo   ^>  ^*  DB-^> %comicNameRenew%
    echo   ^>
SET /a "pages_start=%pageCountInputRenew%+1"
SET /a "pages_count=%pageCountInput%-%pageCountInputRenew%"
    echo   ^>    Download beginnt bei Seite ... und geht bis Seite ... (Anzahl Seiten):
    echo   ^>     DB -^> Seite 1 - %pageCountInputRenew% (%pageCountInputRenew% Seite/n)
    echo   ^>  ^*  Neu-^> Seite %pages_start% - %pageCountInput% (=%pages_count% Seite/n)
    echo   ^>
    echo   ^>
    echo   ^>        ^*Es werden nur die neuen Seiten/Bilder heruntergeladen. Die bereits heruntergeladenen werden übersprungen!
    echo   ^>        ^*Die Werte mit einem ^* werden mit Klick auf [Enter] bestätigt und übernommen!
    echo   ^>          (Sollte der Speicherort noch nicht Existieren oder gelöscht worden sein, werden alle Seiten beginnend bei Seite 1 bis zum angegebenen Ende heruntergeladen)
    echo   ^>
    echo   +=======================================================================================================================================================================
    echo.
    echo   #  Geben Sie die Nummer der (letzten) Seiten an, bis zu welcher heruntergeladen werden sollen:
    echo         - Die angegebene Zahl muss größer sein als "%pageCountInputRenew%".
    echo         - Möchten Sie die vorgeschlagene Seitenanzahl übernehmen, drücken Sie [Enter] ohne Eingabe einer Zahl.
    echo         # Eingabe jetzt mit [Enter] bestätigen:
    ECHO.
    GOTO BackToMainCode

:OutputMenuComicNameInput
    echo    Thema: Name des Comics / Name der Bildreihe
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
    echo   ^>    Download-URL (Basis):
    echo   ^>     -^> %imageDownloadFolderURL%*.*
    echo   ^>
    echo   ^>    Seitenanzahl:
    echo   ^>     -^> %pages%
    echo   ^>
    echo   ^>    Name des Comics / Der Bildreihe: (Von der Webseite übernummen)(Koreanische und Japanische Zeichen werden nicht unterstützt!)
    echo   ^>     ^*-^> 1 = %comicNameInput%
    echo   ^>     ^*-^> 2 = %comicNameInput% (%languageInput%)
    echo   ^>     ^*-^> 3 = [%artistInput%] %comicNameInput%
    echo   ^>     ^*-^> 4 = [%artistInput%] %comicNameInput% (%languageInput%)
    echo   ^>
    echo   ^>
    echo   ^>
  IF "%DEBUG%"=="DebugON" (ECHO DEBUG-Info: & CHCP 1252) else (CHCP 1252>nul)
    echo   ^>         *Die von mir empfohlenen Formate für Comicnamen: (*=optional)
    echo   ^>            [Name Autor/en] Comicnamen/Namen_der_Bildreihe (*Sprache) [*Name Übersetzer] (*status)    -^>    [Tom Fischbach] TwoKinds Kapitel 01 (english)
    echo   ^>            Comicnamen/Namen_der_Bildreihe (*Sprache) [*Name Autor/en]                                -^>    TwoKinds Kapitel 01 (english) [Tom Fischbach]
    echo   ^>
    echo   ^>            * Sie sollten sich im bessten Fall für ein einheitliches Format entscheiden, um später alles leicht wiederzufinden :-)
    echo   ^>
    echo   ^>
    echo   +=======================================================================================================================================================================
    echo.
    echo   #  Geben Sie nun den Namen des Comics ein:
    echo         - Möchten Sie den vorgeschlagenen Namen 1 übernehmen, drücken Sie [Enter] ohne Eingabe einer Zahl.
    echo         - Möchten Sie den vorgeschlagenen Namen 2 übernehmen, drücken Sie 2 und dann [Enter]
    echo         - Möchten Sie den vorgeschlagenen Namen 3 übernehmen, drücken Sie 3 und dann [Enter] (und so weiter)
    echo         ^* Sollte keiner der Vorgeschlagenen Namen passen, können Sie auch selbst einen Namen eingeben oder mit [strg] + [V] einfügen
    echo         # Eingabe mit [Enter] bestätigen:
    ECHO.
    GOTO BackToMainCode

:OutputMenuRllRightInput
    echo    Sind alle angaben korrekt? / Download starten?
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
    echo   ^>     -^> %main-url%
    echo   ^>
    echo   ^>    Download-URL (Basis):
    echo   ^>     -^> %imageDownloadFolderURL%*.*
    echo   ^>
    echo   ^>    Seitenanzahl:
    echo   ^>     -^> %pages%
    echo   ^>
    echo   ^>    Name des Comics / Der Bildreihe:
    echo   ^>     -^> %comicName%
    echo   ^>
    echo   ^>
  IF "%DEBUG%"=="DebugON" (CHCP 1252) else (CHCP 1252>nul)
    echo   ^>    j = Download wird gestartet.         n = Alle Angaben werden wieder zurückgesetzt und die Eingabe gebinnt von vorn.
    echo   +=======================================================================================================================================================================
    echo.
    echo   #  Sind alle oben angezeigten Daten richtig? Kann der Download gestartet werden?
    echo         -   j / n    (ja/nein)
    echo         # Eingabe mit [Enter] bestätigen:
    echo.
    ECHO.
    GOTO BackToMainCode

:OutputMenuRllRightRenewInput
    echo    Sind alle angaben korrekt? / Download starten?
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
    echo   ^>    Download-URL (Basis):
    echo   ^>     -^> %imageDownloadFolderURL%*.*
    echo   ^>
::    echo   ^>    Seitenanzahl:
::    echo   ^>     -^> %pages%
::    echo   ^>
    echo   ^>    Downloadbeginn von Seite ... bis Seite ... (Anzahl Seiten):
    echo   ^>     -^> Seite %pages_start% - %pageCountInput% (=%pages_count% Seite/n)
    echo   ^>
    echo   ^>    Name des Comics / Der Bildreihe:
    echo   ^>     -^> %comicName%
    echo   ^>
    echo   ^>
  IF "%DEBUG%"=="DebugON" (CHCP 1252) else (CHCP 1252>nul)
    echo   ^>    j = Download wird gestartet.         n = Alle Angaben werden wieder zurückgesetzt und die Eingabe gebinnt von vorn.
    echo   +=======================================================================================================================================================================
    echo.
    echo   #  Sind alle oben angezeigten Daten richtig? Kann der Download gestartet werden?
    echo         -   j / n    (ja/nein)
    echo         # Eingabe mit [Enter] bestätigen:
    echo.
    GOTO BackToMainCode

























































:BackToMainCode
EXIT /B
::äöü Aktivieren https://www.laenderdaten.info/laendercodes.php
