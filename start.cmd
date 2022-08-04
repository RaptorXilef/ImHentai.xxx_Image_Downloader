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
    TITLE RaptorXilef CMD Tools - ImHentai.xxx Image Downloader
REM Window size, background and font color
REM Fenstergröße, Hintergrund- und SchrIFtfarbe
    MODE con lines=55 cols=180
    color 08
REM Activate characters of the ASCII table like äöü ... (+ save file in ANSI)
REM Aktiviere Zeichen der ASCII-Tabelle wie äöü ... (+ Datei in ANSI speichern)
    chcp 1252>nul
REM Load Processor architecture (32/64) in variable
REM Lade Prozessorarchitektur (32bit/64bit) in eine Variable
    set "xxbit=%PROCESSOR_ARCHITECTURE:~-2%"
REM Load version number from file
REM Lade Versionsnummer aus Datei
    IF EXIST "resources\CurrentVersion.txt" FOR /f "usebackq delims=" %%f IN ("resources\CurrentVersion.txt") DO set "version=%%f"
    IF NOT EXIST "resources\CurrentVersion.txt" set "version=BetaTestVersion
REM Debug modus off
REM Debug Modus aus
    SET "DEBUG=OFF"


REM ===============================================================================================
REM      Presets (One Time)  #  Voreinstellungen (Einmalig)
REM ===============================================================================================
REM Choose language (Load appropriate code from file)
REM Sprache wählen (Lade entsprechenden Code aus Datei)
    CALL "resources\LanguageExistConfigfile.cmd"
    CALL "lang\%lang%.cmd"
REM Windowtitel
REM Fenstertitel
    TITLE RaptorXilef CMD Tools - ImHentai.xxx Downloader (%lang%) - %xxbit%bit - v%version% -^> https://github.com/RaptorXilef  -  https://www.patreon.com/raptorxilef


REM ===============================================================================================
REM      Load main part  #  Lade Hauptteil
REM ===============================================================================================
REM Start/Load the main part of the application
REM Starte/Lade den Hauptteil der Anwendung
:restart
    CALL "resources\main.cmd"
    GOTO restart


REM ===============================================================================================
REM      End  #  Ende
REM ===============================================================================================
REM Exit
REM Ende
    EXIT
REM äöü werden korrent angezeigt?
