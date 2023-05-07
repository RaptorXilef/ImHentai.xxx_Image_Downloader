REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "!~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=!1")
IF !STARTED_CORRECTLY!==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF !STARTED_CORRECTLY!==1 (IF "!DEBUG!"=="DebugON" ECHO. & ECHO DEBUG-Info: refinishing\SaveVarToDatabase.cmd load successful! & ECHO.)
IF "!DEBUG!"=="DebugON" CHOICE /N /C 123 /T !DEBUGTIME! /D 1 >NUL
REM ############################################################################


REM md "!savePathDatabaseFolderComicID!"
SET "temp_comic_folder=..\..\!downloadFolder!\!comicName_!"
SET "temp_database_num=..\..\_database\!comicId!"

REM Database
IF "!DEBUG!"=="DebugON" (
CLS
  ECHO !temp_comic_folder!
  ECHO !temp_database_num!
  ECHO.
    ECHO !xDateRTime! !xDateRTime!
    ECHO !comicName!
    ECHO !downloadFolder!
    ECHO !pages_last!
    ECHO !mainUrl!
    ECHO !comicId!
    ECHO !imageDownloadFolderURL!
    ECHO !savePath!
    ECHO.
    ECHO !savePathDatabaseFolderComicID!
    ECHO !savePath_comic_folder!
    ECHO !savePathDatabaseFolderComicID!
)


    ECHO !xDateRTime!>"!savePathDatabaseFolderComicID!\finished.txt"
    ECHO !comicName!>"!savePathDatabaseFolderComicID!\comicName.txt"
    ECHO !downloadFolder!>"!savePathDatabaseFolderComicID!\downloadFolder.txt"
    ECHO !pages_last!>"!savePathDatabaseFolderComicID!\pages.txt"
    ECHO !mainUrl!>"!savePathDatabaseFolderComicID!\mainUrl.txt"
    ECHO !comicId!>"!savePathDatabaseFolderComicID!\comicId.txt"
    ECHO !imageDownloadFolderURL!>"!savePathDatabaseFolderComicID!\imageDownloadFolderURL.txt"
    ECHO !savePath!>"!savePathDatabaseFolderComicID!\savePath.txt"

REM Comicordner öffnen
    ECHO IF EXIST "!temp_comic_folder!" EXPLORER "!temp_comic_folder!" >"!savePathDatabaseFolderComicID!\_Goto_Comicordner.cmd"
    ECHO IF EXIST "!temp_comic_folder!_#" EXPLORER "!temp_comic_folder!_#" >>"!savePathDatabaseFolderComicID!\_Goto_Comicordner.cmd"
    REM pause
REM Backup öffnen
    ECHO !savePathBackupFile!>"!savePath_comic_folder!\Comic-ID_!comicId!.txt"

REM Comicfolder
    ECHO !savePathDatabaseFolderComicID!>"!savePath_comic_folder!\Comic-ID_!comicId!.txt"

REM Comicfolder-Deletfile
    ECHO IF EXIST "!temp_database_num!" EXPLORER "!temp_database_num!" >"!savePath_comic_folder!\Goto_Databasefiles_and_Backup.cmd"

    ECHO IF EXIST "!temp_database_num!" RD /s /q "!temp_database_num!" >"!savePath_comic_folder!\Delete_the_Databasefiles_and_Backup_with_this.cmd"
    ECHO DEL "Delete_the_Databasefiles_with_this.cmd" >>"!savePath_comic_folder!\Delete_the_Databasefiles_and_Backup_with_this.cmd"

REM Verknüpfung zur Webseite in der Datanbank anlegen
    ECHO Set objShell = CreateObject("WScript.Shell")>"!savePathDatabaseFolderComicID!\MakeShortCut.vbs"
    ECHO sShortcut = "!savePathDatabaseFolderComicID!\Webseite.lnk">>"!savePathDatabaseFolderComicID!\MakeShortCut.vbs"
    ECHO set objLink = objShell.CreateShortcut(sShortcut)>>"!savePathDatabaseFolderComicID!\MakeShortCut.vbs"
    ECHO 	objLink.TargetPath = "!mainUrl!">>"!savePathDatabaseFolderComicID!\MakeShortCut.vbs"
    ECHO objLink.Save>>"!savePathDatabaseFolderComicID!\MakeShortCut.vbs"
    REM ... ausfuhren ...
    cscript //nologo "!savePathDatabaseFolderComicID!\MakeShortCut.vbs"
    REM ... und wieder loschen.
    DEL "!savePathDatabaseFolderComicID!\MakeShortCut.vbs"

EXIT /B
REM äöü Aktivieren
