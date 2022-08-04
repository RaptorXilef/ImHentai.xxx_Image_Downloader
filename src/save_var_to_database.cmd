::md "%save-to_database_num%"
SET "temp_comic_folder=..\..\%dl_folder%\%comic-name_%"
SET "temp_database_num=..\..\_database\%main-url_num%"

::Database
    echo %xDateRTime%>"%save-to_database_num%\finished.txt"
    echo %comic-name%>"%save-to_database_num%\comic-name.txt"
    echo %dl_folder%>"%save-to_database_num%\dl_folder.txt"
    echo %pages_last% >"%save-to_database_num%\pages.txt"
    echo %main-url%>"%save-to_database_num%\main-url.txt"
    echo %main-url_num%>"%save-to_database_num%\main-url_num.txt"
    echo %dl-url%>"%save-to_database_num%\dl-url.txt"
    echo %save-to%>"%save-to_database_num%\save-to.txt"
    ::pause
::Comicordner öffnen
    echo IF EXIST "%temp_comic_folder%" EXPLORER "%temp_comic_folder%" >"%save-to_database_num%\_Goto_Comicordner.cmd"
    echo IF EXIST "%temp_comic_folder%_#" EXPLORER "%temp_comic_folder%_#" >>"%save-to_database_num%\_Goto_Comicordner.cmd"
    ::pause
::Backup öffnen
    echo %save-to_backup_file%>"%save-to_comic_folder%\Comic-ID_%main-url_num%.txt"

::Comicfolder
    echo %save-to_database_num%>"%save-to_comic_folder%\Comic-ID_%main-url_num%.txt"
    
::Comicfolder-Deletfile
    echo IF EXIST "%temp_database_num%" EXPLORER "%temp_database_num%" >"%save-to_comic_folder%\Goto_Databasefiles_and_Backup.cmd"
    
    echo IF EXIST "%temp_database_num%" RD /s /q "%temp_database_num%" >"%save-to_comic_folder%\Delete_the_Databasefiles_and_Backup_with_this.cmd"
    echo DEL "Delete_the_Databasefiles_with_this.cmd" >>"%save-to_comic_folder%\Delete_the_Databasefiles_and_Backup_with_this.cmd"
    ::pause
::Verknüpfung zur Webseite in der Datanbank anlegen 
    echo Set objShell = CreateObject("WScript.Shell")>"%save-to_database_num%\MakeShortCut.vbs"
    echo sShortcut = "%save-to_database_num%\Webseite.lnk">>"%save-to_database_num%\MakeShortCut.vbs"
    echo set objLink = objShell.CreateShortcut(sShortcut)>>"%save-to_database_num%\MakeShortCut.vbs"
    echo 	objLink.TargetPath = "%main-url%">>"%save-to_database_num%\MakeShortCut.vbs"
    echo objLink.Save>>"%save-to_database_num%\MakeShortCut.vbs"
    ::... ausfuhren ...
    cscript //nologo "%save-to_database_num%\MakeShortCut.vbs"
    ::... und wieder loschen.
    del "%save-to_database_num%\MakeShortCut.vbs"
    ::pause
    
::??? Aktivieren