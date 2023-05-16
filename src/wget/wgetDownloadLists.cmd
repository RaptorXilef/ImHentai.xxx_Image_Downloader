REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" ECHO. & ECHO DEBUG-Info: wget\wgetDownloadLists.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################


REM Erstelle Downloadliste und DB Ordner
    IF "%DEBUG%"=="DebugON" ( ECHO DEBUG-Info: %lang_wgetDownloadLists_DEBUG_1% & CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL )
    MD "%savePathDatabaseFolderComicID%\dl_lists"
    IF "%DEBUG%"=="DebugON" ( ECHO DEBUG-Info: %lang_wgetDownloadLists_DEBUG_2% & CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL)
    ECHO von Seite %pages_start% bis Seite %pages_last%
REM Füge die zu downloadenden Dateien in die NameDownloadliste ein (schleIFe)
    FOR /l %%G IN (%pages_start%,1,%pages_last%) DO ECHO %imageDownloadFolderURL%%%G.jpg>>"%dl_list_all%" & ECHO %imageDownloadFolderURL%%%G.png>>"%dl_list_all%" & ECHO %imageDownloadFolderURL%%%G.gif>>"%dl_list_all%" & ECHO %imageDownloadFolderURL%%%G.jpg>>"%dl_list_jpg%" & ECHO %imageDownloadFolderURL%%%G.png>>"%dl_list_png%" & ECHO %imageDownloadFolderURL%%%G.gif>>"%dl_list_gif%"

EXIT /B
    ::aktiviere äöü
