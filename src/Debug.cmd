mode con lines=155 cols=180
CLS
COLOR 08
ECHO.
ECHO Debug / empty variables can indicate an error
ECHO Debug / leere Variablen k?nnen auf einen Fehler deuten
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
ECHO    lang: "%lang%"
::(32bit/64bit)
ECHO    PROCESSOR_ARCHITECTURE:~-2: "%PROCESSOR_ARCHITECTURE:~-2%"
::Download-Hauptverzeichnis
ECHO    savePath: "%savePath%"
ECHO    dl_folder: "%dl_folder%"
ECHO.
ECHO.

ECHO ^=^> URLs
ECHO    ====
::URL
ECHO    mainUrl: "%mainUrl%" & ::Webseite
ECHO    comicId: "%comicId%" & ::Nur Webseitennummer / Comic-ID
ECHO    (Comic-ID-als-Ganzzahl) main_url_temp: "%main_url_temp%"
ECHO    (Comic-ID-l?nge) strlen: "%strlen%"
ECHO.
ECHO ^=^> Ausgelesen
ECHO    imageDownloadFolderURL: "%imageDownloadFolderURL%" & ::Comic Download



::Seitenanzahl
ECHO    pages: "%pages%"
ECHO    pages_start: "%pages_start%"
ECHO    pages_last: "%pages_last%"


::Name des Comics (Manuelle eingabe)
ECHO    comic-name: "%comic-name%" & ::Normal
ECHO    comic-name_: "%comic-name_%" & ::Ohne Leerzeichen -> _
ECHO.
ECHO.


ECHO ^=^> Pfade
ECHO    =====
::Ordner
ECHO    savePathTempFolder: "%savePathTempFolder%" & ::= %savePath% +
ECHO    savePathTempFolderComicID: "%savePathTempFolderComicID%" & ::= %savePathTempFolder% + %comicId%
ECHO    savePathDatabaseFolder: "%savePathDatabaseFolder%" & ::= %savePath% +
ECHO    savePathDatabaseFolderComicID: "%savePathDatabaseFolderComicID%" & ::= %savePathDatabaseFolder + %comicId%
ECHO    savePath_dl_folder: "%savePath_dl_folder%" & ::= %savePath% + %dl_folder%
ECHO    savePath_comic_folder: "%savePath_comic_folder%" & ::= %savePath% + %dl_folder% + %comic-name_%
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
ECHO ^=^> Diese Variablen werden nur gef?llt, wenn ein Comic bereits existierte und neue Seiten dazugekommen sind
ECHO    ========================================================================================================
ECHO    savePath_renew: "%savePath_renew%"
ECHO    dl_folder_renew: "%dl_folder_renew%"
ECHO    comicId_renew: "%comicId_renew%"
ECHO    mainUrl_renew: "%mainUrl_renew%"
ECHO    imageDownloadFolderURL_renew: "%imageDownloadFolderURL_renew%"
ECHO    pageCountInput_renew: "%pageCountInput_renew%"
ECHO    comic-name_renew: "%comic-name_renew%"
::ECHO    : "%%"





::url und anzahl aus string!!!!!!!!!!!!
