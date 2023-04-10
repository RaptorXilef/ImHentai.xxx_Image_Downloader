@ECHO OFF
REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (
  SET "STARTED_CORRECTLY=0"
) ELSE (
  SET "STARTED_CORRECTLY=%1"
)
IF %STARTED_CORRECTLY%==0 (CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: Debug.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T 3 /D 1 >NUL

mode con lines=155 cols=180
CLS
COLOR 08
ECHO.
ECHO Debug / empty variables can indicate an error
ECHO Debug / leere Variablen können auf einen Fehler deuten
ECHO ==================================================================
ECHO.
ECHO DEBUG: "%DEBUG%"
ECHO CurrentVersion: "%CurrentVersion%"
ECHO colorEcho: "%colorEcho%"
ECHO outputMenu="%outputMenu%"
ECHO countrycode="%countrycode%"
ECHO xTime: "%xTime%"
ECHO xDate: "%xDate%"
ECHO xDateRevers: "%xDateRevers%"
ECHO xTimeDate: "%xTimeDate%"
ECHO xDateRTime: "%xDateRTime%"






::Sprache
ECHO    countrycode: "%countrycode%"
::(32bit/64bit)
ECHO    PROCESSOR_ARCHITECTURE:~-2: "%PROCESSOR_ARCHITECTURE:~-2%"
::Download-Hauptverzeichnis
ECHO    savePath: "%savePath%"
ECHO    downloadFolder: "%downloadFolder%"
ECHO.
ECHO.

ECHO ^=^> URLs
ECHO    ====
::URL
ECHO    mainUrl: "%mainUrl%" & ::Webseite
ECHO    comicId: "%comicId%" & ::Nur Webseitennummer / Comic-ID
ECHO    (Comic-ID-als-Ganzzahl) main_url_temp: "%main_url_temp%"
ECHO    (Comic-ID-länge) strlen: "%strlen%"
ECHO.
ECHO ^=^> Ausgelesen
ECHO    imageDownloadFolderURL: "%imageDownloadFolderURL%" & ::Comic Download



::Seitenanzahl
ECHO    pages: "%pages%"
ECHO    pages_start: "%pages_start%"
ECHO    pages_last: "%pages_last%"


::Name des Comics (Manuelle eingabe)
ECHO    comicName: "%comicName%" & ::Normal
ECHO    comicName_: "%comicName_%" & ::Ohne Leerzeichen -> _
ECHO.
ECHO.


ECHO ^=^> Pfade
ECHO    =====
::Ordner
ECHO    savePathTempFolder: "%savePathTempFolder%" & ::= %savePath% +
ECHO    savePathTempFolderComicID: "%savePathTempFolderComicID%" & ::= %savePathTempFolder% + %comicId%
ECHO    savePathDatabaseFolder: "%savePathDatabaseFolder%" & ::= %savePath% +
ECHO    savePathDatabaseFolderComicID: "%savePathDatabaseFolderComicID%" & ::= %savePathDatabaseFolder + %comicId%
ECHO    savePath_downloadFolder: "%savePath_downloadFolder%" & ::= %savePath% + %downloadFolder%
ECHO    savePath_comic_folder: "%savePath_comic_folder%" & ::= %savePath% + %downloadFolder% + %comicName_%
::ECHO    savePath_backup_num: "%savePath_backup_num%" & ::= %savePath% + %_backup% + %comicId%
ECHO    dl_lists: "%dl_lists%" & ::= %savePath% + dl_lists
ECHO.
ECHO.





ECHO.
ECHO.
ECHO.
ECHO ^=^> Andere
ECHO    ======
ECHO    htmlVAR: "%htmlVAR%"
ECHO    tempVAR: "%tempVAR%"
ECHO    mainUrlTemp: "%mainUrlTemp%"
ECHO    restart_yn: "%restart_yn%"
ECHO    artistInput: "%artistInput%"


ECHO.
ECHO.
ECHO.
ECHO ^=^> Diese Variablen werden nur gefüllt, wenn ein Comic bereits existierte und neue Seiten dazugekommen sind
ECHO    ========================================================================================================
ECHO    savePathRenew: "%savePathRenew%"
ECHO    downloadFolderRenew: "%downloadFolderRenew%"
ECHO    comicIdRenew: "%comicIdRenew%"
ECHO    mainUrlRenew: "%mainUrlRenew%"
ECHO    imageDownloadFolderURLRenew: "%imageDownloadFolderURLRenew%"
ECHO    pageCountInputRenew: "%pageCountInputRenew%"
ECHO    comicNameRenew: "%comicNameRenew%"
::ECHO    : "%%"





::url und anzahl aus string!!!!!!!!!!!!
EXIT /B
