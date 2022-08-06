    REM If config folder does not exist, create it / Wenn Ordner config nicht existiert, erstelle ihn
    IF NOT EXIST "config" MD "config"
    REM REM If language file exists... if not... / Wenn Sprachdatei existiert ... wenn nicht ...
    IF EXIST "config\countrycode.txt" (
      REM Read the first line of ... and store the content in the variable ... / Lese die erste Zeile von ... aus und speichere den Inhalt in die Variable ...
      FOR /f "usebackq delims=" %%f IN ("config\countrycode.txt") DO set "countrycode=%%f"
      ) else (
      REM Starts the language selection / Startet die Sprachauswahl
      CALL "resources\LanguageSelect.cmd"
      REM Store variable in file long / Speichert Variable in Datei lang
      ECHO %countrycode%>"config\countrycode.txt"
      )
::дцья
