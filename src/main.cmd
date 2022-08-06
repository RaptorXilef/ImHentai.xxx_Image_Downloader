:: ===============================================================================================
::      Preload
:: ===============================================================================================
    set restart_yn=restart_no
:: Abfrage der aktuellen Zeit
    CALL "resources/time.cmd"
:: pages_start
    SET /a "pages_start=1"
REM SET VARIABLE for Software cecho -^> Colors in CMD
    SET "colorEcho=third_party_software\cecho%PROCESSOR_ARCHITECTURE:~-2%.exe"
REM DEBUG
    IF "%DEBUG%"=="ON" (
        %color_echo% Color loading successful!
        %colorEcho% {00}00 - black{\n}{01}01 - navy{\n}{02}02 - green{\n}{03}03 - teal{\n}{04}04 - maroon{\n}{05}05 - purple{\n}{06}06 - olive{\n}{07}07 - silver{\n}{08}08 - gray{\n}{09}09 - blue{\n}{0A}0A - lime{\n}{0B}0B - aqua{\n}{0C}0C - red{\n}{0D}0D - fuchisa{\n}{0E}0E - yellow{\n}{0F}0F - white{\n}{#}
        choice /N /C 123 /T 3 /D 1 >NUL
    )



:: ===============================================================================================
::      Voreinstellungen (Einmalig)
:: ===============================================================================================
:: Hauptverzeichnis zum speichern der Downloads festlegen/abfragen
    CALL "resources\exist_save-to.cmd"
        IF not exist "%save-to%" MD "%save-to%"
    set "save-to_tempfolder=%save-to%\_database\_temp"
    set "save-to_database=%save-to%\_database"
    set "save-to_backup=%save-to%\_database"




:: ===============================================================================================
::      Downloadfragen1
:: ===============================================================================================
:: URL zum Auslesen der Werte wie Download-URL, Name, Seitenanzahl...
    CALL "resources\ask_main-url.cmd"

    SET "save-to_tempfolder_num=%save-to_tempfolder%\%main-url_num%"
    SET "save-to_database_num=%save-to_database%\%main-url_num%"
    SET "save-to_backup_num=%save-to_backup%\%main-url_num%"
    SET "save-to_backup_file=%save-to_backup_num%\%main-url_num%.zip"


:: ===============================================================================================
::      Webseite auslesen
:: ===============================================================================================
:: Auslesen der Werte Download-URL, Name, Seitenanzahl...
    CALL "resources\read_website.cmd"

    goto %restart_yn%
:restart_no


:: ===============================================================================================
::      Prüfen: Bereits heruntergeladen / Seiten fehlen? / History + Name des Comics #
:: ===============================================================================================
:: Prüfen ob Comic bereits heruntergeladen wurde (wenn ja, lade Variablen aus DB)
:: Comicnamen zum speichern der Downloads festlegen
:: ===============================================================================================
::      Downloadfragen2
:: ===============================================================================================
:: Unterverzeichnis zum speichern der Downloads festlegen
    IF not exist "%save-to_database_num%\finished.txt" CALL "resources\ask_dl_folder.cmd"
:: Seitenanzahl festlegen oder bestätigen
    IF not exist "%save-to_database_num%\finished.txt" CALL "resources\ask_pages.cmd"
    IF exist "%save-to_database_num%\finished.txt" CALL "resources\ask_pages_renew_load.cmd"
    goto %restart_yn%
:restart_no

    SET "save-to_dl_folder=%save-to%\%dl_folder%

    SET /a "pages_last=%pages%"
:: Comicname festlegen oder bestätigen
    IF not exist "%save-to_database_num%\finished.txt" CALL "resources\ask_comic-name.cmd"
:: Datenprüfung
    IF not exist "%save-to_database_num%\finished.txt" CALL "resources\ask_all_right.cmd"
    IF exist "%save-to_database_num%\finished.txt" CALL "resources\ask_all_right_renew.cmd"
    goto %restart_yn%
:restart_no
    SET "save-to_comic_folder=%save-to_dl_folder%\%comic-name_%"


:: ===============================================================================================
::      Download vorbereiten
:: ===============================================================================================
:: Variablen für WGet Downloader
    SET "dl_lists=%save-to_database_num%\dl_lists"
    set "dl_list_all=%dl_lists%\ALL_%xDateRTime%.txt"
    set "dl_list_jpg=%dl_lists%\JPG_%xDateRTime%.txt"
    set "dl_list_png=%dl_lists%\PNG_%xDateRTime%.txt"
    set "dl_list_gIF=%dl_lists%\GIF_%xDateRTime%.txt"

:: Erstelle Downloadliste und DB Ordner
:: Füge die zu downloadenden Dateien in die NameDownloadliste ein (schleIFe)
    CALL "resources\wget_dl_lists.cmd"


:: ===============================================================================================
::      Starte Download
:: ===============================================================================================
:: Erstelle Comicordner für den Download
:: Starte Download mit WGet über 32 oder 64 bit
    CALL "resources\wget_start.cmd"


:: ===============================================================================================
::      Bilder nummerrieren
:: ===============================================================================================
:: Bilder entsprechend der Anzahl mit vorstehenden Nullen durchnummerrieren.
    CALL "resources\rename_count.cmd"


:: ===============================================================================================
::      Verknüpfung zur Webseite
:: ===============================================================================================
:: Packe eine Verknüpfung zur Comic-Webseite mit in den Comicordner
    CALL "resources\web_link_create.cmd"


:: ===============================================================================================
::      Download abschließen / Script Beenden
:: ===============================================================================================
:: Setze Datanbank auf fertig
    IF NOT EXIST "%save-to_database%" MD "%save-to_database%" && attrib +h "%save-to_database%"
    call "resources\save_var_to_database.cmd"


:: ===============================================================================================
::      Backup
:: ===============================================================================================
:: Erstelle ein Backup der heruntergeladenen Bilder
:: Zippe die Downloadlisten um Speicherplatz zu spaaren
    IF NOT EXIST "%save-to_backup%" MD "%save-to_backup%"
    CALL "resources\7zr_start.cmd"


choice /N /C 123 /T 1 /D 1 >NUL

:restart_yes
