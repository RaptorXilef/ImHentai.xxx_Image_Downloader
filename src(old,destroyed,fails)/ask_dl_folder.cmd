:downloadFolder_input
    color 0a
    cls
    echo    Unterordner wählen / Thema wählen
    echo   +=======================================================================================================================================================================
    echo   ^>
    echo   ^>  Downloadthema
    echo   ^>  =============
    echo   ^>
    echo   ^>
    echo   ^>    Eingabe ^| Unter-Ordnername
    echo   ^>    --------^|----------------------
    echo   ^>       d    ^| Downloads_Allgemein
    echo   ^>       a    ^| Animals_-_Feral
    echo   ^>       dr   ^| Dragon
    echo   ^>       f    ^| Furry
    echo   ^>       c    ^| Furry_Cub
    echo   ^>       h    ^| Human /Menschen
    echo   ^>       hc   ^| Human Children
    echo   ^>       k    ^| Kids_movies
    echo   ^>       p    ^| Pokemon
    echo   ^>       di   ^| Digimon
    echo   ^>       s    ^| Spezial
    echo   ^>       z    ^| Zootopia
    echo   ^>       an   ^| Anime
    echo   ^>       de   ^| Deutsch
    echo   ^>      mlp   ^| MyLittlePony
    echo   ^>      pic   ^| Pictures_only
    echo   ^>       tk   ^| TwoKinds
    echo   ^>      tlk   ^| The_Lion_King
    echo   ^>       o    ^| Other
    echo   ^>
    echo   ^>      sfw   ^| SFW
    echo   ^>
    echo   ^>       f    ^| Favouriten
    echo   ^>
    echo   ^>            ^| Manuelle Eingabe eines eigenen Ordnernamen (Der Inhalt des Ordners wird nur bei dessen Auswahl geprüft) (In dieser Version nicht empfohlen)
    echo   ^>
    echo   ^>
    echo   ^>       i    ^| ImHentai.xxx öffnen
    echo   ^>       e    ^| Exit / Anwendung beenden
    echo   +=======================================================================================================================================================================
    echo.
    echo   #  In welchen Ordner soll der Comic gedownloadet werden?
    echo         - Beispiel: tk
    echo         # Eingabe mit Enter bestätigen:
    echo.
    set "downloadFolder_input=d"
    set /p "downloadFolder_input=------> Ordner: "
    ::if "%downloadFolder_input%"=="" set "downloadFolder_input=da"

:AntiSonderzeichenName
    ::Entferne Sonderzeichen aus dem eingegebenen String
    set "downloadFolder_input=%downloadFolder_input:(=%"
    set "downloadFolder_input=%downloadFolder_input:)=%"
    set "downloadFolder_input=%downloadFolder_input:<=%"
    set "downloadFolder_input=%downloadFolder_input:>=%"
    set "downloadFolder_input=%downloadFolder_input:&=%"
    set "downloadFolder_input=%downloadFolder_input:|=%"
    set "downloadFolder_input=%downloadFolder_input:^=%"
    set "downloadFolder_input=%downloadFolder_input:"=%"
    set "downloadFolder_input=%downloadFolder_input:?=%"
    set "downloadFolder_input=%downloadFolder_input::=%"
    set "downloadFolder_input=%downloadFolder_input:/=%"
    set "downloadFolder_input=%downloadFolder_input:\=%"
    set "downloadFolder_input=%downloadFolder_input:!=%"
    set "downloadFolder_input=%downloadFolder_input:?=%"
    set "downloadFolder_input=%downloadFolder_input:.=%"
    set "downloadFolder_input=%downloadFolder_input:´=-%"
    set "downloadFolder_input=%downloadFolder_input:é=e%"
    set "downloadFolder_input=%downloadFolder_input:è=e%"
          set "downloadFolder=%downloadFolder_input: =_%"

    IF "%downloadFolder%"=="d" set "downloadFolder=Download"
    IF "%downloadFolder%"=="a" set "downloadFolder=Animals_-_Feral"
    IF "%downloadFolder%"=="dr" set "downloadFolder=Dragon"
    IF "%downloadFolder%"=="f" set "downloadFolder=Furry"
    IF "%downloadFolder%"=="fur" set "downloadFolder=Furry"
    IF "%downloadFolder%"=="fc" set "downloadFolder=Furry_Cub"
    IF "%downloadFolder%"=="c" set "downloadFolder=Furry_Cub"
    IF "%downloadFolder%"=="cub" set "downloadFolder=Furry_Cub"
    IF "%downloadFolder%"=="h" set "downloadFolder=Human"
    IF "%downloadFolder%"=="hc" set "downloadFolder=Human_Children"
    IF "%downloadFolder%"=="k" set "downloadFolder=Kids_movies"
    IF "%downloadFolder%"=="kid" set "downloadFolder=Kids_movies"
    IF "%downloadFolder%"=="p" set "downloadFolder=Pokemon"
    IF "%downloadFolder%"=="di" set "downloadFolder=Digimon"
    IF "%downloadFolder%"=="s" set "downloadFolder=Spezial"
    IF "%downloadFolder%"=="z" set "downloadFolder=Zootopia"
    IF "%downloadFolder%"=="an" set "downloadFolder=Anime"
    IF "%downloadFolder%"=="de" set "downloadFolder=Deutsch"
    IF "%downloadFolder%"=="mlp" set "downloadFolder=MyLittlePony"
    IF "%downloadFolder%"=="pic" set "downloadFolder=Pictures_only"
    IF "%downloadFolder%"=="tk" set "downloadFolder=TwoKinds"
    IF "%downloadFolder%"=="o" set "downloadFolder=Other"
    IF "%downloadFolder%"=="f" set "downloadFolder=Favouriten"
    IF "%downloadFolder%"=="tlk" set "downloadFolder=The_Lion_King"
    IF "%downloadFolder%"=="sfw" set "SFW"
    IF "%downloadFolder%"=="i" START https://imhentai.xxx/ && goto redo
    IF "%downloadFolder%"=="e" exit
    ::if "%downloadFolder%"=="restart" goto restart

    ::aktiviere äöü
