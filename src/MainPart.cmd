REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (CLS & ECHO. & ECHO DEBUG-Info: MainPart.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

@ECHO OFF
REM Autor: RaptorXilef / Felix M.
REM Git: https://github.com/RaptorXilef
REM Projekt: https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.git
REM Patreon https://www.patreon.com/raptorxilef
REM InkBunny: https://inkbunny.net/RaptorXilef
REM Lizens: GNU GENERAL PUBLIC LICENSE - Version 3, 29 June 2007
REM ===============================================================================================
REM      Preload  #  Vorladen
REM ===============================================================================================
REM Check completeness of data
REM Überprüfe Vollständigkeit der Daten
  IF EXIST "src\preload\CheckCompleteness.cmd" (
      CALL "src\preload\CheckCompleteness.cmd" 1
      IF "!errorRestart!"=="errorRestartYES" GOTO errorRestartYES
  ) ELSE (
      CLS & COLOR 0C
      ECHO Fatal ERROR by loading "src\preload\CheckCompleteness.cmd", file do not exist & ECHO Downloads the missing file or the latest version of the software from: & ECHO https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
      PAUSE & EXIT
  )
  REM Reset Variables
  REM Resete Variablen
    CALL "src\preload\VariablesReset.cmd" 1 & %errorTestCommand%
  REM Window size, background and font color
  REM Fenstergröße, Hintergrund- und SchrIFtfarbe
  REM Window size, background and font color
  REM Fenstergröße, Hintergrund- und SchrIFtfarbe
    MODE con lines=55 cols=180
IF "%DEBUG%"=="DebugON" MODE con lines=999 cols=240
    COLOR 08
  REM Activate characters of the ASCII table like äöü ... (+ save file in ANSI)
  REM Aktiviere Zeichen der ASCII-Tabelle wie äöü ... (+ Datei in ANSI speichern)
    CHCP 1252>nul
  REM Load version number from file
  REM Lade Versionsnummer aus Datei
    FOR /f "usebackq delims=" %%f IN ("src\preload\CurrentVersion.txt") DO set "CurrentVersion=%%f"
  REM SET VARIABLE for Software cECHO -^> Colors in CMD
  REM Setze Variable für die Software cECHO -^> Farben in CMD
    IF EXIST "bin\ThirdPartySoftware\cECHO%PROCESSOR_ARCHITECTURE:~-2%.exe" (
        SET "colorEcho=bin\ThirdPartySoftware\cECHO%PROCESSOR_ARCHITECTURE:~-2%.exe"
    ) ELSE (
        IF EXIST "bin\ThirdPartySoftware\cECHO.exe" (
            SET "colorEcho=bin\ThirdPartySoftware\cECHO.exe"
        )
    )

REM DEBUG
IF "%DEBUG%"=="DebugON" ( ECHO.
    %colorEcho% DEBUG-Info: {0a}ColorEcho loading successful!{#}{\n} || ECHO DEBUG-Info: ColorEcho loading ERROR
    %colorEcho% {F0}00 - black{\n}{01}01 - navy{\n}{02}02 - green{\n}{03}03 - teal{\n}{04}04 - maroon{\n}{05}05 - purple{\n}{06}06 - olive{\n}{07}07 - silver{\n}{08}08 - gray{\n}{09}09 - blue{\n}{0A}0A - lime{\n}{0B}0B - aqua{\n}{0C}0C - red{\n}{0D}0D - fuchisa{\n}{0E}0E - yellow{\n}{0F}0F - white{\n}{#} || ECHO DEBUG: ColorEcho loading ERROR
    ECHO.
    CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
)

  REM Current time query
  REM Abfrage der aktuellen Zeit
    CALL "src\preload\TimeQuery.cmd" 1 & %errorTestCommand%

REM DEBUG
IF "%DEBUG%"=="DebugON" (
    %colorEcho% {08}xTime: {07}"%xTime%"{#}{\n}
    %colorEcho% {08}xDate: {07}"%xDate%"{#}{\n}
    %colorEcho% {08}xDateRevers: {07}"%xDateRevers%"{#}{\n}
    %colorEcho% {08}xTimeDate: {07}"%xTimeDate%"{#}{\n}
    %colorEcho% {08}xDateRTime: {07}"%xDateRTime%"{#}{\n}
    ECHO.
    CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL & CLS
)


REM ===============================================================================================
REM      Presets (One Time)  #  Voreinstellungen (Einmalig)
REM ===============================================================================================
  REM Choose language (Load appropriate code from file)
  REM Sprache wählen (Lade entsprechenden Code aus Datei)
    CALL "src\presets\LanguageLoadOrCreateConfigfile.cmd" 1 & %errorTestCommand%

REM DEBUG
IF "%DEBUG%"=="DebugON" ( ECHO. & ECHO DEBUG-Info: countrycode="%countrycode%" pass variable to MainPart.cmd & CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL )

  REM Load language file
  REM Lade Sprachdatei
    CALL "src\translations\%countrycode%.cmd" 1 & %errorTestCommand%
  REM Windowtitel
  REM Fenstertitel
    TITLE RaptorXilef CMD Tools - ImHentai.xxx Downloader (%countrycode%) - %PROCESSOR_ARCHITECTURE:~-2%bit - v%CurrentVersion% -^> https://github.com/RaptorXilef  -  https://www.patreon.com/raptorxilef
  REM Specify/query root directory for storing downloads
  REM Hauptverzeichnis zum Speichern der Downloads festlegen/abfragen
    CALL "src\presets\SavePathLoadOrCreateConfigfile.cmd" 1 & %errorTestCommand%
    IF NOT EXIST "%savePath%" ( MD "%savePath%" )


REM ===============================================================================================
REM      Start of the data query from the user and from the website  /  Start der Datenabfrage vom User und von der Webseite
REM ===============================================================================================
REM URL for reading out the values such as download URL, name, number of pages...
REM URL zum Auslesen der Werte wie Download-URL, Name, Seitenanzahl...
  REM Load url query
  REM Lade URL-Abfrage
    SET "outputMenu=OutputMenuMainUrl"
    CALL "src\ConsoleOutputMenus.cmd" 1
    CALL "src\data-query\UrlNumberFilter.cmd" 1 & %errorTestCommand%

  REM Set different storage paths as variables
  REM Setze verschiedene Speicherpfade als Variablen
    SET "savePathDatabaseFolder=%savePath%\_database"
    SET "savePathDatabaseFolderComicID=%savePathDatabaseFolder%\%comicId%"
    SET "savePathTempFolder=%savePathDatabaseFolder%\_temp"
    SET "savePathTempFolderComicID=%savePathTempFolder%\%comicId%"
    SET "savePathBackupFile=%savePathDatabaseFolderComicID%\%comicId%.zip"
REM DEBUG
IF "%DEBUG%"=="DebugON" (
    ECHO. & ECHO.
    ECHO DEBUG-Info: savePathDatabaseFolder= "%savePathDatabaseFolder%"
    ECHO DEBUG-Info: savePathDatabaseFolderComicID= "%savePathDatabaseFolderComicID%"
    ECHO DEBUG-Info: savePathTempFolder= "%savePathTempFolder%"
    ECHO DEBUG-Info: savePathTempFolderComicID= "%savePathTempFolderComicID%"
    ECHO DEBUG-Info: savePathBackupFile= "%savePathBackupFile%"
    choice /N /C 123 /T %DEBUGTIME% /D 1 >NUL
)


REM ===============================================================================================
REM      Read website  /  Webseite auslesen
REM ===============================================================================================
  REM Reading out the values download URL, name, number of pages...
  REM Auslesen der Werte Download-URL, Name, Seitenanzahl...
    CALL "src\data-query\ReadingDataFromURL.cmd" 1 & %errorTestCommand%


REM ===============================================================================================
REM      Check: Already downloaded / pages missing? / History + name of the comic  /  Prüfen: Bereits heruntergeladen / Seiten fehlen? / History + Name des Comics #
REM ===============================================================================================
  REM Check if comic has already been downloaded (if yes, load variables from DB)
  REM If not, request the data from the user.
  REM Prüfe, ob das Comic bereits heruntergeladen wurde (wenn ja, lade Variablen aus DB)
  REM Wenn nicht, frage die Daten vom User ab.
    REM ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    IF NOT EXIST "%savePathDatabaseFolderComicID%\finished.txt" (
      REM Set the subdirectory for saving the downloads
      REM Unterverzeichnis zum Speichern der Downloads festlegen
        SET "outputMenu=OutputMenuDownloadFolderInput"
        CALL "src\ConsoleOutputMenus.cmd" 1
        CALL "src\questions\AskDownloadFolder.cmd" 1 & %errorTestCommand%
    )
    REM ----------------------------------------------------------------------------

    REM ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    IF NOT EXIST "%savePathDatabaseFolderComicID%\finished.txt" (
      REM Set or confirm the number of pages
      REM Seitenanzahl festlegen oder bestätigen
        SET "outputMenu=OutputMenuPageCountInput"
        SET /A pages_tobig=%pageCountInput% & REM Ändere die Umgebungsvariable der Seitenanzahl in eine arithmetische Variable mit einem integer Wert
      REM Ask for the number of pages to be downloaded and compare this with the maximum number of pages read from the web page
      REM Frage nach der herunter zu ladenden Anzahl an Seiten und vergleiche diese mir der aus der Webseite ausgelesenen maximalen Seitenanzahl
        CALL "src\ConsoleOutputMenus.cmd" 1
        CALL "src\questions\AskPages.cmd" 1 & %errorTestCommand%

    ) ELSE (

      REM If pages of the comic have already been downloaded in the past, you will now be asked for the number of additional pages to be downloaded. (Useful e.g. if the comic is still being drawn and only a part of the work has been available so far).
      REM Wenn bereits in der Vergangenheit Seiten des Comics heruntergeladen wurden, wird nun nach der Anzahl der zusätzlich herunter zu ladenen Seiten gefragt. (Sinnvoll z.B. wenn das Comic derzeit noch gezeichnet wird und bisher nur ein Teil des Werks verfügbar war.)
        CALL "src\questions\AskPagesRenewLoad.cmd" 1 & %errorTestCommand% & REM innerhalb der Datei wird auch die Datei "src\questions\AskPagesRenew.cmd" mittels CALL abgerufen

      REM Check if the number of pages has changed since the last download.
      REM If it is less than or equal to the number of pages already downloaded, stop the process.
      REM If it is greater than the number of pages already downloaded, ask for confirmation of the number of pages to download and pass the values to the download variables.
      REM Prüft ob sich die Seitenanzahl seit dem letzten Download geändert hat.
      REM Wenn diese kleiner oder gleich der bereits heruntergeladenen Seitenanzahl ist, beende den Forgang
      REM Wenn diese großer als die bereits heruntergeladenen Seitenanzahl ist, fordere zur Bestätigung der herunter zu ladenden Anzahl an Seiten auf und übergebe die Werte an die Vatriablen für den Download.
        IF !pageCountInputRenew! GEQ !pageCountInput! (
            cls && color 0c && ECHO. && ECHO. && ECHO   "!comicNameRenew!" wurde bereits vollständig heruntergeladen. && ECHO. && ECHO. && ECHO    Sie finden "!comicNameRenew!" unter: && ECHO. && ECHO      - Bilddateien/Comic:  !savePathRenew!\!downloadFolderRenew!\!comicNameInputRenew!\ && ECHO      - Backup:             !savePathRenew!\_backup\!comicIdRenew!.zip && ECHO      - Datenbankeintrag:   !savePathRenew!\_database\!comicIdRenew!\ && ECHO. && ECHO. && ECHO. && ECHO   Mit einem Klick auf [Enter] werden alle Eingaben zurückgesetzt und Sie können mit einem anderen Download beginnen. && ECHO. && ECHO. && PAUSE && SET "errorRestart=errorRestartYES" && GOTO errorRestartYES
        )

      REM Datenprüfung
        SET "outputMenu=OutputMenuPageCountInputRenew"
        CALL "src\ConsoleOutputMenus.cmd" 1
        CALL "src\questions\AskPagesRenew.cmd" 1 & %errorTestCommand%
    )
    REM ----------------------------------------------------------------------------

REM ############################################################################
  REM Set comic name to save downloads
  REM Comicnamen zum Speichern der Downloads festlegen
    SET "savePath_downloadFolder=%savePath%\!downloadFolder!
    SET /A "pages_last=!pages!"
REM ############################################################################

    REM ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    IF NOT EXIST "%savePathDatabaseFolderComicID%\finished.txt" (
      REM Comicname festlegen oder bestätigen
        CALL "src\questions\AskComicName1.cmd" 1 & %errorTestCommand%
:ComicNameInput
        SET "outputMenu=OutputMenuComicNameInput"
        CALL "src\ConsoleOutputMenus.cmd" 1
        CALL "src\questions\AskComicName2.cmd" 1 & %errorTestCommand%
        IF EXIST "!savePath_downloadFolder!\!comicName!" ( CLS & ECHO. & ECHO     Der Name !comicName! ist bereist vergeben! & ECHO     Bitte wählen Sie einen anderen Namen. & CHOICE /N /C 123 /T 3 /D 1 /M "" >NUL & GOTO ComicNameInput ) ELSE (ECHO Der Name ist noch nicht vergeben. Es wird fortgefahren.)
REM ÜBERSETZEN
    )
REM ----------------------------------------------------------------------------

    SET "savePath_comic_folder=!savePath_downloadFolder!\!comicName_!"

REM ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    IF NOT EXIST "%savePathDatabaseFolderComicID%\finished.txt" (
        SET "outputMenu=OutputMenuRllRightInput"
        CALL "src\ConsoleOutputMenus.cmd" 1
        CALL "src\questions\AskAllRight.cmd" 1 & %errorTestCommand%
    ) ELSE (
        SET "outputMenu=OutputMenuRllRightRenewInput"
        CALL "src\ConsoleOutputMenus.cmd" 1
        CALL "src\questions\AskAllRightRenew.cmd" 1 & %errorTestCommand%
    )
REM ----------------------------------------------------------------------------


REM ===============================================================================================
REM      Start of the data query from the user and from the website 2  /  Start der Datenabfrage vom User und von der Webseite 2
REM ===============================================================================================
REM Set or confirm the number of pages
REM Seitenanzahl festlegen oder bestätigen
REM .......

ECHO ENDE & PAUSE




##### mainUrl Variable ist leer??????















PAUSE
:errorRestartYES
EXIT /B
