:Archiv
::Warte /T x Sek

    choice /N /C 123 /T 1 /D 1 >NUL
    cls
    color 0b
    echo.
::Zip Archiv erstellen
    echo Erstelle Sicherungs-Archiv der Bilder!
    echo.
    echo.
::Parameter mit 20 CPU Treads | mit Komprimierungsstufe 9 | losche Daten nach Archivivierung  7zr.exe" a -mmt20 -mx9 -sdel -y
    "bin\ThirdPartySoftware\7zr.exe" a -mx9 -sdel -y "%dl_lists%\dl_list.zip" "%dl_lists%\*.txt"
::Parameter mit 20 CPU Treads | mit Komprimierungsstufe 9    7zr.exe" a -mmt20 -mx9 -y
    "bin\ThirdPartySoftware\7zr.exe" a -mx9 -y -x!*.txt -x!*.cmd "%savePathBackupFile%" "%savePath_comic_folder%"



::Warte /T x Sek
    choice /N /C 123 /T 1 /D 1 >NUL
    color 0a
    cls
    echo.
    echo Archivierung beendet.
    echo.
    echo Bereite Anwendung fur neuen Download vor...
    echo.
::Warte /T x Sek
    choice /N /C 123 /T 2 /D 1 >NUL
::aktiviere ?? 
