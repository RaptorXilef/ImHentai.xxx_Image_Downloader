REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Pr�fe ob Programm �ber Start.cmd gestartet wurde, wenn nicht starte es automatisch �ber Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" ECHO. & ECHO DEBUG-Info: refinishing\WebLinkCreate.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################


REM Warte /T x Sek
CHOICE /N /C 123 /T 1 /D 1 >NUL
IF "%DEBUG%"=="DebugON" (
    ECHO.
    ECHO %lang_WebLinkCreate_DEBUG_1%
    ECHO.
    ECHO.
    CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
)


ECHO Set objShell = CreateObject("WScript.Shell")>"%savePath_comic_folder%\MakeShortCut.vbs"

ECHO sShortcut = "%savePath_comic_folder%\Weblink-Comic-!comicId!.lnk">>"%savePath_comic_folder%\MakeShortCut.vbs"
ECHO set objLink = objShell.CreateShortcut(sShortcut)>>"%savePath_comic_folder%\MakeShortCut.vbs"
ECHO 	objLink.TargetPath = "%mainUrl%">>"%savePath_comic_folder%\MakeShortCut.vbs"
ECHO objLink.Save>>"%savePath_comic_folder%\MakeShortCut.vbs"



REM ... ausfuhren ...
cscript //nologo "%savePath_comic_folder%\MakeShortCut.vbs"



REM ... und wieder loschen.
DEL "%savePath_comic_folder%\MakeShortCut.vbs"

EXIT /B
    ::aktiviere �� 
