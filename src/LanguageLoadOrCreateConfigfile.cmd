REM If config folder does not exist, create it / Wenn Ordner config nicht existiert, erstelle ihn
    IF NOT EXIST "config" MD "config" & Pause
REM If language file exists... if not... / Wenn Sprachdatei existiert ... wenn nicht ...
    IF EXIST "config\Countrycode.txt" (
REM Read the first line of ... and store the content in the variable ... / Lese die erste Zeile von ... aus und speichere den Inhalt in die Variable ...
      FOR /f "usebackq delims=" %%f IN ("config\Countrycode.txt") DO set "countrycode=%%f"
    ) ELSE (
REM Starts the language selection / Startet die Sprachauswahl
      :ReloadOutputMenueCountrycode
      SET "outputMenue=OutputMenueCountrycode"
      CALL "src\ConsoleOutputMenus.cmd"
        SET /p "countrycode=------> Countrycode: "
REM DEBUG
      IF "%DEBUG%"=="DebugON" ( ECHO DEBUG: countrycode= "!countrycode!" & CHOICE /N /C 123 /T 2 /D 1 >NUL )
REM Check whether input is correct
REM Prüfung ob Eingabe korrekt
        IF "!countrycode!"=="de" goto BackToMainCode
        IF "!countrycode!"=="en" goto BackToMainCode
        goto ReloadOutputMenueCountrycode
        :BackToMainCode
REM Store variable in file / Speichert Variable in Datei
      ECHO !countrycode!>"config\Countrycode.txt"
      )
::äöüß
