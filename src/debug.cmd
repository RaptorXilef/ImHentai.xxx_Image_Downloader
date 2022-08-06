:: Variablen:
mode con lines=155 cols=180
cls
color 08
echo.
echo Debug / empty variables can indicate an error
echo Debug / leere Variablen können auf einen Fehler deuten
echo ==================================================================
echo.
echo    version: "%version%"



::Sprache
echo    lang: "%lang%"
::(32bit/64bit)
echo    PROCESSOR_ARCHITECTURE:~-2: "%PROCESSOR_ARCHITECTURE:~-2%"
::Download-Hauptverzeichnis
echo    save-to: "%save-to%"
echo    dl_folder: "%dl_folder%"
echo.
echo.

echo ^=^> URLs
echo    ====
::URL
echo    main-url: "%main-url%" & ::Webseite
echo    main-url_num: "%main-url_num%" & ::Nur Webseitennummer / Comic-ID
echo    (Comic-ID-als-Ganzzahl) main_url_temp: "%main_url_temp%"
echo    (Comic-ID-länge) strlen: "%strlen%"
echo.
echo ^=^> Ausgelesen
echo    dl-URL: "%dl-URL%" & ::Comic Download



::Seitenanzahl
echo    pages: "%pages%"
echo    pages_start: "%pages_start%"
echo    pages_last: "%pages_last%"


::Name des Comics (Manuelle eingabe)
echo    comic-name: "%comic-name%" & ::Normal
echo    comic-name_: "%comic-name_%" & ::Ohne Leerzeichen -> _
echo.
echo.


echo ^=^> Pfade
echo    =====
::Ordner
echo    save-to_tempfolder: "%save-to_tempfolder%" & ::= %save-to% +
echo    save-to_tempfolder_num: "%save-to_tempfolder_num%" & ::= %save-to_tempfolder% + %main-url_num%
echo    save-to_database: "%save-to_database%" & ::= %save-to% +
echo    save-to_database_num: "%save-to_database_num%" & ::= %save-to_database + %main-url_num%
echo    save-to_dl_folder: "%save-to_dl_folder%" & ::= %save-to% + %dl_folder%
echo    save-to_comic_folder: "%save-to_comic_folder%" & ::= %save-to% + %dl_folder% + %comic-name_%
echo    save-to_backup: "%save-to_backup%" & ::= %save-to% + %_backup%
echo    save-to_backup_num: "%save-to_backup_num%" & ::= %save-to% + %_backup% + %main-url_num%
echo    dl_lists: "%dl_lists%" & ::= %save-to% + dl_lists
echo.
echo.


echo ^=^> Zeit
echo    ====
::Zeit
echo    xTime: "%xTime%"
echo    xDate: "%xDate%"
echo    xDateRevers: "%xDateRevers%"
echo    xTimeDate: "%xTimeDate%"
echo    xDateRTime: "%xDateRTime%"


echo.
echo.
echo.
echo ^=^> Andere
echo    ======
echo    htmlVAR: "%htmlVAR%"
echo    tempVAR: "%tempVAR%"
echo    main-url_temp: "%main-url_temp%"
echo    restart_yn: "%restart_yn%"
echo    artist_input: "%artist_input%"


echo.
echo.
echo.
echo ^=^> Diese Variablen werden nur gefüllt, wenn ein Comic bereits existierte und neue Seiten dazugekommen sind
echo    ========================================================================================================
echo    save-to_renew: "%save-to_renew%"
echo    dl_folder_renew: "%dl_folder_renew%"
echo    main-url_num_renew: "%main-url_num_renew%"
echo    main-url_renew: "%main-url_renew%"
echo    dl-URL_renew: "%dl-URL_renew%"
echo    pages_input_renew: "%pages_input_renew%"
echo    comic-name_renew: "%comic-name_renew%"
::echo    : "%%"





::url und anzahl aus string!!!!!!!!!!!!
