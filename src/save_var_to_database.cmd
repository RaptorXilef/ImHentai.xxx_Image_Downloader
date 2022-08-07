::md "%savePath_database_num%"
SET "temp_comic_folder=..\..\%dl_folder%\%comic-name_%"
SET "temp_database_num=..\..\_database\%main-url_num%"

::Database
    echo %xDateRTime%>"%savePath_database_num%\finished.txt"
    echo %comic-name%>"%savePath_database_num%\comic-name.txt"
    echo %dl_folder%>"%savePath_database_num%\dl_folder.txt"
    echo %pages_last% >"%savePath_database_num%\pages.txt"
    echo %main-url%>"%savePath_database_num%\main-url.txt"
    echo %main-url_num%>"%savePath_database_num%\main-url_num.txt"
    echo %dl-url%>"%savePath_database_num%\dl-url.txt"
    echo %savePath%>"%savePath_database_num%\savePath.txt"
    ::pause
::Comicordner öffnen
    echo IF EXIST "%temp_comic_folder%" EXPLORER "%temp_comic_folder%" >"%savePath_database_num%\_Goto_Comicordner.cmd"
    echo IF EXIST "%temp_comic_folder%_#" EXPLORER "%temp_comic_folder%_#" >>"%savePath_database_num%\_Goto_Comicordner.cmd"
    ::pause
::Backup öffnen
    echo %savePath_backup_file%>"%savePath_comic_folder%\Comic-ID_%main-url_num%.txt"

::Comicfolder
    echo %savePath_database_num%>"%savePath_comic_folder%\Comic-ID_%main-url_num%.txt"

::Comicfolder-Deletfile
    echo IF EXIST "%temp_database_num%" EXPLORER "%temp_database_num%" >"%savePath_comic_folder%\Goto_Databasefiles_and_Backup.cmd"

    echo IF EXIST "%temp_database_num%" RD /s /q "%temp_database_num%" >"%savePath_comic_folder%\Delete_the_Databasefiles_and_Backup_with_this.cmd"
    echo DEL "Delete_the_Databasefiles_with_this.cmd" >>"%savePath_comic_folder%\Delete_the_Databasefiles_and_Backup_with_this.cmd"
    ::pause
::Verknüpfung zur Webseite in der Datanbank anlegen
    echo Set objShell = CreateObject("WScript.Shell")>"%savePath_database_num%\MakeShortCut.vbs"
    echo sShortcut = "%savePath_database_num%\Webseite.lnk">>"%savePath_database_num%\MakeShortCut.vbs"
    echo set objLink = objShell.CreateShortcut(sShortcut)>>"%savePath_database_num%\MakeShortCut.vbs"
    echo 	objLink.TargetPath = "%main-url%">>"%savePath_database_num%\MakeShortCut.vbs"
    echo objLink.Save>>"%savePath_database_num%\MakeShortCut.vbs"
    ::... ausfuhren ...
    cscript //nologo "%savePath_database_num%\MakeShortCut.vbs"
    ::... und wieder loschen.
    del "%savePath_database_num%\MakeShortCut.vbs"
    ::pause

::??? Aktivieren
