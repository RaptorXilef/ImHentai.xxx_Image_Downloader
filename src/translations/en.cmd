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
REM     SavePathLoadOrCreateConfigfile.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenueSavePath
REM ===============================================================================================
SET "lang_SavePathLoadOrCreateConfigfile_inputSavePath=Location"

SET "lang_ConsoleOutputMenus_OutputMenuSavePath_Header=Subject: Choose save path"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_Headline1=Set save location"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_Headline2^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body1=Please choose where to save your downloads."
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body2=Type/Paste the appropriate folder path."
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body3=e.g. %userprofile%\Downloads\Comics"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body4=e.g. %userprofile%\Pictures\Comics"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body5=e.g. %APPDATA%\_Hidden"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body6=Please at the end of the path without '\'"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body7=So not: %userprofile%\Downloads\Comics\ but %userprofile%\Downloads\Comics"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body8=You can also copy the desired path from the address bar of the explorer and paste here with [ctrl] + [V]."
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body10=Confirm your entry with [Enter]"


REM ===============================================================================================
REM     UrlNumberFilter.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenueMainUrl
REM ===============================================================================================
SET "lang_UrlNumberFilter_mainUrlInput"=URL/Number"

SET "lang_UrlNumberFilter_1=is not a valid URL or number"
SET "lang_UrlNumberFilter_2=Please try again! To continue"
SET "lang_UrlNumberFilter_3=The specified URL does not match the conditions"
SET "lang_UrlNumberFilter_4=Please try another URL"
SET "lang_UrlNumberFilter_5=The specified URL meets the conditions! Continue to proceed"

SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_header=Subject: Website address / URL"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_headline1=Previous entries"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body1=Save to path"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body2=Now enter the"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body3=URL"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body4=or"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body5=number"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body6=of the website where the comic is featured and confirm with [Enter]"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body7=You can copy the URL of the web page from the address bar/line of the browser and paste it here with [ctrl] ^+ [V]"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body8=Example"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_footer=Confirm URL with [Enter]"


REM ===============================================================================================
REM     ReadingDataFromURL.cmd
REM ===============================================================================================
SET "lang_ReadingDataFromURL_DEBUG_1=Load variables from the website behind the specified URL"
SET "lang_ReadingDataFromURL_DEBUG_2=Create a temporary folder for processing the variables"

SET "lang_ReadingDataFromURL_DEBUG_3=Download-URL
SET "lang_ReadingDataFromURL_DEBUG_4=Pages
SET "lang_ReadingDataFromURL_DEBUG_5=Language
SET "lang_ReadingDataFromURL_DEBUG_6=Artist
SET "lang_ReadingDataFromURL_DEBUG_7=Comicname

SET "lang_ReadingDataFromURL_DEBUG_8=Waiting for user"
SET "lang_ReadingDataFromURL_DEBUG_9=The next step is to clear the console content. When you are ready and want to start reading the variables,"

SET "lang_ReadingDataFromURL_DEBUG_10=The variables were saved successfully!"
SET "lang_ReadingDataFromURL_DEBUG_11=The temporary files will now be removed again."

SET "lang_ReadingDataFromURL_1=The website was cached successfully. Now the necessary information is read out and stored in variables."
SET "lang_ReadingDataFromURL_2=An error occurred while processing."
SET "lang_ReadingDataFromURL_3=The webpage could not be cached."
SET "lang_ReadingDataFromURL_4=The operation will therefore be rolled back."
SET "lang_ReadingDataFromURL_5=Please confirm the reset to do"


REM ===============================================================================================
REM     AskDownloadFolder.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenuDownloadFolderInput
REM ===============================================================================================
SET "lang_AskDownloadFolder_downloadFolder_input=Folder"

SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_header=Subject: Select subfolder / Select theme"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_headline1=Download topic"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body1=Input"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body2=Sub-folder name"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body3=Manual input of a custom folder name (The content of the folder is only checked when it is selected)"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body4=Open ImHentai.xxx"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body5=Exit application"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_1=In which folder should the comic be downloaded?"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_2=Example: tk  for TwoKinds"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_3=Confirm input with [Enter]:"

SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var1=Downloads_General"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var2=Animals_-_Feral"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var3=Dragon"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var4=Furry"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var5=Furry_Cubs"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var6=Human"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var7=Human-Children"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var8=Children-movies"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var9=Pokemon"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var10=Digimon"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var11=Special"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var12=Zootopia"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var13=Anime"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var14=English"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var15=My_Little_Pony"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var16=Pictures_only"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var17=TwoKinds"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var18=The_Lion_King"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var19=Other"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var20=SFW"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var21=Favourites"


REM ===============================================================================================
REM     AskPages.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenuPageCountInput
REM ===============================================================================================
SET "lang_AskPages_pageCountInput=Number of pages"

SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_header=Subject: Number of pages"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_headline1=Previous inputs"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body1=Save to path"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body2=Current download folder/subfolder"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body3=Comic identification number"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body4=Comic-URL"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body5=Download-URL (Base)"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body6=(Taken from the website)"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body7=Number of pages
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body8=Specify the number of pages to be downloaded"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body9=If you want to accept the suggested number of pages, just press [Enter] without entering any other number."
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_footer=Confirm input with [Enter]"


REM ===============================================================================================
REM     AskPagesRenewLoad.cmd
REM ===============================================================================================
SET "lang_AskPagesRenewLoad_DEBUG_1=DEBUG info: Load variables from flat file database"
SET "lang_AskPagesRenewLoad_DEBUG_2=Remove special characters from the variables"
SET "lang_AskPagesRenewLoad_DEBUG_3=Show loaded variables"

SET "lang_MainPart_comicNameRenew_output_1=has already been downloaded completely."
SET "lang_MainPart_comicNameRenew_output_2=You will find"
SET "lang_MainPart_comicNameRenew_output_3=at"
SET "lang_MainPart_comicNameRenew_output_4=Image files/comic"
SET "lang_MainPart_comicNameRenew_output_5=Backup"
SET "lang_MainPart_comicNameRenew_output_6=Database entry"
SET "lang_MainPart_comicNameRenew_output_7=With a click on [Enter] all entries are reset and you can start with another download."


REM ===============================================================================================
REM     AskPagesRenew.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenuPageCountInputRenew
REM ===============================================================================================
SET "lang_AskPagesRenew_pageCountInput=Last page"
SET "lang_AskPagesRenew_1=is less than or equal to"
SET "lang_AskPagesRenew_2=and therefore invalid."
SET "lang_AskPagesRenew_3=Please try again!"

SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_top1=================================================================================="
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_top2=The comic/series of images on the given page have already been downloaded!"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_top3=However, a change was detected on the page. There are the following differences"

SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_header=Subject: Number of the last page"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_headline1=Data from the database"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_headline3=New values are marked as follows"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_new=New"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_db=DB"

SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body5=Name of the comic / the series of pictures"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body6=Download starts at page ... and goes to page ..."
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body7=Number of pages"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_page=Page"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_pages=Page/s"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body8=Only the new pages/images will be downloaded. The already downloaded ones will be skipped!"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body9=The values with a"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body10=are confirmed and accepted by clicking on [Enter]!"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body11=(If the location does not exist or has been deleted, all pages will be downloaded starting from page 1 to the specified end.)"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body12=Specify the number of the (last) pages up to which to download"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body13=The specified number must be greater than"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body14=If you want to accept the suggested number of pages, press [Enter] without entering a number."
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_footer=Confirm input with [Enter]"


REM ===============================================================================================
REM     AskComicName2.cmd  +  MainPart.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenuPageCountInputRenew
REM ===============================================================================================
SET "lang_AskComicName2_comicNameInput=Name"

SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_header=Subject: Name of the comic / name of the picture series"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body8=Name of the comic / picture series: (Taken from the website) (Korean and Japanese characters are not supported!)"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body9=The formats I recommend for comic names: [*=optional]"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body10=[name of author/s] comicname/name_of_the_picture_series (*language) [*name of translator] (*status) -^> [Tom Fischbach] TwoKinds chapter 01 (english)"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body11=comicname/name_of_the_picture_series (*language) [*name of author/s] -^> TwoKinds chapter 01 (english) [Tom Fischbach]"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body12=In the best case you should decide for a uniform format to find everything easily later :-)"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body13=Now enter the name of the comic"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body14=If you want to accept the suggested name 1, press [Enter] without entering a number."
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body15=If you want to accept the suggested name 2, press 2 and then [Enter]."
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body16=If you want to accept the suggested name 3, press 3 and then [Enter] (and so on)."
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body17=If none of the suggested names fits, you can also enter a name yourself or insert it with [ctrl] + [V]."

SET "lang_MainPart_AskComicName_output_1=The name"
SET "lang_MainPart_AskComicName_output_2=is already taken!"
SET "lang_MainPart_AskComicName_output_3=Please choose another name."
SET "lang_MainPart_AskComicName_output_4=The name is not yet assigned. It will be continued."


REM ===============================================================================================
REM     AskAllRight.cmd  +  MainPart.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenuComicNameInput
REM ===============================================================================================
SET "lang_AskAllRight_all_right_input=Start download"
SET "lang_AskAllRight_n=By clicking [Enter], all entries are deleted and you can enter the correct data."

SET "lang_ConsoleOutputMenus_OutputMenuRllRightInput_header=Subject: Is all information correct? / Start download?"
SET "lang_ConsoleOutputMenus_OutputMenuRllRightInput_body8=Name of the comic strip / series of pictures"
SET "lang_ConsoleOutputMenus_OutputMenuRllRightInput_body9=Start download"
SET "lang_ConsoleOutputMenus_OutputMenuRllRightInput_body10=All entries are reset and the input starts again from the beginning"
SET "lang_ConsoleOutputMenus_OutputMenuRllRightInput_byes/noody11=Are all the data displayed above correct? Can the download be started?"
SET "lang_ConsoleOutputMenus_OutputMenuRllRightInput_body12=yes/no"

SET "lang_ConsoleOutputMenus_OutputMenuRllRightRenewInput_body13=Start downloading from page ... to page ... (number of pages)"


REM ===============================================================================================
REM     wgetDownloadLists.cmd
REM ===============================================================================================
SET "lang_wgetDownloadLists_DEBUG_1=Create flat file database entry of the comic"
SET "lang_wgetDownloadLists_DEBUG_2=Create download list(s)"

SET "lang_wgetStartDownload_DEBUG_1=Create download folder"

SET "lang_RenameToPageNumber_DEBUG_1=Start numbering the images"

SET "lang_WebLinkCreate_DEBUG_1=Create link to the comic's website"

SET "lang_7zrStart_DEBUG_1=Create backup archive of the images!"
SET "lang_7zrStart_DEBUG_2=in"
SET "lang_7zrStart_DEBUG_3=from"
SET "lang_7zrStart_DEBUG_4=Archiving finished."
SET "lang_7zrStart_DEBUG_5=Prepare application for new download..."



EXIT /B
