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

    IF "%downloadFolder%"=="d"   SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var1%"
    IF "%downloadFolder%"=="a"   SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var2%"
    IF "%downloadFolder%"=="dr"  SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var3%"
    IF "%downloadFolder%"=="f"   SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var4%"
    IF "%downloadFolder%"=="fur" SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var4%"
    IF "%downloadFolder%"=="fc"  SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var5%"
    IF "%downloadFolder%"=="c"   SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var5%"
    IF "%downloadFolder%"=="cub" SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var5%"
    IF "%downloadFolder%"=="h"   SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var6%"
    IF "%downloadFolder%"=="hc"  SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var7%"
    IF "%downloadFolder%"=="k"   SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var8%"
    IF "%downloadFolder%"=="kid" SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var8%"
    IF "%downloadFolder%"=="p"   SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var9%"
    IF "%downloadFolder%"=="di"  SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var10%"
    IF "%downloadFolder%"=="s"   SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var11%"
    IF "%downloadFolder%"=="z"   SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var12%"
    IF "%downloadFolder%"=="an"  SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var13%"
    IF "%downloadFolder%"=="de"  SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var14%"
    IF "%downloadFolder%"=="mlp" SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var15%"
    IF "%downloadFolder%"=="pic" SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var16%"
    IF "%downloadFolder%"=="tk"  SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var17%"
    IF "%downloadFolder%"=="tlk" SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var18%"
    IF "%downloadFolder%"=="o"   SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var19%"
    IF "%downloadFolder%"=="sfw" SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var20%"
    IF "%downloadFolder%"=="f"   SET "downloadFolder=%LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var21%"
    IF "%downloadFolder%"=="i" START https://imhentai.xxx/ && GOTO redo
    IF "%downloadFolder%"=="e" EXIT

EXIT /B
    REM aktiviere äöü
