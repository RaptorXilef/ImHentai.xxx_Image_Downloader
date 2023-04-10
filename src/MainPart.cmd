@ECHO OFF
REM Autor: RaptorXilef
REM Git: https://github.com/RaptorXilef
REM Projekt: https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.git
REM Patreon https://www.patreon.com/raptorxilef
REM InkBunny: https://inkbunny.net/RaptorXilef
REM Lizens: GNU GENERAL PUBLIC LICENSE - Version 3, 29 June 2007
REM ===============================================================================================
REM      Preload  #  Vorladen
REM ===============================================================================================
REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T 3 /D 1 >NUL
CLS
IF "%~1"=="" (
  SET "STARTED_CORRECTLY=0"
) ELSE (
  SET "STARTED_CORRECTLY=%1"
)
IF %STARTED_CORRECTLY%==0 (CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (CLS & ECHO. & ECHO DEBUG-Info: MainPart.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T 3 /D 1 >NUL
REM Reset Variables
REM Resete Variablen
IF EXIST "src\preload\VariablesReset.cmd" (
  CALL "src\preload\VariablesReset.cmd" 1
  ) ELSE (
    CLS & COLOR 0C
    ECHO Fatal ERROR by loading "src\preload\VariablesReset.cmd", file do not exist & echo Downloads the missing file or the latest version of the software from: & echo https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
    PAUSE & EXIT
)
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
IF EXIST "src\preload\CurrentVersion.txt" (
  FOR /f "usebackq delims=" %%f IN ("src\preload\CurrentVersion.txt") DO set "CurrentVersion=%%f"
  ) ELSE (
    CLS & COLOR 0C
    ECHO Fatal ERROR by loading "src\preload\CurrentVersion.txt", file do not exist & echo Downloads the missing file or the latest version of the software from: & echo https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
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
        ECHO Fatal ERROR by loading "bin\ThirdPartySoftware\cecho.exe", file do not exist & echo Downloads the missing file or the latest version of the software from: & echo https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
        PAUSE & EXIT
    )
  )
REM DEBUG
IF "%DEBUG%"=="DebugON" ( ECHO.
%colorEcho% DEBUG-Info: {0a}ColorEcho loading successful!{#}{\n} || echo DEBUG-Info: ColorEcho loading ERROR
%colorEcho% {F0}00 - black{\n}{01}01 - navy{\n}{02}02 - green{\n}{03}03 - teal{\n}{04}04 - maroon{\n}{05}05 - purple{\n}{06}06 - olive{\n}{07}07 - silver{\n}{08}08 - gray{\n}{09}09 - blue{\n}{0A}0A - lime{\n}{0B}0B - aqua{\n}{0C}0C - red{\n}{0D}0D - fuchisa{\n}{0E}0E - yellow{\n}{0F}0F - white{\n}{#} || echo DEBUG: ColorEcho loading ERROR
ECHO.
CHOICE /N /C 123 /T 3 /D 1 >NUL
)
REM Current time query
REM Abfrage der aktuellen Zeit
    IF EXIST "src\preload\TimeQuery.cmd" (
      CALL "src\preload\TimeQuery.cmd" 1
      ) ELSE (
        CLS & COLOR 0C
        ECHO Fatal ERROR by loading "src\preload\TimeQuery.cmd", file do not exist & echo Downloads the missing file or the latest version of the software from: & echo https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
        PAUSE & EXIT
    )
REM DEBUG
    IF "%DEBUG%"=="DebugON" (
      %colorEcho% {08}xTime: {07}"%xTime%"{#}{\n}
      %colorEcho% {08}xDate: {07}"%xDate%"{#}{\n}
      %colorEcho% {08}xDateRevers: {07}"%xDateRevers%"{#}{\n}
      %colorEcho% {08}xTimeDate: {07}"%xTimeDate%"{#}{\n}
      %colorEcho% {08}xDateRTime: {07}"%xDateRTime%"{#}{\n}
      ECHO.
      CHOICE /N /C 123 /T 3 /D 1 >NUL & CLS
    )


REM ===============================================================================================
REM      Presets (One Time)  #  Voreinstellungen (Einmalig)
REM ===============================================================================================
REM Test if ConsoleOutputMenus.cmd exists
REM Teste, ob ConsoleOutputMenus.cmd existiert
    IF NOT EXIST "src\ConsoleOutputMenus.cmd" (
    CLS & COLOR 0C
    ECHO Fatal ERROR by loading "src\ConsoleOutputMenus.cmd", file do not exist & echo Downloads the missing file or the latest version of the software from: & echo https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
    PAUSE & EXIT
    )
REM Choose language (Load appropriate code from file)
REM Sprache wählen (Lade entsprechenden Code aus Datei)
    IF EXIST "src\presets\LanguageLoadOrCreateConfigfile.cmd" (
      CALL "src\presets\LanguageLoadOrCreateConfigfile.cmd" 1
      ) ELSE (
        CLS & COLOR 0C
        ECHO Fatal ERROR by loading "src\presets\LanguageLoadOrCreateConfigfile.cmd", file do not exist & echo Downloads the missing file or the latest version of the software from: & echo https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
        PAUSE & EXIT
    )
REM DEBUG
    IF "%DEBUG%"=="DebugON" ( ECHO. & ECHO DEBUG-Info: countrycode="%countrycode%" pass variable to MainPart.cmd & CHOICE /N /C 123 /T 3 /D 1 >NUL )
REM Load language file
REM Lade Sprachdatei
IF EXIST "src\translations\%countrycode%.cmd" (
  CALL "src\translations\%countrycode%.cmd" 1
  ) ELSE (
    CLS & COLOR 0C
    ECHO Fatal ERROR by loading "src\translations\%countrycode%.cmd", file do not exist & echo Downloads the missing file or the latest version of the software from: & echo https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
    PAUSE & EXIT
)
REM Windowtitel
REM Fenstertitel
TITLE RaptorXilef CMD Tools - ImHentai.xxx Downloader (%countrycode%) - %PROCESSOR_ARCHITECTURE:~-2%bit - v%CurrentVersion% -^> https://github.com/RaptorXilef  -  https://www.patreon.com/raptorxilef
REM Specify/query root directory for storing downloads
REM Hauptverzeichnis zum Speichern der Downloads festlegen/abfragen
IF EXIST "src\presets\SavePathLoadOrCreateConfigfile.cmd" (
  CALL "src\presets\SavePathLoadOrCreateConfigfile.cmd" 1
  ) ELSE (
    CLS & COLOR 0C
    ECHO Fatal ERROR by loading "src\presets\SavePathLoadOrCreateConfigfile.cmd", file do not exist & echo Downloads the missing file or the latest version of the software from: & echo https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
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
SET "outputMenu=OutputMenuMainUrl"
CALL "src\ConsoleOutputMenus.cmd" 1
IF EXIST "src\data-query\UrlNumberFilter.cmd" (
  CALL "src\data-query\UrlNumberFilter.cmd" 1
  ) ELSE (
    CLS & COLOR 0C
    ECHO Fatal ERROR by loading "src\data-query\UrlNumberFilter.cmd", file do not exist & echo Downloads the missing file or the latest version of the software from: & echo https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
    PAUSE & EXIT
)

REM Set different storage paths as variables
REM Setze verschiedene Speicherpfade als Variablen
SET "savePathDatabaseFolder=%savePath%\_database"
SET "savePathDatabaseFolderComicID=%savePathDatabaseFolder%\%comicId%"
SET "savePathTempFolder=%savePathDatabaseFolder%\_temp"
SET "savePathTempFolderComicID=%savePathTempFolder%\%comicId%"
SET "savePathBackupFile=%savePathDatabaseFolderComicID%\%comicId%.zip"
IF "%DEBUG%"=="DebugON" (
  ECHO. & ECHO.
  ECHO DEBUG-Info: savePathDatabaseFolder= "%savePathDatabaseFolder%"
  ECHO DEBUG-Info: savePathDatabaseFolderComicID= "%savePathDatabaseFolderComicID%"
  ECHO DEBUG-Info: savePathTempFolder= "%savePathTempFolder%"
  ECHO DEBUG-Info: savePathTempFolderComicID= "%savePathTempFolderComicID%"
  ECHO DEBUG-Info: savePathBackupFile= "%savePathBackupFile%"
  choice /N /C 123 /T 3 /D 1 >NUL
)


:: ===============================================================================================
::      Read website  /  Webseite auslesen
:: ===============================================================================================
REM Reading out the values download URL, name, number of pages...
:: Auslesen der Werte Download-URL, Name, Seitenanzahl...
IF EXIST "src\data-query\ReadingDataFromURL.cmd" (
  CALL "src\data-query\ReadingDataFromURL.cmd" 1
  ) ELSE (
    CLS & COLOR 0C
    ECHO Fatal ERROR by loading "src\data-query\ReadingDataFromURL.cmd", file do not exist & echo Downloads the missing file or the latest version of the software from: & echo https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
    PAUSE & EXIT
)
GOTO %errorRestart%
:errorRestartNO








PAUSE
EXIT /B
