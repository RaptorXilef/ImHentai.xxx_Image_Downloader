::md "%savePathDatabaseFolderComicID%"
SET "temp_comic_folder=..\..\%downloadFolder%\%comicName_%"
SET "temp_database_num=..\..\_database\%comicId%"

::Database
    echo %xDateRTime%>"%savePathDatabaseFolderComicID%\finished.txt"
    echo %comicName%>"%savePathDatabaseFolderComicID%\comicName.txt"
    echo %downloadFolder%>"%savePathDatabaseFolderComicID%\downloadFolder.txt"
    echo %pages_last% >"%savePathDatabaseFolderComicID%\pages.txt"
    echo %mainUrl%>"%savePathDatabaseFolderComicID%\mainUrl.txt"
    echo %comicId%>"%savePathDatabaseFolderComicID%\comicId.txt"
    echo %imageDownloadFolderURL%>"%savePathDatabaseFolderComicID%\imageDownloadFolderURL.txt"
    echo %savePath%>"%savePathDatabaseFolderComicID%\savePath.txt"
    ::pause
::Comicordner öffnen
    echo IF EXIST "%temp_comic_folder%" EXPLORER "%temp_comic_folder%" >"%savePathDatabaseFolderComicID%\_Goto_Comicordner.cmd"
    echo IF EXIST "%temp_comic_folder%_#" EXPLORER "%temp_comic_folder%_#" >>"%savePathDatabaseFolderComicID%\_Goto_Comicordner.cmd"
    ::pause
::Backup öffnen
    echo %savePathBackupFile%>"%savePath_comic_folder%\Comic-ID_%comicId%.txt"

::Comicfolder
    echo %savePathDatabaseFolderComicID%>"%savePath_comic_folder%\Comic-ID_%comicId%.txt"

::Comicfolder-Deletfile
    echo IF EXIST "%temp_database_num%" EXPLORER "%temp_database_num%" >"%savePath_comic_folder%\Goto_Databasefiles_and_Backup.cmd"

    echo IF EXIST "%temp_database_num%" RD /s /q "%temp_database_num%" >"%savePath_comic_folder%\Delete_the_Databasefiles_and_Backup_with_this.cmd"
    echo DEL "Delete_the_Databasefiles_with_this.cmd" >>"%savePath_comic_folder%\Delete_the_Databasefiles_and_Backup_with_this.cmd"
    ::pause
::Verknüpfung zur Webseite in der Datanbank anlegen
    echo Set objShell = CreateObject("WScript.Shell")>"%savePathDatabaseFolderComicID%\MakeShortCut.vbs"
    echo sShortcut = "%savePathDatabaseFolderComicID%\Webseite.lnk">>"%savePathDatabaseFolderComicID%\MakeShortCut.vbs"
    echo set objLink = objShell.CreateShortcut(sShortcut)>>"%savePathDatabaseFolderComicID%\MakeShortCut.vbs"
    echo 	objLink.TargetPath = "%mainUrl%">>"%savePathDatabaseFolderComicID%\MakeShortCut.vbs"
    echo objLink.Save>>"%savePathDatabaseFolderComicID%\MakeShortCut.vbs"
    ::... ausfuhren ...
    cscript //nologo "%savePathDatabaseFolderComicID%\MakeShortCut.vbs"
    ::... und wieder loschen.
    del "%savePathDatabaseFolderComicID%\MakeShortCut.vbs"
    ::pause

::??? Aktivieren
