
    IF exist "%savePathDatabaseFolderComicID%\dl_folder.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\dl_folder.txt") DO set "dl_folder_renew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\comicId.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\comicId.txt") DO set "comicId_renew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\mainUrl.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\mainUrl.txt") DO set "mainUrl_renew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\imageDownloadFolderURL.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\imageDownloadFolderURL.txt") DO set "imageDownloadFolderURL_renew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\pages.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\pages.txt") DO set "pageCountInput_renew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\comic-name.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\comic-name.txt") DO set "comic-name_renew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\savePath.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\savePath.txt") DO set "savePath_renew=%%f"

        SET "pageCountInput_renew=%pageCountInput_renew: =%"
        SET /a "pageCountInput_renew=%pageCountInput_renew%"
        SET "pageCountInput=%pageCountInput: =%"
        SET /a "pageCountInput=%pageCountInput%"

        ::DEBUG echo "%pageCountInput_renew%" - "%pageCountInput%" && PAUSE

    :AntiSonderzeichenName
    ::Entferne Sonderzeichen aus dem eingegebenen String
    set "comic-name_renew_input=%comic-name_renew:<=%"
    set "comic-name_renew_input=%comic-name_renew_input:>=%"
    set "comic-name_renew_input=%comic-name_renew_input:&=%"
    set "comic-name_renew_input=%comic-name_renew_input:|=%"
    set "comic-name_renew_input=%comic-name_renew_input:^=%"
    set "comic-name_renew_input=%comic-name_renew_input:"=%"
    set "comic-name_renew_input=%comic-name_renew_input:?=%"
    set "comic-name_renew_input=%comic-name_renew_input::=%"
    set "comic-name_renew_input=%comic-name_renew_input:/=%"
    set "comic-name_renew_input=%comic-name_renew_input:\=%"
    set "comic-name_renew_input=%comic-name_renew_input:!=%"
    set "comic-name_renew_input=%comic-name_renew_input:?=%"
    set "comic-name_renew_input=%comic-name_renew_input:.=%"
    set "comic-name_renew_input=%comic-name_renew_input:´=-%"
    set "comic-name_renew_input=%comic-name_renew_input:é=e%"
    set "comic-name_renew_input=%comic-name_renew_input:è=e%"
    set "comic-name_renew_input=%comic-name_renew_input: =_%"



    IF %pageCountInput_renew% GEQ %pageCountInput% cls && color 0c && echo. && echo. && echo   "%comic-name_renew%" wurde bereits vollständig heruntergeladen. && echo. && echo. && echo    Sie finden "%comic-name_renew%" unter: && echo. && echo      - Bilddateien/Comic:  %savePath_renew%\%dl_folder_renew%\%comic-name_renew_input%\ && echo      - Backup:             %savePath_renew%\_backup\%comicId_renew%.zip && echo      - Datenbankeintrag:   %savePath_renew%\_database\%comicId_renew%\ && echo. && echo. && echo. && echo   Mit einem Klick auf [Enter] werden alle Eingaben zurückgesetzt und Sie können mit einem anderen Download beginnen. && echo. && echo. && PAUSE && set errorRestart=restart_yes
goto %errorRestart%
    IF %pageCountInput_renew% LSS %pageCountInput% CALL "src\ask_pages_renew.cmd"
:errorRestartYES
    ::aktiviere äöü
