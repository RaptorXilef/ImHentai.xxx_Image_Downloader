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
ECHO outputMenue="%outputMenue%"
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
ECHO    main-url: "%main-url%" & ::Webseite
ECHO    main-url_num: "%main-url_num%" & ::Nur Webseitennummer / Comic-ID
ECHO    (Comic-ID-als-Ganzzahl) main_url_temp: "%main_url_temp%"
ECHO    (Comic-ID-länge) strlen: "%strlen%"
ECHO.
ECHO ^=^> Ausgelesen
ECHO    dl-URL: "%dl-URL%" & ::Comic Download



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
ECHO    savePath_tempfolder: "%savePath_tempfolder%" & ::= %savePath% +
ECHO    savePath_tempfolder_num: "%savePath_tempfolder_num%" & ::= %savePath_tempfolder% + %main-url_num%
ECHO    savePath_database: "%savePath_database%" & ::= %savePath% +
ECHO    savePath_database_num: "%savePath_database_num%" & ::= %savePath_database + %main-url_num%
ECHO    savePath_dl_folder: "%savePath_dl_folder%" & ::= %savePath% + %dl_folder%
ECHO    savePath_comic_folder: "%savePath_comic_folder%" & ::= %savePath% + %dl_folder% + %comic-name_%
ECHO    savePath_backup: "%savePath_backup%" & ::= %savePath% + %_backup%
ECHO    savePath_backup_num: "%savePath_backup_num%" & ::= %savePath% + %_backup% + %main-url_num%
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
ECHO    main-url_temp: "%main-url_temp%"
ECHO    restart_yn: "%restart_yn%"
ECHO    artist_input: "%artist_input%"


ECHO.
ECHO.
ECHO.
ECHO ^=^> Diese Variablen werden nur gefüllt, wenn ein Comic bereits existierte und neue Seiten dazugekommen sind
ECHO    ========================================================================================================
ECHO    savePath_renew: "%savePath_renew%"
ECHO    dl_folder_renew: "%dl_folder_renew%"
ECHO    main-url_num_renew: "%main-url_num_renew%"
ECHO    main-url_renew: "%main-url_renew%"
ECHO    dl-URL_renew: "%dl-URL_renew%"
ECHO    pages_input_renew: "%pages_input_renew%"
ECHO    comic-name_renew: "%comic-name_renew%"
::ECHO    : "%%"





::url und anzahl aus string!!!!!!!!!!!!
