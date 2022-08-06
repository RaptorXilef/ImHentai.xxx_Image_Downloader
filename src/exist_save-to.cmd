    :: Wenn save-to existiert, lese Speicherpfad aus Datei (else) wenn nicht, erstelle Variable save-to aus ask_save-to
    IF EXIST "config\save-to.txt" FOR /f "usebackq delims=" %%f IN ("config\save-to.txt") DO SET "save-to=%%f"
    IF NOT EXIST "config\save-to.txt" CALL "resources\ask_save-to.cmd"
    :: Speicher Variabe save-to in Datei save-to
    IF NOT EXIST "config\save-to.txt" ECHO %save-to%>"config\save-to.txt"
REM дцья
