:: Erstelle Downloadliste und DB Ordner
    echo Erstelle Flatfile-Datenbankeintrag des Comics
    MD "%savePathDatabaseFolderComicID%\dl_lists"
        echo Erstelle Downloadliste/n
        echo von Seite %pages_start% bis Seite %pages_last%
:: Füge die zu downloadenden Dateien in die NameDownloadliste ein (schleIFe)
    for /l %%G in (%pages_start%,1,%pages_last%) do echo %imageDownloadFolderURL%%%G.jpg>>"%dl_list_all%" & echo %imageDownloadFolderURL%%%G.png>>"%dl_list_all%" & echo %imageDownloadFolderURL%%%G.gif>>"%dl_list_all%" & echo %imageDownloadFolderURL%%%G.jpg>>"%dl_list_jpg%" & echo %imageDownloadFolderURL%%%G.png>>"%dl_list_png%" & echo %imageDownloadFolderURL%%%G.gif>>"%dl_list_gif%"

    ::aktiviere הצü
