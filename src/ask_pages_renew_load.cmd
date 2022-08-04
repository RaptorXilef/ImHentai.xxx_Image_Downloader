
    if exist "%save-to_database_num%\dl_folder.txt" FOR /f "usebackq delims=" %%f IN ("%save-to_database_num%\dl_folder.txt") DO set "dl_folder_renew=%%f"
    if exist "%save-to_database_num%\main-url_num.txt" FOR /f "usebackq delims=" %%f IN ("%save-to_database_num%\main-url_num.txt") DO set "main-url_num_renew=%%f"
    if exist "%save-to_database_num%\main-url.txt" FOR /f "usebackq delims=" %%f IN ("%save-to_database_num%\main-url.txt") DO set "main-url_renew=%%f"
    if exist "%save-to_database_num%\dl-URL.txt" FOR /f "usebackq delims=" %%f IN ("%save-to_database_num%\dl-URL.txt") DO set "dl-URL_renew=%%f"
    if exist "%save-to_database_num%\pages.txt" FOR /f "usebackq delims=" %%f IN ("%save-to_database_num%\pages.txt") DO set "pages_input_renew=%%f"
    if exist "%save-to_database_num%\comic-name.txt" FOR /f "usebackq delims=" %%f IN ("%save-to_database_num%\comic-name.txt") DO set "comic-name_renew=%%f"
    if exist "%save-to_database_num%\save-to.txt" FOR /f "usebackq delims=" %%f IN ("%save-to_database_num%\save-to.txt") DO set "save-to_renew=%%f"

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



    IF %pages_input_renew% GEQ %pages_input% cls && color 0c && echo. && echo. && echo   "%comic-name_renew%" wurde bereits vollständig heruntergeladen. && echo. && echo. && echo    Sie finden "%comic-name_renew%" unter: && echo. && echo      - Bilddateien/Comic:  %save-to_renew%\%dl_folder_renew%\%comic-name_renew_input%\ && echo      - Backup:             %save-to_renew%\_backup\%main-url_num_renew%.zip && echo      - Datenbankeintrag:   %save-to_renew%\_database\%main-url_num_renew%\ && echo. && echo. && echo. && echo   Mit einem Klick auf [Enter] werden alle Eingaben zurückgesetzt und Sie können mit einem anderen Download beginnen. && echo. && echo. && PAUSE && set restart_yn=restart_yes

    IF %pages_input_renew% LSS %pages_input% CALL "resources\ask_pages_renew.cmd"

    ::aktiviere äöü
    
    
    