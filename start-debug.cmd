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
    
    
        third-party_software\cecho%xxbit% {00}00 - black{\n}
        third-party_software\cecho%xxbit% {01}01 - navy{\n}
        third-party_software\cecho%xxbit% {02}02 - green{\n}
        third-party_software\cecho%xxbit% {03}03 - teal{\n}
        third-party_software\cecho%xxbit% {04}04 - maroon{\n}
        third-party_software\cecho%xxbit% {05}05 - purple{\n}
        third-party_software\cecho%xxbit% {06}06 - olive{\n}
        third-party_software\cecho%xxbit% {07}07 - silver{\n}
        third-party_software\cecho%xxbit% {08}08 - gray{\n}
        third-party_software\cecho%xxbit% {09}09 - blue{\n}
        third-party_software\cecho%xxbit% {0A}0A - lime{\n}
        third-party_software\cecho%xxbit% {0B}0B - aqua{\n}
        third-party_software\cecho%xxbit% {0C}0C - red{\n}
        third-party_software\cecho%xxbit% {0D}0D - fuchisa{\n}
        third-party_software\cecho%xxbit% {0E}0E - yellow{\n}
        third-party_software\cecho%xxbit% {0F}0F - white{\n}
pause


:: ===============================================================================================
::      Lade Hauptteil
:: ===============================================================================================
:: Start
:restart
        call "resources\main.cmd"


:: ===============================================================================================
::      Lade Debug Informationen
:: ===============================================================================================
:: Start
    IF NOT EXIST "debug" MD "debug"
    call "resources/debug.cmd" >debug\debug_%xDateRTime%.txt
    call "resources/debug.cmd"
    pause
    goto restart


:: ===============================================================================================
::      Ende
:: ===============================================================================================
:: Exit
    exit
::הצü Aktivieren