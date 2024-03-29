REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Pr�fe ob Programm �ber Start.cmd gestartet wurde, wenn nicht starte es automatisch �ber Start.cmd.
IF "!~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=!1")
IF !STARTED_CORRECTLY!==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF !STARTED_CORRECTLY!==1 (IF "!DEBUG!"=="DebugON" ECHO. & ECHO DEBUG-Info: refinishing\7zrStart.cmd load successful! & ECHO.)
IF "!DEBUG!"=="DebugON" CHOICE /N /C 123 /T !DEBUGTIME! /D 1 >NUL
REM ############################################################################


:Archiv
REM Warte /T x Sek
CHOICE /N /C 123 /T 1 /D 1 >NUL
IF "!DEBUG!"=="DebugON" (
    ECHO.
    ECHO %lang_7zrStart_DEBUG_1%
    ECHO %lang_7zrStart_DEBUG_2% !savePathBackupFile!
    ECHO %lang_7zrStart_DEBUG_3% !savePath_comic_folder!
    ECHO.
    ECHO.
    CHOICE /N /C 123 /T !DEBUGTIME! /D 1 >NUL
)

CLS
REM Parameter mit 20 CPU Treads | mit Komprimierungsstufe 9 | losche Daten nach Archivivierung  7zr.exe" a -mmt20 -mx9 -sdel -y
    "bin\ThirdPartySoftware\7zr.exe" a -mx9 -sdel -y "!dl_lists!\dl_list.zip" "!dl_lists!\*.txt"
IF "!DEBUG!"=="DebugON" ( CHOICE /N /C 123 /T !DEBUGTIME! /D 1 >NUL )

CLS
REM Parameter mit 20 CPU Treads | mit Komprimierungsstufe 9    7zr.exe" a -mmt20 -mx9 -y
    IF NOT EXIST "!savePathBackupFile!" ( mkdir "!savePathBackup!" )
    "bin\ThirdPartySoftware\7zr.exe" a -mx9 "!savePathBackupFile!" "!savePath_comic_folder!\*.jpg" "!savePath_comic_folder!\*.png" "!savePath_comic_folder!\*.gif" "!savePath_comic_folder!\*.lnk"
  REM VORLAGE: "C:\Program Files\7-Zip\7z.exe" a -tzip -mx9 "Pfad\Backup\Numer.zip" "!savePath_comic_folder!\*.jpg" "!savePath_comic_folder!\*.png" "!savePath_comic_folder!\*.gif"
  REM ALTERNATIVE MIT ERROR: "bin\ThirdPartySoftware\7zr.exe" a -mx9 -y -x!*.txt;-x!*.cmd "!savePathBackupFile!" "!savePath_comic_folder!"

IF "!DEBUG!"=="DebugON" ( CHOICE /N /C 123 /T !DEBUGTIME! /D 1 >NUL )
    REM Warte /T x Sek
    CHOICE /N /C 123 /T 1 /D 1 >NUL
    IF "!DEBUG!"=="DebugON" (
      color 0A
      CLS
      ECHO.
      ECHO %lang_7zrStart_DEBUG_4%
      ECHO.
      ECHO %lang_7zrStart_DEBUG_5%
      ECHO.
      CHOICE /N /C 123 /T !DEBUGTIME! /D 1 >NUL
    )

EXIT /B
::aktiviere �� 
