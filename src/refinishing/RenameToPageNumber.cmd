REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Pr�fe ob Programm �ber Start.cmd gestartet wurde, wenn nicht starte es automatisch �ber Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: refinishing\RenameToPageNumber.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################


REM Warte /T x Sek
CHOICE /N /C 123 /T 1 /D 1 >NUL
IF "%DEBUG%"=="DebugON" (
    ECHO.
    ECHO Starte Nummerrierung der Bilder
)


REM Bilder entsprechend der Anzahl mit vorstehenden Nullen durchnummerrieren.
IF %pages_last% GEQ 1000 (
    for /l %%G IN (100,1,999) do (
        IF EXIST "%savePath_comic_folder%\%%G.*" RENAME "%savePath_comic_folder%\%%G.*" "0%%G.*"
    )

    for /l %%G IN (10,1,99) do (
        IF EXIST "%savePath_comic_folder%\%%G.*" RENAME "%savePath_comic_folder%\%%G.*" "00%%G.*"
        IF EXIST "%savePath_comic_folder%\0%%G.*" RENAME "%savePath_comic_folder%\%%G.*" "00%%G.*"
    )

    for /l %%G IN (0,1,9) do (
        IF EXIST "%savePath_comic_folder%\%%G.*" RENAME "%savePath_comic_folder%\%%G.*" "000%%G.*"
        IF EXIST "%savePath_comic_folder%\0%%G.*" RENAME "%savePath_comic_folder%\%%G.*" "000%%G.*"
        IF EXIST "%savePath_comic_folder%\00%%G.*" RENAME "%savePath_comic_folder%\%%G.*" "000%%G.*"
    )
    GOTO continue
)

IF %pages_last% GEQ 100 (
    for /l %%G IN (10,1,99) do (
        IF EXIST "%savePath_comic_folder%\%%G.*" RENAME "%savePath_comic_folder%\%%G.*" "0%%G.*"
    )

    for /l %%G IN (0,1,9) do (
        IF EXIST "%savePath_comic_folder%\%%G.*" RENAME "%savePath_comic_folder%\%%G.*" "00%%G.*"
        IF EXIST "%savePath_comic_folder%\0%%G.*" RENAME "%savePath_comic_folder%\%%G.*" "00%%G.*"
    )
    GOTO continue
)

IF %pages_last% GEQ 10 (
    for /l %%G IN (0,1,9) do (
        IF EXIST "%savePath_comic_folder%\%%G.*" RENAME "%savePath_comic_folder%\%%G.*" "0%%G.*"
    )
    GOTO continue
    )

IF %pages_last% GEQ 1 (
    for /l %%G IN (0,1,%pages_last%) do (
        IF EXIST "%savePath_comic_folder%\%%G.*" RENAME "%savePath_comic_folder%\%%G.*" "%%G.*"
    )
    GOTO continue
)

:continue
EXIT /B
    ::aktiviere �� 
