
    IF exist "%savePathDatabaseFolderComicID%\DownloadFolder.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\DownloadFolder.txt") DO set "downloadFolderRenew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\comicId.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\comicId.txt") DO set "comicIdRenew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\mainUrl.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\mainUrl.txt") DO set "mainUrlRenew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\imageDownloadFolderURL.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\imageDownloadFolderURL.txt") DO set "imageDownloadFolderURLRenew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\pages.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\pages.txt") DO set "pageCountInputRenew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\comicName.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\comicName.txt") DO set "comicNameRenew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\savePath.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\savePath.txt") DO set "savePathRenew=%%f"

        SET "pageCountInputRenew=%pageCountInputRenew: =%"
        SET /a "pageCountInputRenew=%pageCountInputRenew%"
        SET "pageCountInput=%pageCountInput: =%"
        SET /a "pageCountInput=%pageCountInput%"

        ::DEBUG echo "%pageCountInputRenew%" - "%pageCountInput%" && PAUSE

    :AntiSonderzeichenName
    ::Entferne Sonderzeichen aus dem eingegebenen String
    set "comicNameInputRenew=%comicNameRenew:<=%"
    set "comicNameInputRenew=%comicNameInputRenew:>=%"
    set "comicNameInputRenew=%comicNameInputRenew:&=%"
    set "comicNameInputRenew=%comicNameInputRenew:|=%"
    set "comicNameInputRenew=%comicNameInputRenew:^=%"
    set "comicNameInputRenew=%comicNameInputRenew:"=%"
    set "comicNameInputRenew=%comicNameInputRenew:?=%"
    set "comicNameInputRenew=%comicNameInputRenew::=%"
    set "comicNameInputRenew=%comicNameInputRenew:/=%"
    set "comicNameInputRenew=%comicNameInputRenew:\=%"
    set "comicNameInputRenew=%comicNameInputRenew:!=%"
    set "comicNameInputRenew=%comicNameInputRenew:?=%"
    set "comicNameInputRenew=%comicNameInputRenew:.=%"
    set "comicNameInputRenew=%comicNameInputRenew:´=-%"
    set "comicNameInputRenew=%comicNameInputRenew:é=e%"
    set "comicNameInputRenew=%comicNameInputRenew:è=e%"
    set "comicNameInputRenew=%comicNameInputRenew: =_%"



    IF %pageCountInputRenew% GEQ %pageCountInput% cls && color 0c && echo. && echo. && echo   "%comicNameRenew%" wurde bereits vollständig heruntergeladen. && echo. && echo. && echo    Sie finden "%comicNameRenew%" unter: && echo. && echo      - Bilddateien/Comic:  %savePathRenew%\%downloadFolderRenew%\%comicNameInputRenew%\ && echo      - Backup:             %savePathRenew%\_backup\%comicIdRenew%.zip && echo      - Datenbankeintrag:   %savePathRenew%\_database\%comicIdRenew%\ && echo. && echo. && echo. && echo   Mit einem Klick auf [Enter] werden alle Eingaben zurückgesetzt und Sie können mit einem anderen Download beginnen. && echo. && echo. && PAUSE && set errorRestart=restart_yes
goto %errorRestart%
    IF %pageCountInputRenew% LSS %pageCountInput% CALL "src\ask_pagesRenew.cmd"
:errorRestartYES
    ::aktiviere äöü
