::Warte /T x Sek
choice /N /C 123 /T 1 /D 1 >NUL
cls
color 0f
echo.
echo Erstelle Verknupfung zur Webseite des Comics
echo.
echo.

echo Set objShell = CreateObject("WScript.Shell")>"%save-to_comic_folder%\MakeShortCut.vbs"

echo sShortcut = "%save-to_comic_folder%\Webseite.lnk">>"%save-to_comic_folder%\MakeShortCut.vbs"
echo set objLink = objShell.CreateShortcut(sShortcut)>>"%save-to_comic_folder%\MakeShortCut.vbs"
echo 	objLink.TargetPath = "%main-url%">>"%save-to_comic_folder%\MakeShortCut.vbs"
echo objLink.Save>>"%save-to_comic_folder%\MakeShortCut.vbs"



::... ausfuhren ...
cscript //nologo "%save-to_comic_folder%\MakeShortCut.vbs"



::... und wieder loschen.
del "%save-to_comic_folder%\MakeShortCut.vbs"
    ::aktiviere �� 