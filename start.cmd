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
    SET "DEBUG=DebugOFF"
    IF NOT DEFINED check SET check=0
    IF EXIST "src\MainPart.cmd" (
      CALL "src\MainPart.cmd" 1
    ) ELSE (
      CLS
      COLOR 0C
      ECHO Fatal ERROR by loading "src\MainPart.cmd", file do not exist or has been corrupted & ECHO Downloads the missing file or the latest version of the software from: & ECHO https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader.
      START https://github.com/RaptorXilef/ImHentai.xxx_Image_Downloader/blob/main/src/MainPart.cmd
      PAUSE & EXIT
      EXIT
    )
      GOTO Restart


REM ===============================================================================================
REM      End  #  Ende
REM ===============================================================================================
REM Exit
REM Ende
    EXIT
REM הצü werden korrent angezeigt?
