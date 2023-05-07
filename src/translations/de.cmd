REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Pr�fe ob Programm �ber Start.cmd gestartet wurde, wenn nicht starte es automatisch �ber Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: translations\de.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################

REM ============================ de.cmd ===========================================================
::chcp 1252>nul

REM ===============================================================================================
REM      Deutsche Ausgabe der Texte
REM ===============================================================================================
::Aktiviere Zeichen der ASCII Tabelle wie ��� ... (+Speichern im als ANSI Format)



REM ===============================================================================================
REM     ConsoleOutputMenus.cmd -> VAR: OutputMenuSavePath
REM ===============================================================================================
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_header=Thema: Speicherort w�hlen"

SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_headline1=Speicherort eingeben"
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body1=Legen Sie bitte fest, wo Ihre Downloads abgelegt werden sollen."
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body2=Geben/F�gen Sie dazu den entsprechenden Ordnerpfad ein."
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body3=z.B. %userprofile%\Downloads\Comics"
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body4=z.B. %userprofile%\Pictures\Comics"
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body5=z.B. %APPDATA%\_Versteckt"
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body6=Bitte am Ende des Pfads ohne '\'"
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body7=Also nicht: %userprofile%\Downloads\Comics\ sondern %userprofile%\Downloads\Comics"
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_body8=Sie k�nnen den gew�nschten Pfad auch aus der Adressleiste des Explorer kopieren und hier mit [strg] + [V] einf�gen."
SET "LANG_ConsoleOutputMenus_OutputMenuSavePath_footer=Best�tigen Sie Ihre Eingabe mit [Enter]"


REM ===============================================================================================
REM     UrlNumberFilter.cmd
REM ===============================================================================================
SET "LANG_mainUrlInput"=URL/Nummer:


REM ===============================================================================================
REM     ConsoleOutputMenus.cmd -> VAR: OutputMenuMainUrl
REM ===============================================================================================
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_header=Thema: Webseitenadresse / URL"

SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_headline1=Bisherige Eingaben"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body1=Speichern unter"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body2=Geben Sie nun die"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body3=URL"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body4=oder"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body5=Nummer"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body6=der Webseite ein, auf welcher der Comic vorgestellt wird, und best�tigen Sie diese mit [Enter]"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body7=Sie k�nnen die URL der Webseite aus der Adressleiste/-zeile des Browsers kopieren und hier mit [strg] ^+ [V] einf�gen"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_body8=Beispiel"
SET "LANG_ConsoleOutputMenus_OutputMenueMainUrl_footer=URL mit [Enter] best�tigen"


REM ===============================================================================================
REM     UrlNumberFilter.cmd
REM ===============================================================================================
SET "LANG_UrlNumberFilter_1=ist keine g�ltige URL oder Zahl"
SET "LANG_UrlNumberFilter_2=Wiederholen Sie den Vorgang! Um fortzufahren"
SET "LANG_UrlNumberFilter_3=Die angegebene URL entspricht nicht den Bedingungen"
SET "LANG_UrlNumberFilter_4=Bitte versuchen Sie eine andere URL"
SET "LANG_UrlNumberFilter_5=Die angegebene URL entspricht den Bedingungen! Der Fortgang wird fortgesetzt"


REM ===============================================================================================
REM     ReadingDataFromURL.cmd
REM ===============================================================================================
SET "LANG_ReadingDataFromURL_DEBUG__1=Lade variablen aus der Webseite hinter der angegebenen URL"
SET "LANG_ReadingDataFromURL_DEBUG__2=Erstelle einen tempor�ren Ordner zur Verarbeitung der Variablen"

SET "LANG_ReadingDataFromURL_DEBUG_3=Download-URL
SET "LANG_ReadingDataFromURL_DEBUG_4=Seiten
SET "LANG_ReadingDataFromURL_DEBUG_5=Sprache
SET "LANG_ReadingDataFromURL_DEBUG_6=K�nstler
SET "LANG_ReadingDataFromURL_DEBUG_7=Comicname

SET "LANG_ReadingDataFromURL_DEBUG_8=Warte auf Benutzer"
SET "LANG_ReadingDataFromURL_DEBUG_9=Im n�chsten Schritt wird der Konsoleninhalt geleert. Wenn Sie bereit sind und das Auslesen der Variablen starten m�chten,"

SET "LANG_ReadingDataFromURL_DEBUG_10=Die Variablen wurden erfolgreich gespeichert!"
SET "LANG_ReadingDataFromURL_DEBUG_11=Die tempor�ren Dateien werden nun wieder entfernt."

SET "LANG_ReadingDataFromURL_1=Die Webseite wurde erfolgreich zwischengespeichert. Nun werden die n�tigen Informationen ausgelesen und in Variablen gespeichert."
SET "LANG_ReadingDataFromURL_2=Es ist ein Fehler bei der Verarbeitung aufgetreten."
SET "LANG_ReadingDataFromURL_3=Die Webseite konnte nicht zwischengespeichert werden."
SET "LANG_ReadingDataFromURL_4=Der Vorgang wird daher zur�ckgesetzt."
SET "LANG_ReadingDataFromURL_5=Bitte best�tigen Sie das zur�cksetzen, dazu"


REM ===============================================================================================
REM     ConsoleOutputMenus.cmd -> VAR: OutputMenuDownloadFolderInput
REM ===============================================================================================
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_header=Thema: Unterordner w�hlen / Thema w�hlen"

SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_headline1=Downloadthema"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body1=Eingabe"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body2=Unter-Ordnername"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body3=Manuelle Eingabe eines eigenen Ordnernamen (Der Inhalt des Ordners wird nur bei dessen Auswahl gepr�ft)"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body4=ImHentai.xxx �ffnen"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body5=Anwendung beenden"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_1=In welchen Ordner soll der Comic gedownloadet werden?"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_2=Beispiel: tk  f�r TwoKinds"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_3=Eingabe mit [Enter] best�tigen:"

SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var1=Downloads_Allgemein"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var2=Tiere_-_Wilde_Tiere"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var3=Drache"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var4=Furry"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var5=Furry_Cubs"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var6=Menschen"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var7=Menschenkinder"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var8=Kinder-Filme"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var9=Pokemon"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var10=Digimon"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var11=Besonderes"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var12=Zootopia"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var13=Anime"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var14=Deutsch"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var15=My_Little_Pony"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var16=Nur_Bilder"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var17=TwoKinds"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var18=Der_K�nig_der_L�wen"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var19=Andere"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var20=SFW"
SET "LANG_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var21=Favoriten"

SET "LANG_AskDownloadFolder_downloadFolder_input=Ordner"


REM ===============================================================================================
REM     ConsoleOutputMenus.cmd -> VAR: OutputMenuPageCountInput
REM ===============================================================================================
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_header=Thema: Seitenanzahl"

SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_headline1=Bisherige Eingaben"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body1=Speichern unter"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body2=Aktueller Downloadordner/-unterordner"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body3=Comic-Identifikationsnummer"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body4=Comic-URL"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body5=Download-URL (Basis)"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body6=(Von der Webseite �bernommen)"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body7=Seitenanzahl"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body8=Geben Sie die Anzahl der Seiten an, welche heruntergeladen werden sollen"
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_body9=M�chten Sie die vorgeschlagene Seitenanzahl �bernehmen, dr�cken Sie nur [Enter] ohne Eingabe einer anderen Zahl."
SET "LANG_ConsoleOutputMenus_OutputMenuPageCountInput_footer=Eingabe mit [Enter] best�tigen"







EXIT /B
