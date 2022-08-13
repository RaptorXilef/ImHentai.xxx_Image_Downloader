REM If config folder does not exist, create it / Wenn Ordner config nicht existiert, erstelle ihn
    IF NOT EXIST "config" MD "config" & Pause
REM If Save path file exists... if not... / Wenn Speicherpfad Datei existiert ... wenn nicht ...
    IF EXIST "config\SavePath.txt" (
      FOR /f "usebackq delims=" %%f IN ("config\SavePath.txt") DO SET "savePath=%%f"
    ) ELSE (
REM Starts the language selection / Startet die Sprachauswahl
      :ReloadOutputMenuSavePath
      SET "outputMenu=OutputMenuSavePath"
      CALL "src\ConsoleOutputMenus.cmd"
        SET "inputSavePath=Comics"
        SET /p "inputSavePath=------> Speicherort: "
          SET savePath=!inputSavePath!
REM DEBUG
      IF "%DEBUG%"=="DebugON" ( ECHO DEBUG: countrycode= "!savePath!" & CHOICE /N /C 123 /T 2 /D 1 >NUL )
REM Store variable in file / Speichert Variable in Datei
      ECHO !savePath!>"config\SavePath.txt"
    )
REM дцья
