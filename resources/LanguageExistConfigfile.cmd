    :: Wenn lang existiert, lese Sprache aus Datei (else) wenn nicht, erstelle Variable lang aus asksaveto
    if not exist "config" MD "config"
    if exist "config\lang.txt" FOR /f "usebackq delims=" %%f IN ("config\lang.txt") DO set "lang=%%f"
    if not exist "config\lang.txt" call "resources\ask_lang.cmd"
    :: Speicher Variabe lang in Datei lang
    if not exist "config\lang.txt" echo %lang%>"config\lang.txt"
::הצü Aktivieren