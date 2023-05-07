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
    %colorEcho%    # {0B}%LANG_ConsoleOutputMenus_OutputMenuSavePath_header%{#} # {\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}%LANG_ConsoleOutputMenus_OutputMenuSavePath_headline1%{#}{\n}
    %colorEcho%   ^>  {07}%LANG_ConsoleOutputMenus_OutputMenuSavePath_headline2%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>    {0f}%LANG_ConsoleOutputMenus_OutputMenuSavePath_body1%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>      {07}%LANG_ConsoleOutputMenus_OutputMenuSavePath_body2%{#}{\n}
    %colorEcho%   ^>        {08}%LANG_ConsoleOutputMenus_OutputMenuSavePath_body3%{#}{\n}
    %colorEcho%   ^>        {08}%LANG_ConsoleOutputMenus_OutputMenuSavePath_body4%{#}{\n}
    %colorEcho%   ^>        {08}%LANG_ConsoleOutputMenus_OutputMenuSavePath_body5%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>      {07}%LANG_ConsoleOutputMenus_OutputMenuSavePath_body6%{#}{\n}
    %colorEcho%   ^>        {08}%LANG_ConsoleOutputMenus_OutputMenuSavePath_body7%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>      {07}%LANG_ConsoleOutputMenus_OutputMenuSavePath_body8%{#}{\n}
    %colorEcho%   ^>        {08}%LANG_ConsoleOutputMenus_OutputMenuSavePath_body9%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    ECHO.
    ECHO   #  %LANG_ConsoleOutputMenus_OutputMenuSavePath_footer%
    ECHO.
    GOTO BackToMainCode

:OutputMenuMainUrl
    ECHO.
    %colorEcho%    # {0B}%LANG_ConsoleOutputMenus_OutputMenueMainUrl_header%{#} # {\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}%LANG_ConsoleOutputMenus_OutputMenueMainUrl_headline1%{#}{\n}
    %colorEcho%   ^>  {07}%LANG_ConsoleOutputMenus_OutputMenueMainUrl_headline2%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>    {02}%LANG_ConsoleOutputMenus_OutputMenueMainUrl_body1%:{#}{\n}
    %colorEcho%   ^>     {07}-^> %savePath%{#}\*{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    %colorEcho%   #  {07}%LANG_ConsoleOutputMenus_OutputMenueMainUrl_body2% {0B}%LANG_ConsoleOutputMenus_OutputMenueMainUrl_body3%{07} %LANG_ConsoleOutputMenus_OutputMenueMainUrl_body4% {0B}%LANG_ConsoleOutputMenus_OutputMenueMainUrl_body5%{07} %LANG_ConsoleOutputMenus_OutputMenueMainUrl_body6%:{#}{\n}
    %colorEcho%         - {08}%LANG_ConsoleOutputMenus_OutputMenueMainUrl_body7%{#}{\n}
    %colorEcho%          - {08}%LANG_ConsoleOutputMenus_OutputMenueMainUrl_body8%: https://imhentai.xxx/gallery/598258/   %LANG_ConsoleOutputMenus_OutputMenueMainUrl_body4%   https://imhentai.xxx/gallery/000258/{#}{\n}
    %colorEcho%          - {08}%LANG_ConsoleOutputMenus_OutputMenueMainUrl_body8%: 598258, 397 %LANG_ConsoleOutputMenus_OutputMenueMainUrl_body4% 000237{#}{\n}
    %colorEcho%         # {07}%LANG_ConsoleOutputMenus_OutputMenueMainUrl_footer%: {#}{\n}
    ECHO.
    GOTO BackToMainCode

:OutputMenuDownloadFolderInput
    %colorEcho%    # {0B}%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_header%{#}{\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}  %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_headline1%{#}{\n}
    %colorEcho%   ^>  {07}  %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_headline2%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>  {0A}  %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body1% {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body2%{#}{\n}
    %colorEcho%   ^>  {07}  --------^|----------------------{#}{\n}
    %colorEcho%   ^>  {0A}     d    {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var1%{#}{\n}
    %colorEcho%   ^>  {0A}     a    {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var2%{#}{\n}
    %colorEcho%   ^>  {0A}     dr   {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var3%{#}{\n}
    %colorEcho%   ^>  {0A}     f    {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var4%{#}{\n}
    %colorEcho%   ^>  {0A}     c    {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var5%{#}{\n}
    %colorEcho%   ^>  {0A}     h    {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var6%{#}{\n}
    %colorEcho%   ^>  {0A}     hc   {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var7%{#}{\n}
    %colorEcho%   ^>  {0A}     k    {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var8%{#}{\n}
    %colorEcho%   ^>  {0A}     p    {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var9%{#}{\n}
    %colorEcho%   ^>  {0A}     di   {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var10%{#}{\n}
    %colorEcho%   ^>  {0A}     s    {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var11%{#}{\n}
    %colorEcho%   ^>  {0A}     z    {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var12%{#}{\n}
    %colorEcho%   ^>  {0A}     an   {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var13%{#}{\n}
    %colorEcho%   ^>  {0A}     de   {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var14%{#}{\n}
    %colorEcho%   ^>  {0A}    mlp   {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var15%{#}{\n}
    %colorEcho%   ^>  {0A}    pic   {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var16%{#}{\n}
    %colorEcho%   ^>  {0A}     tk   {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var17%{#}{\n}
    %colorEcho%   ^>  {0A}    tlk   {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var18%{#}{\n}
    %colorEcho%   ^>  {0A}     o    {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var19%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>  {0A}    sfw   {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var20%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>  {0A}     f    {07}^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var21%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>  {08}          ^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body3%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>  {08}     i    ^| %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body4%{#}{\n}
    %colorEcho%   ^>  {08}     e    ^| Exit / %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body5%{#}{\n}
    ECHO   +=======================================================================================================================================================================
    ECHO.
    %colorEcho%  {07} #  %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_1%{#}{\n}
    %colorEcho%  {08}       - %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_2%{#}{\n}
    %colorEcho%  {07}       # %LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_3%{#}{\n}
    ECHO.
    GOTO BackToMainCode

:OutputMenuPageCountInput
    %colorEcho%    # {0B}%LANG_ConsoleOutputMenus_OutputMenuPageCountInput_header%{#}{\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>{0A}  %LANG_ConsoleOutputMenus_OutputMenuPageCountInput_headline1%{#}{\n}
    %colorEcho%   ^>{07}  %LANG_ConsoleOutputMenus_OutputMenuPageCountInput_headline2%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>{07}    %LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body1%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %savePath%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body2%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %downloadFolder%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body3%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %comicId%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body4%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %mainUrl%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body5%: %LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body6%{#}{\n}
    %colorEcho%   ^>{08}     -^> %imageDownloadFolderURL%*.*{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{02}    %LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body7%: {07}%LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body6%{#}{\n}
    %colorEcho%   ^>{0A}     *-^> %pageCountInput%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    %colorEcho% {07}  #  %LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body8%:{#}{\n}
    %colorEcho% {08}        - %LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body9%{#}{\n}
    %colorEcho% {07}        # %LANG_ConsoleOutputMenus_OutputMenuPageCountInput_footer%:{#}{\n}
    ECHO.
    GOTO BackToMainCode
:ggg
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
    ECHO. & PAUSE & CALL src\translations\de.cmd 1 & CLS & Goto ggg
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
    echo   ^>     -^> %mainUrl%
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
