REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (
  SET "STARTED_CORRECTLY=0"
) ELSE (
  SET "STARTED_CORRECTLY=%1"
)
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: preload\VariablesReset.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T 3 /D 1 >NUL

SET errorRestart=errorRestartNO

:: pages_start
SET /a "pages_start=1"

SET "downloadFolder="
SET "comicId="
SET "mainUrl="
SET "imageDownloadFolderURL="
SET "pages="
SET "comicName="
SET "comicNameInput="
SET "artistInput="
SET "languageInput="

SET "htmlFile="
SET "tempFile="

SET "chcpCodeNumber=chcp1252"
SET "countrycode=en"
:: ============================Main.cmd===========================================================
:: Beispiel Laden
SET "mainUrlInput=https://imhentai.xxx/gallery/598258/" & REM SET "comicNameInput=[thomas fischbach] Twokinds Reference Sheets"
EXIT /B
