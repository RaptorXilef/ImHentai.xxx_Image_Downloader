::Warte /T x Sek
choice /N /C 123 /T 1 /D 1 >NUL
color 0b
cls
echo.
echo Starte Nummerrierung der Bilder



::Bilder entsprechend der Anzahl mit vorstehenden Nullen durchnummerrieren.
IF %pages_last% GEQ 1000 (
    for /l %%G in (100,1,999) do (
        IF exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "0%%G.*"
        )

    for /l %%G in (10,1,99) do (
        IF exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "00%%G.*"
        IF exist "%save-to_comic_folder%\0%%G.*" rename "%save-to_comic_folder%\%%G.*" "00%%G.*"
        )

    for /l %%G in (0,1,9) do (
        IF exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "000%%G.*"
        IF exist "%save-to_comic_folder%\0%%G.*" rename "%save-to_comic_folder%\%%G.*" "000%%G.*"
        IF exist "%save-to_comic_folder%\00%%G.*" rename "%save-to_comic_folder%\%%G.*" "000%%G.*"
        )
    goto continue
    )

IF %pages_last% GEQ 100 (
    for /l %%G in (10,1,99) do (
        IF exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "0%%G.*"
        )

    for /l %%G in (0,1,9) do (
        IF exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "00%%G.*"
        IF exist "%save-to_comic_folder%\0%%G.*" rename "%save-to_comic_folder%\%%G.*" "00%%G.*"
        )
    goto continue
    )

IF %pages_last% GEQ 10 (
    for /l %%G in (0,1,9) do (
        IF exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "0%%G.*"
        )
    goto continue
    )

IF %pages_last% GEQ 1 (
    for /l %%G in (0,1,%pages_last%) do (
        IF exist "%save-to_comic_folder%\%%G.*" rename "%save-to_comic_folder%\%%G.*" "%%G.*"
        )
    goto continue
    )

:continue
    ::aktiviere �� 
