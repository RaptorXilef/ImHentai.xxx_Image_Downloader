    :: Wenn save-to existiert, lese Speicherpfad aus Datei (else) wenn nicht, erstelle Variable save-to aus ask_save-to
    if exist "config\save-to.txt" FOR /f "usebackq delims=" %%f IN ("config\save-to.txt") DO set "save-to=%%f"
    if not exist "config\save-to.txt" call "resources\ask_save-to.cmd"
    :: Speicher Variabe save-to in Datei save-to
    if not exist "config\save-to.txt" echo %save-to%>"config\save-to.txt"
::הצü Aktivieren