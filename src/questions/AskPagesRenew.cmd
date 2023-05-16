REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Pr�fe ob Programm �ber Start.cmd gestartet wurde, wenn nicht starte es automatisch �ber Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" ECHO. & ECHO DEBUG-Info: questions\AskPagesRenew.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################
:pageCountInput
SET /A pages_tobig=%pageCountInput%

REM Hier war urspr�nglich die Textausgabe "OutputMenuPageCountInputRenew"

    SET /P "pageCountInput=------> Letzte Seite: "


    SET /A "pages=%pageCountInput%"

    IF %pages_tobig% GTR %pageCountInput% SET /A "pageCountInput=%pages_tobig%"


    IF %pages% LEQ %pageCountInputRenew% COLOR 0C && ECHO %pages% %lang_AskPagesRenew_1% %pageCountInputRenew% %lang_AskPagesRenew_2% && ECHO %lang_AskPagesRenew_3% && pause && CLS && SET "outputMenu=OutputMenuPageCountInputRenew" && CALL "src\ConsoleOutputMenus.cmd" 1 && COLOR 08 && GOTO pageCountInput

    SET "savePath=%savePathRenew%"
    SET "downloadFolder=%downloadFolderRenew%"
    SET "comicId=%comicIdRenew%"
    SET "mainUrl=%mainUrlRenew%"


    :AntiSonderzeichenName
    ::Entferne Sonderzeichen aus dem eingegebenen String
    SET "comicNameInput=%comicNameRenew:<=%"
    SET "comicNameInput=%comicNameInput:>=%"
    SET "comicNameInput=%comicNameInput:&=%"
    SET "comicNameInput=%comicNameInput:|=%"
    SET "comicNameInput=%comicNameInput:^=%"
    SET "comicNameInput=%comicNameInput:"=%"
    SET "comicNameInput=%comicNameInput:?=%"
    SET "comicNameInput=%comicNameInput::=%"
    SET "comicNameInput=%comicNameInput:/=%"
    SET "comicNameInput=%comicNameInput:\=%"
    SET "comicNameInput=%comicNameInput:!=%"
    SET "comicNameInput=%comicNameInput:?=%"
    SET "comicNameInput=%comicNameInput:.=%"
    SET "comicNameInput=%comicNameInput:�=-%"
    SET "comicNameInput=%comicNameInput:�=e%"
    SET "comicName=%comicNameInput:�=e%"

    SET "comicName_=%comicName: =_%"


        IF NOT EXIST "%savePath%\%downloadFolder%\%comicName_%" SET /A "pages_start=1"

EXIT /B
    ::aktiviere ���
