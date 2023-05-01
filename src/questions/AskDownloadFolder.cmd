REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" ECHO. & ECHO DEBUG-Info: questions\AskDownloadFolder.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

:redo
    SET "downloadFolder_input=d"
    SET /p "downloadFolder_input=------> Ordner: "

:AntiSonderzeichenName
    REM Entferne Sonderzeichen aus dem eingegebenen String
    SET "downloadFolder_input=%downloadFolder_input:(=%"
    SET "downloadFolder_input=%downloadFolder_input:)=%"
    SET "downloadFolder_input=%downloadFolder_input:<=%"
    SET "downloadFolder_input=%downloadFolder_input:>=%"
    SET "downloadFolder_input=%downloadFolder_input:&=%"
    SET "downloadFolder_input=%downloadFolder_input:|=%"
    SET "downloadFolder_input=%downloadFolder_input:^=%"
    SET "downloadFolder_input=%downloadFolder_input:"=%"
    SET "downloadFolder_input=%downloadFolder_input:?=%"
    SET "downloadFolder_input=%downloadFolder_input::=%"
    SET "downloadFolder_input=%downloadFolder_input:/=%"
    SET "downloadFolder_input=%downloadFolder_input:\=%"
    SET "downloadFolder_input=%downloadFolder_input:!=%"
    SET "downloadFolder_input=%downloadFolder_input:?=%"
    SET "downloadFolder_input=%downloadFolder_input:.=%"
    SET "downloadFolder_input=%downloadFolder_input:´=-%"
    SET "downloadFolder_input=%downloadFolder_input:é=e%"
    SET "downloadFolder_input=%downloadFolder_input:è=e%"
          SET "downloadFolder=%downloadFolder_input: =_%"

    IF "%downloadFolder%"=="d"   SET "downloadFolder=Download"
    IF "%downloadFolder%"=="a"   SET "downloadFolder=Animals_-_Feral"
    IF "%downloadFolder%"=="dr"  SET "downloadFolder=Dragon"
    IF "%downloadFolder%"=="f"   SET "downloadFolder=Furry"
    IF "%downloadFolder%"=="fur" SET "downloadFolder=Furry"
    IF "%downloadFolder%"=="fc"  SET "downloadFolder=Furry_Cub"
    IF "%downloadFolder%"=="c"   SET "downloadFolder=Furry_Cub"
    IF "%downloadFolder%"=="cub" SET "downloadFolder=Furry_Cub"
    IF "%downloadFolder%"=="h"   SET "downloadFolder=Human"
    IF "%downloadFolder%"=="hc"  SET "downloadFolder=Human_Children"
    IF "%downloadFolder%"=="k"   SET "downloadFolder=Kids_movies"
    IF "%downloadFolder%"=="kid" SET "downloadFolder=Kids_movies"
    IF "%downloadFolder%"=="p"   SET "downloadFolder=Pokemon"
    IF "%downloadFolder%"=="di"  SET "downloadFolder=Digimon"
    IF "%downloadFolder%"=="s"   SET "downloadFolder=Spezial"
    IF "%downloadFolder%"=="z"   SET "downloadFolder=Zootopia"
    IF "%downloadFolder%"=="an"  SET "downloadFolder=Anime"
    IF "%downloadFolder%"=="de"  SET "downloadFolder=Deutsch"
    IF "%downloadFolder%"=="mlp" SET "downloadFolder=MyLittlePony"
    IF "%downloadFolder%"=="pic" SET "downloadFolder=Pictures_only"
    IF "%downloadFolder%"=="tk"  SET "downloadFolder=TwoKinds"
    IF "%downloadFolder%"=="o"   SET "downloadFolder=Other"
    IF "%downloadFolder%"=="f"   SET "downloadFolder=Favouriten"
    IF "%downloadFolder%"=="tlk" SET "downloadFolder=The_Lion_King"
    IF "%downloadFolder%"=="sfw" SET "SFW"
    IF "%downloadFolder%"=="i" START https://imhentai.xxx/ && GOTO redo
    IF "%downloadFolder%"=="e" EXIT
    ::if "%downloadFolder%"=="restart" GOTO restart

EXIT /B
    REM aktiviere äöü
