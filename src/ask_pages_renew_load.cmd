
    IF exist "%savePathDatabaseFolderComicID%\dl_folder.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\dl_folder.txt") DO set "dl_folder_renew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\main-url_num.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\main-url_num.txt") DO set "main-url_num_renew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\main-url.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\main-url.txt") DO set "main-url_renew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\dl-URL.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\dl-URL.txt") DO set "dl-URL_renew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\pages.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\pages.txt") DO set "pages_input_renew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\comic-name.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\comic-name.txt") DO set "comic-name_renew=%%f"
    IF exist "%savePathDatabaseFolderComicID%\savePath.txt" FOR /f "usebackq delims=" %%f IN ("%savePathDatabaseFolderComicID%\savePath.txt") DO set "savePath_renew=%%f"

        SET "pages_input_renew=%pages_input_renew: =%"
        SET /a "pages_input_renew=%pages_input_renew%"
        SET "pages_input=%pages_input: =%"
        SET /a "pages_input=%pages_input%"

        ::DEBUG echo "%pages_input_renew%" - "%pages_input%" && PAUSE

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



    IF %pages_input_renew% GEQ %pages_input% cls && color 0c && echo. && echo. && echo   "%comic-name_renew%" wurde bereits vollständig heruntergeladen. && echo. && echo. && echo    Sie finden "%comic-name_renew%" unter: && echo. && echo      - Bilddateien/Comic:  %savePath_renew%\%dl_folder_renew%\%comic-name_renew_input%\ && echo      - Backup:             %savePath_renew%\_backup\%main-url_num_renew%.zip && echo      - Datenbankeintrag:   %savePath_renew%\_database\%main-url_num_renew%\ && echo. && echo. && echo. && echo   Mit einem Klick auf [Enter] werden alle Eingaben zurückgesetzt und Sie können mit einem anderen Download beginnen. && echo. && echo. && PAUSE && set errorRestart=restart_yes
goto %errorRestart%
    IF %pages_input_renew% LSS %pages_input% CALL "src\ask_pages_renew.cmd"
:errorRestartYES
    ::aktiviere äöü
