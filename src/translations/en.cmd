REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (
  SET "STARTED_CORRECTLY=0"
) ELSE (
  SET "STARTED_CORRECTLY=%1"
)
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: translations\en.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T 3 /D 1 >NUL

:: ============================ de.cmd ===========================================================
::chcp 1252>nul

:: ===============================================================================================
::      Deutsche Ausgabe der Texte
:: ===============================================================================================
::Aktiviere Zeichen der ASCII Tabelle wie äöü ... (+Speichern im als ANSI Format)



:: ===============================================================================================
::     OutputMenueSavePath
:: ===============================================================================================
SET "outputMenuSavePath_Header=Choose save path"

SET "outputMenuSavePath_Headline1=Set save location"
SET "outputMenuSavePath_Headline2^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "outputMenuSavePath_body1=Please choose where to save your downloads."
SET "outputMenuSavePath_body2=Type/Paste the appropriate folder path."
SET "outputMenuSavePath_body3=e.g. %userprofile%\Downloads\Comics"
SET "outputMenuSavePath_body4=e.g. %userprofile%\Pictures\Comics"
SET "outputMenuSavePath_body5=e.g. %APPDATA%\_Hidden"
SET "outputMenuSavePath_body6=Please at the end of the path without '\'"
SET "outputMenuSavePath_body7=So not: %userprofile%\Downloads\Comics\ but %userprofile%\Downloads\Comics"
SET "outputMenuSavePath_body8=You can also copy the desired path from the address bar of the explorer and paste here with [ctrl] + [V]."
SET "outputMenuSavePath_body10=Confirm your entry with [Enter]"


:: ===============================================================================================
::     OutputMenueMainUrl
:: ===============================================================================================
SET "outputMenueMainUrl_header=website address / URL"

SET "outputMenuMainUrl_headline1=Previous entries"
SET "outputMenuMainUrl_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "outputMenuMainUrl_body1=Save to path: "
SET "outputMenuMainUrl_body2=Now enter the"
SET "outputMenuMainUrl_body3=URL"
SET "outputMenuMainUrl_body4=or"
SET "outputMenuMainUrl_body5=number"
SET "outputMenuMainUrl_body6=the website where the comirgfc is featured and confirm with [Enter]"
SET "outputMenuMainUrl_body7=You can copy the URL of the web page from the address bar/line of the browser and paste it here with [ctrl] ^+ [V]"
SET "outputMenuMainUrl_body8=Example"
SET "outputMenuMainUrl_footer=Confirm URL with [Enter]"


:: ===============================================================================================
::     UrlNumberFilter.cmd
:: ===============================================================================================
SET "outputUrlNumberFilter1=is not a valid URL or number"
SET "outputUrlNumberFilter2=Please try again! To continue"
SET "outputUrlNumberFilter3=The specified URL does not match the conditions"
SET "outputUrlNumberFilter4=Please try another URL"
SET "outputUrlNumberFilter5=The specified URL meets the conditions! Continue to proceed"


:: ===============================================================================================
::     ReadingDataFromURL.cmd
:: ===============================================================================================
SET "outputReadingDataFromURL1=Load variables from the website behind the specified URL"
SET "outputReadingDataFromURL2=Create a temporary folder for processing the variables"
SET "outputReadingDataFromURL3=The website was cached successfully. Now the necessary information is read out and stored in variables."
SET "outputReadingDataFromURL4=An error occurred while processing."
SET "outputReadingDataFromURL5=The webpage could not be cached."
SET "outputReadingDataFromURL6=The operation will therefore be rolled back."
SET "outputReadingDataFromURL7=Please confirm the reset to do"
SET "outputReadingDataFromURL8=Waiting for user"
SET "outputReadingDataFromURL9=The next step is to clear the console content. When you are ready and want to start reading the variables,"
SET "outputReadingDataFromURL10=The variables were saved successfully!"
SET "outputReadingDataFromURL11=The temporary files will now be removed again."

EXIT /B
