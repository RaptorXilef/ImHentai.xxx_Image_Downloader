::Erstelle Comicordner f�r den Download
    cls
    echo.
    echo Erstelle Downloadordner
    md "%save-to_comic_folder%"
:: Starte Download mit WGet �ber 32 oder 64 bit
    cls
    color 0e
    if exist "third_party_software\wget%xxbit%.exe" "third_party_software\wget%xxbit%.exe" -i "%dl_list_all%" -P "%save-to_comic_folder%"
    if not exist "third_party_software\wget%xxbit%.exe" "third_party_software\wget.exe" -i "%dl_list_all%" -P "%save-to_comic_folder%"
    
    ::color 0F
    ::cls
    ::echo.
    ::echo L�sche tempo�re wget Datei
    ::del ".wget-hsts"
    ::aktiviere ���
    
    
    