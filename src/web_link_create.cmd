::Warte /T x Sek
choice /N /C 123 /T 1 /D 1 >NUL
cls
color 0f
echo.
echo Erstelle Verknupfung zur Webseite des Comics
echo.
echo.

echo Set objShell = CreateObject("WScript.Shell")>"%savePath_comic_folder%\MakeShortCut.vbs"

echo sShortcut = "%savePath_comic_folder%\Webseite.lnk">>"%savePath_comic_folder%\MakeShortCut.vbs"
echo set objLink = objShell.CreateShortcut(sShortcut)>>"%savePath_comic_folder%\MakeShortCut.vbs"
echo 	objLink.TargetPath = "%mainUrl%">>"%savePath_comic_folder%\MakeShortCut.vbs"
echo objLink.Save>>"%savePath_comic_folder%\MakeShortCut.vbs"



::... ausfuhren ...
cscript //nologo "%savePath_comic_folder%\MakeShortCut.vbs"



::... und wieder loschen.
del "%savePath_comic_folder%\MakeShortCut.vbs"
    ::aktiviere ?? 
