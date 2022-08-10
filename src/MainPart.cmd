REM Autor: RaptorXilef
REM Git: https://github.com/RaptorXilef
REM Projekt: https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.git
REM Patreon https://www.patreon.com/raptorxilef
REM InkBunny: https://inkbunny.net/RaptorXilef
REM Lizens: GNU GENERAL PUBLIC LICENSE - Version 3, 29 June 2007
REM ===============================================================================================
REM      Preload  #  Vorladen
REM ===============================================================================================
REM Window size, background and font color
REM Fenstergröße, Hintergrund- und SchrIFtfarbe
    MODE con lines=55 cols=180
    COLOR 08
REM Activate characters of the ASCII table like äöü ... (+ save file in ANSI)
REM Aktiviere Zeichen der ASCII-Tabelle wie äöü ... (+ Datei in ANSI speichern)
    CHCP 1252>nul
REM Load version number from file
REM Lade Versionsnummer aus Datei
    IF EXIST "src\CurrentVersion.txt" (
      FOR /f "usebackq delims=" %%f IN ("src\CurrentVersion.txt") DO set "CurrentVersion=%%f"
      ) ELSE (
        CLS & COLOR 0C
        ECHO Fatal ERROR by loading "src\CurrentVersion.txt", file do not exist.
        PAUSE & EXIT
    )
REM SET VARIABLE for Software cecho -^> Colors in CMD
REM Setze Variable für die Software cecho -^> Farben in CMD
    IF EXIST "bin\ThirdPartySoftware\cecho%PROCESSOR_ARCHITECTURE:~-2%.exe" (
      SET "colorEcho=bin\ThirdPartySoftware\cecho%PROCESSOR_ARCHITECTURE:~-2%.exe"
      ) ELSE (
        IF EXIST "bin\ThirdPartySoftware\cecho.exe" (
          SET "colorEcho=bin\ThirdPartySoftware\cecho.exe"
          ) ELSE (
            CLS & COLOR 0C
            ECHO Fatal ERROR by loading "bin\ThirdPartySoftware\cecho.exe", file do not exist.
            PAUSE & EXIT
        )
      )
REM DEBUG
  IF "%DEBUG%"=="DebugON" (
    %colorEcho% DEBUG: {0a}ColorEcho loading successful!{#}{\n} || echo DEBUG: ColorEcho loading ERROR
    %colorEcho% {00}00 - black{\n}{01}01 - navy{\n}{02}02 - green{\n}{03}03 - teal{\n}{04}04 - maroon{\n}{05}05 - purple{\n}{06}06 - olive{\n}{07}07 - silver{\n}{08}08 - gray{\n}{09}09 - blue{\n}{0A}0A - lime{\n}{0B}0B - aqua{\n}{0C}0C - red{\n}{0D}0D - fuchisa{\n}{0E}0E - yellow{\n}{0F}0F - white{\n}{#} || echo DEBUG: ColorEcho loading ERROR
    ECHO.
    CHOICE /N /C 123 /T 2 /D 1 >NUL
  )
REM Current time query
REM Abfrage der aktuellen Zeit
    IF EXIST "src/TimeQuery.cmd" (
      CALL "src/TimeQuery.cmd"
      ) ELSE (
        CLS & COLOR 0C
        ECHO Fatal ERROR by loading "src/TimeQuery.cmd", file do not exist.
        PAUSE & EXIT
    )
REM DEBUG
    IF "%DEBUG%"=="DebugON" (
      %colorEcho% {08}xTime: {07}"%xTime%"{#}{\n}
      %colorEcho% {08}xDate: {07}"%xDate%"{#}{\n}
      %colorEcho% {08}xDateRevers: {07}"%xDateRevers%"{#}{\n}
      %colorEcho% {08}xTimeDate: {07}"%xTimeDate%"{#}{\n}
      %colorEcho% {08}xDateRTime: {07}"%xDateRTime%"{#}{\n}
      CHOICE /N /C 123 /T 2 /D 1 >NUL
    )


REM ===============================================================================================
REM      Presets (One Time)  #  Voreinstellungen (Einmalig)
REM ===============================================================================================
REM Test if ConsoleOutputMenus.cmd exists
REM Teste, ob ConsoleOutputMenus.cmd existiert
    IF NOT EXIST "src\ConsoleOutputMenus.cmd" (
    CLS & COLOR 0C
    ECHO Fatal ERROR by loading "src\ConsoleOutputMenus.cmd", file do not exist.
    PAUSE & EXIT
    )
REM Choose language (Load appropriate code from file)
REM Sprache wählen (Lade entsprechenden Code aus Datei)
    IF EXIST "src\LanguageLoadOrCreateConfigfile.cmd" (
      CALL "src\LanguageLoadOrCreateConfigfile.cmd"
      ) ELSE (
        CLS & COLOR 0C
        ECHO Fatal ERROR by loading "src\LanguageLoadOrCreateConfigfile.cmd", file do not exist.
        PAUSE & EXIT
    )
REM DEBUG
    IF "%DEBUG%"=="DebugON" ( ECHO DEBUG: countrycode= "%countrycode%" & CHOICE /N /C 123 /T 2 /D 1 >NUL )
REM Load language file
REM Lade Sprachdatei
    IF EXIST "translations\%countrycode%.cmd" (
      CALL "translations\%countrycode%.cmd"
      ) ELSE (
        CLS & COLOR 0C
        ECHO Fatal ERROR by loading "translations\%countrycode%.cmd", file do not exist.
        PAUSE & EXIT
    )
REM Windowtitel
REM Fenstertitel
    TITLE RaptorXilef CMD Tools - ImHentai.xxx Downloader (%countrycode%) - %PROCESSOR_ARCHITECTURE:~-2%bit - v%CurrentVersion% -^> https://github.com/RaptorXilef  -  https://www.patreon.com/raptorxilef
REM Specify/query root directory for storing downloads
REM Hauptverzeichnis zum Speichern der Downloads festlegen/abfragen
    IF EXIST "src\SavePathLoadOrCreateConfigfile.cmd" (
      CALL "src\SavePathLoadOrCreateConfigfile.cmd"
      ) ELSE (
        CLS & COLOR 0C
        ECHO Fatal ERROR by loading "src\SavePathLoadOrCreateConfigfile.cmd", file do not exist.
        PAUSE & EXIT
    )
    IF NOT EXIST "%savePath%" MD "%savePath%"


REM ===============================================================================================
REM      Start of the data query from the user and from the website  /  Start der Datenabfrage vom User und von der Webseite
REM ===============================================================================================
REM URL for reading out the values such as download URL, name, number of pages...
REM URL zum Auslesen der Werte wie Download-URL, Name, Seitenanzahl...
REM Load url query
REM Lade URL-Abfrage
    SET "outputMenue=OutputMenueMainUrl"
    CALL "src\ConsoleOutputMenus.cmd"

    IF EXIST "src\UrlNumberFilter.cmd" (
      CALL "src\UrlNumberFilter.cmd"
      ) ELSE (
        CLS & COLOR 0C
        ECHO Fatal ERROR by loading "src\UrlNumberFilter.cmd", file do not exist.
        PAUSE & EXIT
    )

REM Set different storage paths as variables
REM Setze verschiedene Speicherpfade als Variablen
    SET "savePathDatabaseFolder=%savePath%\_database"
    SET "savePathDatabaseFolderComicID=%savePathDatabaseFolder%\%comicId%"
    SET "savePathTempFolder=%savePathDatabaseFolder%\_temp"
    SET "savePathTempFolderComicID=%savePathTempFolder%\%comicId%"
    SET "savePathBackupFile=%savePathBackupFolder%\%comicId%.zip"








:: ===============================================================================================
::      Webseite auslesen
:: ===============================================================================================
:: Auslesen der Werte Download-URL, Name, Seitenanzahl...
    CALL "src\read_website.cmd"

    GOTO %errorRestart%
:errorRestartNO


:: ===============================================================================================
::      Prüfen: Bereits heruntergeladen / Seiten fehlen? / History + Name des Comics #
:: ===============================================================================================
:: Prüfen ob Comic bereits heruntergeladen wurde (wenn ja, lade Variablen aus DB)
:: Comicnamen zum speichern der Downloads festlegen
:: ===============================================================================================
::      Downloadfragen2
:: ===============================================================================================
:: Unterverzeichnis zum speichern der Downloads festlegen
    IF not exist "%savePathDatabaseFolderComicID%\finished.txt" CALL "src\ask_dl_folder.cmd"
:: Seitenanzahl festlegen oder bestätigen
    IF not exist "%savePathDatabaseFolderComicID%\finished.txt" CALL "src\ask_pages.cmd"
    IF exist "%savePathDatabaseFolderComicID%\finished.txt" CALL "src\ask_pages_renew_load.cmd"
    GOTO %errorRestart%
:errorRestartNO

    SET "savePath_dl_folder=%savePath%\%dl_folder%

    SET /a "pages_last=%pages%"
:: Comicname festlegen oder bestätigen
    IF not exist "%savePathDatabaseFolderComicID%\finished.txt" CALL "src\ask_comic-name.cmd"
:: Datenprüfung
    IF not exist "%savePathDatabaseFolderComicID%\finished.txt" CALL "src\ask_all_right.cmd"
    IF exist "%savePathDatabaseFolderComicID%\finished.txt" CALL "src\ask_all_right_renew.cmd"
    GOTO %errorRestart%
:errorRestartNO
    SET "savePath_comic_folder=%savePath_dl_folder%\%comic-name_%"


:: ===============================================================================================
::      Download vorbereiten
:: ===============================================================================================
:: Variablen für WGet Downloader
    SET "dl_lists=%savePathDatabaseFolderComicID%\dl_lists"
    SET "dl_list_all=%dl_lists%\ALL_%xDateRTime%.txt"
    SET "dl_list_jpg=%dl_lists%\JPG_%xDateRTime%.txt"
    SET "dl_list_png=%dl_lists%\PNG_%xDateRTime%.txt"
    SET "dl_list_gIF=%dl_lists%\GIF_%xDateRTime%.txt"

:: Erstelle Downloadliste und DB Ordner
:: Füge die zu downloadenden Dateien in die NameDownloadliste ein (schleIFe)
    CALL "src\wget_dl_lists.cmd"


:: ===============================================================================================
::      Starte Download
:: ===============================================================================================
:: Erstelle Comicordner für den Download
:: Starte Download mit WGet über 32 oder 64 bit
    CALL "src\wget_start.cmd"


:: ===============================================================================================
::      Bilder nummerrieren
:: ===============================================================================================
:: Bilder entsprechend der Anzahl mit vorstehenden Nullen durchnummerrieren.
    CALL "src\rename_count.cmd"


:: ===============================================================================================
::      Verknüpfung zur Webseite
:: ===============================================================================================
:: Packe eine Verknüpfung zur Comic-Webseite mit in den Comicordner
    CALL "src\web_link_create.cmd"


:: ===============================================================================================
::      Download abschließen / Script Beenden
:: ===============================================================================================
:: SETze Datanbank auf fertig
    IF NOT EXIST "%savePathDatabaseFolder%" MD "%savePathDatabaseFolder%" && attrib +h "%savePathDatabaseFolder%"
    CALL "src\save_var_to_database.cmd"


:: ===============================================================================================
::      Backup
:: ===============================================================================================
:: Erstelle ein Backup der heruntergeladenen Bilder
:: Zippe die Downloadlisten um Speicherplatz zu spaaren
    CALL "src\7zr_start.cmd"


CHOICE /N /C 123 /T 1 /D 1 >NUL

:errorRestartYES
