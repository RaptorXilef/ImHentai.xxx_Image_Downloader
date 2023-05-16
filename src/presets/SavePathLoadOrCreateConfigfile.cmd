REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: presets\SavePathLoadOrCreateConfigfile.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

REM If config folder does not exist, create it / Wenn Ordner config nicht existiert, erstelle ihn
    IF NOT EXIST "config" MD "config" & Pause
REM If Save path file exists... if not... / Wenn Speicherpfad Datei existiert ... wenn nicht ...
    IF EXIST "config\SavePath.txt" (
      FOR /f "usebackq delims=" %%f IN ("config\SavePath.txt") DO SET "savePath=%%f"
    ) ELSE (
REM Starts the language selection / Startet die Sprachauswahl
:ReloadOutputMenuSavePath
      SET "outputMenu=OutputMenuSavePath"
      CALL "src\ConsoleOutputMenus.cmd" 1 & IF "!errorRestart!"=="errorRestartYES" GOTO errorRestartYES
        SET "inputSavePath=ImHentayXxxComicdownloads"
        SET /p "inputSavePath=------> %lang_SavePathLoadOrCreateConfigfile_inputSavePath%: "
          SET savePath=!inputSavePath!
REM DEBUG
      IF "%DEBUG%"=="DebugON" ( ECHO DEBUG: countrycode= "!savePath!" & CHOICE /N /C 123 /T 2 /D 1 >NUL )
REM Store variable in file / Speichert Variable in Datei
      ECHO !savePath!>"config\SavePath.txt"
    )
REM äöüß
