REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: translations\en.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

REM ============================ en.cmd ===========================================================
::chcp 1252>nul

REM ===============================================================================================
REM      English edition of the texts
REM ===============================================================================================
::Aktiviere Zeichen der ASCII Tabelle wie äöü ... (+Speichern im als ANSI Format)



REM ===============================================================================================
REM     ConsoleOutputMenus.cmd -> VAR: OutputMenueSavePath
REM ===============================================================================================
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_Header=Subject: Choose save path"

SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_Headline1=Set save location"
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_Headline2^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body1=Please choose where to save your downloads."
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body2=Type/Paste the appropriate folder path."
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body3=e.g. %userprofile%\Downloads\Comics"
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body4=e.g. %userprofile%\Pictures\Comics"
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body5=e.g. %APPDATA%\_Hidden"
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body6=Please at the end of the path without '\'"
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body7=So not: %userprofile%\Downloads\Comics\ but %userprofile%\Downloads\Comics"
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body8=You can also copy the desired path from the address bar of the explorer and paste here with [ctrl] + [V]."
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body10=Confirm your entry with [Enter]"


REM ===============================================================================================
REM     UrlNumberFilter.cmd
REM ===============================================================================================
SET "LANG_mainUrlInput"=URL/Number


REM ===============================================================================================
REM     ConsoleOutputMenus.cmd -> VAR: OutputMenueMainUrl
REM ===============================================================================================
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_header=Subject: Website address / URL"

SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_headline1=Previous entries"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body1=Save to path"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body2=Now enter the"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body3=URL"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body4=or"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body5=number"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body6=of the website where the comic is featured and confirm with [Enter]"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body7=You can copy the URL of the web page from the address bar/line of the browser and paste it here with [ctrl] ^+ [V]"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body8=Example"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_footer=Confirm URL with [Enter]"


REM ===============================================================================================
REM     UrlNumberFilter.cmd
REM ===============================================================================================
SET "LANG_UrlNumberFilter_1=is not a valid URL or number"
SET "LANG_UrlNumberFilter_2=Please try again! To continue"
SET "LANG_UrlNumberFilter_3=The specified URL does not match the conditions"
SET "LANG_UrlNumberFilter_4=Please try another URL"
SET "LANG_UrlNumberFilter_5=The specified URL meets the conditions! Continue to proceed"


REM ===============================================================================================
REM     ReadingDataFromURL.cmd
REM ===============================================================================================
SET "LANG_ReadingDataFromURL_DEBUG_1=Load variables from the website behind the specified URL"
SET "LANG_ReadingDataFromURL_DEBUG_2=Create a temporary folder for processing the variables"

SET "LANG_ReadingDataFromURL_DEBUG_3=Download-URL
SET "LANG_ReadingDataFromURL_DEBUG_4=Pages
SET "LANG_ReadingDataFromURL_DEBUG_5=Language
SET "LANG_ReadingDataFromURL_DEBUG_6=Artist
SET "LANG_ReadingDataFromURL_DEBUG_7=Comicname

SET "LANG_ReadingDataFromURL_DEBUG_8=Waiting for user"
SET "LANG_ReadingDataFromURL_DEBUG_9=The next step is to clear the console content. When you are ready and want to start reading the variables,"

SET "LANG_ReadingDataFromURL_DEBUG_10=The variables were saved successfully!"
SET "LANG_ReadingDataFromURL_DEBUG_11=The temporary files will now be removed again."

SET "LANG_ReadingDataFromURL_1=The website was cached successfully. Now the necessary information is read out and stored in variables."
SET "LANG_ReadingDataFromURL_2=An error occurred while processing."
SET "LANG_ReadingDataFromURL_3=The webpage could not be cached."
SET "LANG_ReadingDataFromURL_4=The operation will therefore be rolled back."
SET "LANG_ReadingDataFromURL_5=Please confirm the reset to do"


REM ===============================================================================================
REM     ConsoleOutputMenus.cmd -> VAR: OutputMenuDownloadFolderInput + AskDownloadFolder.cmd
REM ===============================================================================================
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_header=Subject: Select subfolder / Select theme"

SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_headline1=Download topic"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body1=Input"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body2=Sub-folder name"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body3=Manual input of a custom folder name (The content of the folder is only checked when it is selected)"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body4=Open ImHentai.xxx"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body5=Exit application"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_1=In which folder should the comic be downloaded?"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_2=Example: tk  for TwoKinds"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_3=Confirm input with [Enter]:"

SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var1=Downloads_General"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var2=Animals_-_Feral"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var3=Dragon"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var4=Furry"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var5=Furry_Cubs"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var6=Human"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var7=Human-Children"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var8=Children-movies"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var9=Pokemon"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var10=Digimon"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var11=Special"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var12=Zootopia"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var13=Anime"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var14=English"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var15=My_Little_Pony"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var16=Pictures_only"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var17=TwoKinds"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var18=The_Lion_King"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var19=Other"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var20=SFW"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var21=Favourites"

SET "LANG_AskDownloadFolder_downloadFolder_input=Folder"


REM ===============================================================================================
REM     ConsoleOutputMenus.cmd -> VAR: OutputMenuPageCountInput
REM ===============================================================================================
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_header=Subject: Number of pages"

SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_headline1=Previous inputs"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body1=Save to path"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body2=Current download folder/subfolder"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body3=Comic identification number"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body4=Comic-URL"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body5=Download-URL (Base)"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body6=(Taken from the website)"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body7=Number of pages
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body8=Specify the number of pages to be downloaded"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body9=If you want to accept the suggested number of pages, just press [Enter] without entering any other number."
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_footer=Confirm input with [Enter]"






EXIT /B
