:: Erstelle Downloadliste und DB Ordner
    echo Erstelle Flatfile-Datenbankeintrag des Comics
    MD "%save-to_database_num%\dl_lists"
        echo Erstelle Downloadliste/n
        echo von Seite %pages_start% bis Seite %pages_last%
:: Füge die zu downloadenden Dateien in die NameDownloadliste ein (schleife)
    for /l %%G in (%pages_start%,1,%pages_last%) do echo %dl-URL%%%G.jpg>>"%dl_list_all%" & echo %dl-URL%%%G.png>>"%dl_list_all%" & echo %dl-URL%%%G.gif>>"%dl_list_all%" & echo %dl-URL%%%G.jpg>>"%dl_list_jpg%" & echo %dl-URL%%%G.png>>"%dl_list_png%" & echo %dl-URL%%%G.gif>>"%dl_list_gif%"

    ::aktiviere הצü