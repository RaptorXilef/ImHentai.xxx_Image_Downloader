:: ============================ de.cmd ===========================================================
::chcp 1252>nul

:: ===============================================================================================
::      Deutsche Ausgabe der Texte
:: ===============================================================================================
::Aktiviere Zeichen der ASCII Tabelle wie הצü ... (+Speichern im als ANSI Format)



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
SET "outputReadingDataFromURL1=is not a valid URL or number"
SET "outputReadingDataFromURL2=Please try again! To continue"
SET "outputReadingDataFromURL3=The specified URL does not match the conditions"
SET "outputReadingDataFromURL4=Please try another URL"
SET "outputReadingDataFromURL5=The specified URL meets the conditions! Continue to proceed"
