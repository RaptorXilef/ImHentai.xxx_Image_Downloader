::Warte /T x Sek
choice /N /C 123 /T 1 /D 1 >NUL
color 0b
cls
echo.
echo Starte Nummerrierung der Bilder



::Bilder entsprechend der Anzahl mit vorstehenden Nullen durchnummerrieren.
if %pages_last% GEQ 1000 (
    for /l %%G in (100,1,999) do (
        if exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "0%%G.*"
        )

    for /l %%G in (10,1,99) do (
        if exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "00%%G.*"
        if exist "%save-to_comic_folder%\0%%G.*" rename "%save-to_comic_folder%\%%G.*" "00%%G.*"
        )

    for /l %%G in (0,1,9) do (
        if exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "000%%G.*"
        if exist "%save-to_comic_folder%\0%%G.*" rename "%save-to_comic_folder%\%%G.*" "000%%G.*"
        if exist "%save-to_comic_folder%\00%%G.*" rename "%save-to_comic_folder%\%%G.*" "000%%G.*"
        )
    goto weiter
    )

if %pages_last% GEQ 100 (
    for /l %%G in (10,1,99) do (
        if exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "0%%G.*"
        )

    for /l %%G in (0,1,9) do (
        if exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "00%%G.*"
        if exist "%save-to_comic_folder%\0%%G.*" rename "%save-to_comic_folder%\%%G.*" "00%%G.*"
        )
    goto weiter
    )

if %pages_last% GEQ 10 (
    for /l %%G in (0,1,9) do (
        if exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "0%%G.*"
        )
    goto weiter
    )

if %pages_last% GEQ 1 (
    for /l %%G in (0,1,%pages_last%) do (
        if exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "%%G.*"
        )
    goto weiter
    )
    
:weiter
    ::aktiviere �� 