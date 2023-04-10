REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (
  SET "STARTED_CORRECTLY=0"
) ELSE (
  SET "STARTED_CORRECTLY=%1"
)
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: presets\LanguageLoadOrCreateConfigfile.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T 3 /D 1 >NUL

REM If config folder does not exist, create it / Wenn Ordner config nicht existiert, erstelle ihn
    IF NOT EXIST "config" MD "config" && IF "%DEBUG%"=="DebugON" (ECHO. & ECHO. & ECHO Folder "\config" is create & CHOICE /N /C 123 /T 3 /D 1 >NUL)
REM If language file exists... if not... / Wenn Sprachdatei existiert ... wenn nicht ...
    IF EXIST "config\Countrycode.txt" (
REM Read the first line of ... and store the content in the variable ... / Lese die erste Zeile von ... aus und speichere den Inhalt in die Variable ...
      FOR /f "usebackq delims=" %%f IN ("config\Countrycode.txt") DO set "countrycode=%%f"
      SET "countrycode=!countrycode: =!"
    ) ELSE (
REM Starts the language selection / Startet die Sprachauswahl
      :ReloadOutputMenuCountrycode
      SET "outputMenu=OutputMenuCountrycode"
      CALL "src\ConsoleOutputMenus.cmd" 1
        SET /p "countrycode=------> Countrycode: "
REM DEBUG
      IF "%DEBUG%"=="DebugON" ( ECHO. & ECHO DEBUG: countrycode= "!countrycode!" & CHOICE /N /C 123 /T 3 /D 1 >NUL )
REM Check whether input is correct
REM Prüfung ob Eingabe korrekt
        IF "!countrycode!"=="de" goto BackToMainCode
        IF "!countrycode!"=="en" goto BackToMainCode
        goto ReloadOutputMenuCountrycode
        :BackToMainCode
REM Store variable in file / Speichert Variable in Datei
      SET "countrycode=!countrycode: =!"
      ECHO !countrycode!>"config\Countrycode.txt" && IF "%DEBUG%"=="DebugON" (ECHO Save countrycode to file "config\Countrycode.txt")
      )
EXIT /B
::äöüß
