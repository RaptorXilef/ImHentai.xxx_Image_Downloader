REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" ECHO. & ECHO DEBUG-Info: questions\AskPagesRenewLoad.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

    IF EXIST "%savePathDatabaseFolderComicID%\DownloadFolder.txt"         FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\DownloadFolder.txt")         DO SET "downloadFolderRenew=%%f"
    IF EXIST "%savePathDatabaseFolderComicID%\comicId.txt"                FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\comicId.txt")                DO SET "comicIdRenew=%%f"
    IF EXIST "%savePathDatabaseFolderComicID%\mainUrl.txt"                FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\mainUrl.txt")                DO SET "mainUrlRenew=%%f"
    IF EXIST "%savePathDatabaseFolderComicID%\imageDownloadFolderURL.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\imageDownloadFolderURL.txt") DO SET "imageDownloadFolderURLRenew=%%f"
    IF EXIST "%savePathDatabaseFolderComicID%\pages.txt"                  FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\pages.txt")                  DO SET "pageCountInputRenew=%%f"
    IF EXIST "%savePathDatabaseFolderComicID%\comicName.txt"              FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\comicName.txt")              DO SET "comicNameRenew=%%f"
    IF EXIST "%savePathDatabaseFolderComicID%\savePath.txt"               FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\savePath.txt")               DO SET "savePathRenew=%%f"

        SET "pageCountInputRenew=%pageCountInputRenew: =%"
        SET /a "pageCountInputRenew=%pageCountInputRenew%"
        SET "pageCountInput=%pageCountInput: =%"
        SET /a "pageCountInput=%pageCountInput%"

        ::DEBUG echo "%pageCountInputRenew%" - "%pageCountInput%" && PAUSE

    :AntiSonderzeichenName
    ::Entferne Sonderzeichen aus dem eingegebenen String
    SET "comicNameInputRenew=%comicNameRenew:<=%"
    SET "comicNameInputRenew=%comicNameInputRenew:>=%"
    SET "comicNameInputRenew=%comicNameInputRenew:&=%"
    SET "comicNameInputRenew=%comicNameInputRenew:|=%"
    SET "comicNameInputRenew=%comicNameInputRenew:^=%"
    SET "comicNameInputRenew=%comicNameInputRenew:"=%"
    SET "comicNameInputRenew=%comicNameInputRenew:?=%"
    SET "comicNameInputRenew=%comicNameInputRenew::=%"
    SET "comicNameInputRenew=%comicNameInputRenew:/=%"
    SET "comicNameInputRenew=%comicNameInputRenew:\=%"
    SET "comicNameInputRenew=%comicNameInputRenew:!=%"
    SET "comicNameInputRenew=%comicNameInputRenew:?=%"
    SET "comicNameInputRenew=%comicNameInputRenew:.=%"
    SET "comicNameInputRenew=%comicNameInputRenew:´=-%"
    SET "comicNameInputRenew=%comicNameInputRenew:é=e%"
    SET "comicNameInputRenew=%comicNameInputRenew:è=e%"
    SET "comicNameInputRenew=%comicNameInputRenew: =_%"



IF "%DEBUG%"=="DebugON" (
    ECHO %downloadFolderRenew%
    ECHO %comicIdRenew%
    ECHO %mainUrlRenew%
    ECHO %imageDownloadFolderURLRenew%
    ECHO %pageCountInputRenew%
    ECHO %comicNameRenew%
    ECHO %comicNameInputRenew%
    ECHO %savePathRenew%
    ECHO.
    ECHO !downloadFolderRenew!
    ECHO !comicIdRenew!
    ECHO !mainUrlRenew!
    ECHO !imageDownloadFolderURLRenew!
    ECHO !pageCountInputRenew!
    ECHO !comicNameRenew!
    ECHO !comicNameInputRenew!
    ECHO !savePathRenew!
    PAUSE
)

EXIT /B
    ::aktiviere äöü
