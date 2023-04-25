@ECHO OFF
REM Autor: RaptorXilef
REM Git: https://github.com/RaptorXilef
REM Projekt: https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.git
REM Patreon https://www.patreon.com/raptorxilef
REM InkBunny: https://inkbunny.net/RaptorXilef
REM Lizens: GNU GENERAL PUBLIC LICENSE - Version 3, 29 June 2007
REM ===============================================================================================
REM      Load main part  #  Lade Hauptteil
REM ===============================================================================================
REM Temporary window title
REM Temporerer Fenstertitel
    TITLE RaptorXilef CMD Tools - ImHentai.xxx Downloader
REM Start/Load the main part of the application
REM Starte/Lade den Hauptteil der Anwendung
SETLOCAL ENABLEDELAYEDEXPANSION
:Restart
REM Debug modus off
REM Debug Modus aus
    SET "DEBUG=DebugON"
    ECHO DEBUG-Info: "%DEBUG%"
    SET "DEBUGTIME=0"
    IF EXIST "src\MainPart.cmd" (
      CALL "src\MainPart.cmd" 1
    ) ELSE (
      CLS
      COLOR 0C
      ECHO Fatal ERROR by loading "src\MainPart.cmd", file do not exist.
      PAUSE
      EXIT
    )


:: ===============================================================================================
::      Debug information  #  Debug Informationen
:: ===============================================================================================
:: Load all variables and write them to debug.log
:: Lade alle Variableninhalte und schreibe Sie in die debug.log
    IF NOT EXIST "debug_logs" (MD "debug_logs")
      CALL "src/Debug.cmd" 1 >debug_logs\debug_%xDateRTime%.txt
      CALL "src/Debug.cmd" 1
        PAUSE
        GOTO Restart


REM ===============================================================================================
REM      End  #  Ende
REM ===============================================================================================
REM Exit
REM Ende
    EXIT
REM дцья
