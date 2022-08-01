:dl_folder_input
    color 0a
    cls
    echo    Unterordner wählen / Thema wählen
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo   ¦
    echo   ¦  Downloadthema
    echo   ¦  =============
    echo   ¦    
    echo   ¦    
    echo   ¦    Eingabe ^| Unter-Ordnername
    echo   ¦    --------^|----------------------
    echo   ¦       d    ^| Downloads_Allgemein
    echo   ¦       a    ^| Animals_-_Feral
    echo   ¦       dr   ^| Dragon
    echo   ¦       f    ^| Furry
    echo   ¦       c    ^| Furry_Cub
    echo   ¦       h    ^| Human /Menschen
    echo   ¦       hc   ^| Human Children
    echo   ¦       k    ^| Kids_movies
    echo   ¦       p    ^| Pokemon
    echo   ¦       di   ^| Digimon
    echo   ¦       s    ^| Spezial
    echo   ¦       z    ^| Zootopia
    echo   ¦       an   ^| Anime
    echo   ¦       de   ^| Deutsch
    echo   ¦      mlp   ^| MyLittlePony
    echo   ¦      pic   ^| Pictures_only
    echo   ¦       tk   ^| TwoKinds
    echo   ¦      tlk   ^| The_Lion_King
    echo   ¦       o    ^| Other
    echo   ¦
    echo   ¦      sfw   ^| SFW
    echo   ¦
    echo   ¦       f    ^| Favouriten
    echo   ¦
    echo   ¦            ^| Manuelle Eingabe eines eigenen Ordnernamen (Der Inhalt des Ordners wird nur bei dessen Auswahl geprüft) (In dieser Version nicht empfohlen)
    echo   ¦
    echo   ¦
    echo   ¦       i    ^| ImHentai.xxx öffnen
    echo   ¦       e    ^| Exit / Anwendung beenden
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo.
    echo   #  In welchen Ordner soll der Comic gedownloadet werden?
    echo         - Beispiel: tk
    echo         # Eingabe mit Enter bestätigen: 
    echo.
    set "dl_folder_input=da"
    set /p "dl_folder_input=------> Ordner: "
    ::if "%dl_folder_input%"=="" set "dl_folder_input=da"
    
:AntiSonderzeichenName
    ::Entferne Sonderzeichen aus dem eingegebenen String
    set "dl_folder_input=%dl_folder_input:(=%"
    set "dl_folder_input=%dl_folder_input:)=%"
    set "dl_folder_input=%dl_folder_input:<=%"
    set "dl_folder_input=%dl_folder_input:>=%"
    set "dl_folder_input=%dl_folder_input:&=%"
    set "dl_folder_input=%dl_folder_input:|=%"
    set "dl_folder_input=%dl_folder_input:^=%"
    set "dl_folder_input=%dl_folder_input:"=%"
    set "dl_folder_input=%dl_folder_input:?=%"
    set "dl_folder_input=%dl_folder_input::=%"
    set "dl_folder_input=%dl_folder_input:/=%"
    set "dl_folder_input=%dl_folder_input:\=%"
    set "dl_folder_input=%dl_folder_input:!=%"
    set "dl_folder_input=%dl_folder_input:?=%"
    set "dl_folder_input=%dl_folder_input:.=%"
    set "dl_folder_input=%dl_folder_input:´=-%"
    set "dl_folder_input=%dl_folder_input:é=e%"
    set "dl_folder_input=%dl_folder_input:è=e%"
          set "dl_folder=%dl_folder_input: =_%"

    if "%dl_folder%"=="d" set "dl_folder=Download"
    if "%dl_folder%"=="a" set "dl_folder=Animals_-_Feral"
    if "%dl_folder%"=="dr" set "dl_folder=Dragon"
    if "%dl_folder%"=="f" set "dl_folder=Furry"
    if "%dl_folder%"=="fur" set "dl_folder=Furry"
    if "%dl_folder%"=="fc" set "dl_folder=Furry_Cub"
    if "%dl_folder%"=="c" set "dl_folder=Furry_Cub"
    if "%dl_folder%"=="cub" set "dl_folder=Furry_Cub"
    if "%dl_folder%"=="h" set "dl_folder=Human"
    if "%dl_folder%"=="hc" set "dl_folder=Human_Children"
    if "%dl_folder%"=="k" set "dl_folder=Kids_movies"
    if "%dl_folder%"=="kid" set "dl_folder=Kids_movies"
    if "%dl_folder%"=="p" set "dl_folder=Pokemon"
    if "%dl_folder%"=="di" set "dl_folder=Digimon"
    if "%dl_folder%"=="s" set "dl_folder=Spezial"
    if "%dl_folder%"=="z" set "dl_folder=Zootopia"
    if "%dl_folder%"=="an" set "dl_folder=Anime"
    if "%dl_folder%"=="de" set "dl_folder=Deutsch"
    if "%dl_folder%"=="mlp" set "dl_folder=MyLittlePony"
    if "%dl_folder%"=="pic" set "dl_folder=Pictures_only"
    if "%dl_folder%"=="tk" set "dl_folder=TwoKinds"
    if "%dl_folder%"=="o" set "dl_folder=Other"
    if "%dl_folder%"=="f" set "dl_folder=Favouriten"
    if "%dl_folder%"=="tlk" set "dl_folder=The_Lion_King"
    if "%dl_folder%"=="sfw" set "SFW"
    if "%dl_folder%"=="i" START https://imhentai.xxx/ && goto redo
    if "%dl_folder%"=="e" exit
    ::if "%dl_folder%"=="restart" goto restart

    ::aktiviere äöü