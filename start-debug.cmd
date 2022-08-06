@echo off
REM Autor: RaptorXilef
REM Git: https://github.com/RaptorXilef
REM Projekt: https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.git
REM Patreon https://www.patreon.com/raptorxilef
REM InkBunny: https://inkbunny.net/RaptorXilef
REM Lizens: GNU GENERAL PUBLIC LICENSE - Version 3, 29 June 2007
REM ===============================================================================================
REM      Preload  #  Vorladen
REM ===============================================================================================
REM Temporary window title
REM Temporerer Fenstertitel
    TITLE RaptorXilef CMD Tools - ImHentai.xxx Downloader
REM Window size, background and font color
REM Fenstergröße, Hintergrund- und SchrIFtfarbe
    MODE con lines=55 cols=180
    COLOR 08
REM Activate characters of the ASCII table like äöü ... (+ save file in ANSI)
REM Aktiviere Zeichen der ASCII-Tabelle wie äöü ... (+ Datei in ANSI speichern)
    CHCP 1252>nul
REM Load version number from file
REM Lade Versionsnummer aus Datei
    IF EXIST "resources\CurrentVersion.txt" FOR /f "usebackq delims=" %%f IN ("resources\CurrentVersion.txt") DO set "version=%%f"
    IF NOT EXIST "resources\CurrentVersion.txt" set "version=BetaTestVersion
REM Debug modus off
REM Debug Modus aus
    SET "DEBUG=ON"


REM ===============================================================================================
REM      Presets (One Time)  #  Voreinstellungen (Einmalig)
REM ===============================================================================================
REM Choose language (Load appropriate code from file)
REM Sprache wählen (Lade entsprechenden Code aus Datei)
    CALL "resources\LanguageExistConfigfile.cmd"
    CALL "translations\%lang%.cmd"
REM Windowtitel
REM Fenstertitel
    TITLE RaptorXilef CMD Tools - ImHentai.xxx Downloader (%countrycode%) - %PROCESSOR_ARCHITECTURE:~-2%bit - v%version% -^> https://github.com/RaptorXilef  -  https://www.patreon.com/raptorxilef


REM ===============================================================================================
REM      Load main part  #  Lade Hauptteil
REM ===============================================================================================
REM Start/Load the main part of the application
REM Starte/Lade den Hauptteil der Anwendung
:restart
        CALL "resources\main.cmd"


:: ===============================================================================================
::      Debug information  #  Debug Informationen
:: ===============================================================================================
:: Load all variables and write them to debug.log
:: Lade alle Variableninhalte und schreibe Sie in die debug.log
    IF NOT EXIST "debug_logs" MD "debug_logs"
      CALL "resources/debug.cmd" >debug\debug_%xDateRTime%.txt
      CALL "resources/debug.cmd"
        PAUSE
        GOTO restart


REM ===============================================================================================
REM      End  #  Ende
REM ===============================================================================================
REM Exit
REM Ende
    EXIT
REM äöüß
