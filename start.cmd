@echo off
:: ===============================================================================================
::      Preload
:: ===============================================================================================
:: Fenstertitel f?r den Start
    TITLE RaptorXilef CMD Tools - ImHentai.xxx Downloader
:: Fenstergr??e, Hintergrund- und Schriftarbe
    mode con lines=55 cols=180 
    color 0a
::Aktiviere Zeichen der ASCII Tabelle wie ??? ... (+Speichern im als ANSI Format)
    chcp 1252>nul
:: Load Processor architecture (32/64) in variable ### Lade Prozessorarchitektur (32bit/64bit) in eine Variable
    set "xxbit=%PROCESSOR_ARCHITECTURE:~-2%"
:: Load version number from file ### Lade Versionsnummer aus Datei
    if exist "resources\version.txt" FOR /f "usebackq delims=" %%f IN ("resources\version.txt") DO set "version=%%f"
    if not exist "resources\version.txt" set "version=BetaTestVersion


:: ===============================================================================================
::      Voreinstellungen (Einmalig)
:: ===============================================================================================
:: Sprache w?hlen
    CALL "resources\exist_lang.cmd"
    CALL "lang\%lang%.cmd"
:: Fenstertitel
    TITLE RaptorXilef CMD Tools - ImHentai.xxx Downloader (%lang%) - %xxbit%bit - v%version% -^> https://inkbunny.net/RaptorXilef


:: ===============================================================================================
::      Lade Hauptteil
:: ===============================================================================================
:: Start
:restart
        call "resources\main.cmd"
        goto restart


:: ===============================================================================================
::      Ende
:: ===============================================================================================
:: Exit
    exit
::הצü Aktivieren