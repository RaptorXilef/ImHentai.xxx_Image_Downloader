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
REM     SavePathLoadOrCreateConfigfile.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenuSavePath
REM ===============================================================================================
SET "lang_SavePathLoadOrCreateConfigfile_inputSavePath=Speicherort"

SET "lang_ConsoleOutputMenus_OutputMenuSavePath_header=Thema: Speicherort w�hlen"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_headline1=Speicherort eingeben"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body1=Legen Sie bitte fest, wo Ihre Downloads abgelegt werden sollen."
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body2=Geben/F�gen Sie dazu den entsprechenden Ordnerpfad ein."
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body3=z.B. %userprofile%\Downloads\Comics"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body4=z.B. %userprofile%\Pictures\Comics"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body5=z.B. %APPDATA%\_Versteckt"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body6=Bitte am Ende des Pfads ohne '\'"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body7=Also nicht: %userprofile%\Downloads\Comics\ sondern %userprofile%\Downloads\Comics"
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_body8=Sie k�nnen den gew�nschten Pfad auch aus der Adressleiste des Explorer kopieren und hier mit [strg] + [V] einf�gen."
SET "lang_ConsoleOutputMenus_OutputMenuSavePath_footer=Best�tigen Sie Ihre Eingabe mit [Enter]"


REM ===============================================================================================
REM     UrlNumberFilter.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenuMainUrl
REM ===============================================================================================
SET "lang_mainUrlInput"=URL/Nummer"

SET "lang_UrlNumberFilter_1=ist keine g�ltige URL oder Zahl"
SET "lang_UrlNumberFilter_2=Wiederholen Sie den Vorgang! Um fortzufahren"
SET "lang_UrlNumberFilter_3=Die angegebene URL entspricht nicht den Bedingungen"
SET "lang_UrlNumberFilter_4=Bitte versuchen Sie eine andere URL"
SET "lang_UrlNumberFilter_5=Die angegebene URL entspricht den Bedingungen! Der Fortgang wird fortgesetzt"

SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_header=Thema: Webseitenadresse / URL"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_headline1=Bisherige Eingaben"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body1=Speichern unter"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body2=Geben Sie nun die"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body3=URL"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body4=oder"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body5=Nummer"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body6=der Webseite ein, auf welcher der Comic vorgestellt wird, und best�tigen Sie diese mit [Enter]"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body7=Sie k�nnen die URL der Webseite aus der Adressleiste/-zeile des Browsers kopieren und hier mit [strg] ^+ [V] einf�gen"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_body8=Beispiel"
SET "lang_ConsoleOutputMenus_OutputMenueMainUrl_footer=URL mit [Enter] best�tigen"


REM ===============================================================================================
REM     ReadingDataFromURL.cmd
REM ===============================================================================================
SET "lang_ReadingDataFromURL_DEBUG_1=Lade variablen aus der Webseite hinter der angegebenen URL"
SET "lang_ReadingDataFromURL_DEBUG_2=Erstelle einen tempor�ren Ordner zur Verarbeitung der Variablen"

SET "lang_ReadingDataFromURL_DEBUG_3=Download-URL
SET "lang_ReadingDataFromURL_DEBUG_4=Seiten
SET "lang_ReadingDataFromURL_DEBUG_5=Sprache
SET "lang_ReadingDataFromURL_DEBUG_6=K�nstler
SET "lang_ReadingDataFromURL_DEBUG_7=Comicname

SET "lang_ReadingDataFromURL_DEBUG_8=Warte auf Benutzer"
SET "lang_ReadingDataFromURL_DEBUG_9=Im n�chsten Schritt wird der Konsoleninhalt geleert. Wenn Sie bereit sind und das Auslesen der Variablen starten m�chten,"

SET "lang_ReadingDataFromURL_DEBUG_10=Die Variablen wurden erfolgreich gespeichert!"
SET "lang_ReadingDataFromURL_DEBUG_11=Die tempor�ren Dateien werden nun wieder entfernt."

SET "lang_ReadingDataFromURL_1=Die Webseite wurde erfolgreich zwischengespeichert. Nun werden die n�tigen Informationen ausgelesen und in Variablen gespeichert."
SET "lang_ReadingDataFromURL_2=Es ist ein Fehler bei der Verarbeitung aufgetreten."
SET "lang_ReadingDataFromURL_3=Die Webseite konnte nicht zwischengespeichert werden."
SET "lang_ReadingDataFromURL_4=Der Vorgang wird daher zur�ckgesetzt."
SET "lang_ReadingDataFromURL_5=Bitte best�tigen Sie das zur�cksetzen, dazu"


REM ===============================================================================================
REM     ConsoleOutputMenus.cmd -> VAR: OutputMenuDownloadFolderInput
REM ===============================================================================================
SET "lang_AskDownloadFolder_downloadFolder_input=Ordner"

SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_header=Thema: Unterordner w�hlen / Thema w�hlen"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_headline1=Downloadthema"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body1=Eingabe"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body2=Unter-Ordnername"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body3=Manuelle Eingabe eines eigenen Ordnernamen (Der Inhalt des Ordners wird nur bei dessen Auswahl gepr�ft)"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body4=ImHentai.xxx �ffnen"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body5=Anwendung beenden"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_1=In welchen Ordner soll der Comic gedownloadet werden?"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_2=Beispiel: tk  f�r TwoKinds"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_3=Eingabe mit [Enter] best�tigen:"

SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var1=Downloads_Allgemein"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var2=Tiere_-_Wilde_Tiere"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var3=Drache"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var4=Furry"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var5=Furry_Cubs"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var6=Menschen"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var7=Menschenkinder"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var8=Kinder-Filme"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var9=Pokemon"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var10=Digimon"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var11=Besonderes"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var12=Zootopia"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var13=Anime"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var14=Deutsch"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var15=My_Little_Pony"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var16=Nur_Bilder"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var17=TwoKinds"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var18=Der_K�nig_der_L�wen"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var19=Andere"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var20=SFW"
SET "lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var21=Favoriten"


REM ===============================================================================================
REM     AskPages.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenuPageCountInput
REM ===============================================================================================
SET "lang_AskPages_pageCountInput=Seitenanzahl"

SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_header=Thema: Seitenanzahl"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_headline1=Bisherige Eingaben"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body1=Speichern unter"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body2=Aktueller Downloadordner/-unterordner"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body3=Comic-Identifikationsnummer"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body4=Comic-URL"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body5=Download-URL (Basis)"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body6=(Von der Webseite �bernommen)"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body7=Seitenanzahl"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body8=Geben Sie die Anzahl der Seiten an, welche heruntergeladen werden sollen"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_body9=M�chten Sie die vorgeschlagene Seitenanzahl �bernehmen, dr�cken Sie nur [Enter] ohne Eingabe einer anderen Zahl."
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInput_footer=Eingabe mit [Enter] best�tigen"


REM ===============================================================================================
REM     AskPagesRenewLoad.cmd  +  MainPart.cmd
REM ===============================================================================================
SET "lang_AskPagesRenewLoad_DEBUG_1=Lade Variablen aus der Flatfile-Datenbank"
SET "lang_AskPagesRenewLoad_DEBUG_2=Entferne Sonderzeichen aus den Variablen"
SET "lang_AskPagesRenewLoad_DEBUG_3=Zeige geladene Variablen"

SET "lang_MainPart_comicNameRenew_output_1=wurde bereits vollst�ndig heruntergeladen."
SET "lang_MainPart_comicNameRenew_output_2=Sie finden"
SET "lang_MainPart_comicNameRenew_output_3=unter"
SET "lang_MainPart_comicNameRenew_output_4=Bilddateien/Comic"
SET "lang_MainPart_comicNameRenew_output_5=Sicherung"
SET "lang_MainPart_comicNameRenew_output_6=Datenbankeintrag"
SET "lang_MainPart_comicNameRenew_output_7=Mit einem Klick auf [Enter] werden alle Eingaben zur�ckgesetzt und Sie k�nnen mit einem anderen Download beginnen."


REM ===============================================================================================
REM     AskPagesRenew.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenuPageCountInputRenew
REM ===============================================================================================
SET "lang_AskPagesRenew_pageCountInput=Letzte Seite"
SET "lang_AskPagesRenew_1=ist kleiner oder gleich"
SET "lang_AskPagesRenew_2=und damit ung�ltig."
SET "lang_AskPagesRenew_3=Bitte versuchen Sie es erneut!"

SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_top1=================================================================================="
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_top2=Das Comic/Die Bildreihe auf der angegebenen Seite wurden bereits heruntergeladen!"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_top3=Jedoch wurde eine �nderung an der Seite erkannt. Es gibt folgende unterschiede"

SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_header=Thema: Nummer der letzten Seite"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_headline1=Daten aus der Datenbank"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_headline3=Neue Werte werden wie folgt markiert"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_new=Neu"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_db=DB"

SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body5=Name des Comics / Der Bildreihe"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body6=Download beginnt bei Seite ... und geht bis Seite ..."
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body7=Seitenanzahl"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_page=Seite"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_pages=Seite/n"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body8=Es werden nur die neuen Seiten/Bilder heruntergeladen. Die bereits heruntergeladenen werden �bersprungen!"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body9=Die Werte mit einem"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body10=werden mit Klick auf [Enter] best�tigt und �bernommen!"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body11=(Sollte der Speicherort noch nicht Existieren oder gel�scht worden sein, werden alle Seiten beginnend bei Seite 1 bis zum angegebenen Ende heruntergeladen)"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body12=Geben Sie die Nummer der (letzten) Seiten an, bis zu welcher heruntergeladen werden sollen"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body13=Die angegebene Zahl muss gr��er sein als"
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body14=M�chten Sie die vorgeschlagene Seitenanzahl �bernehmen, dr�cken Sie [Enter] ohne Eingabe einer Zahl."
SET "lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_footer=Eingabe mit [Enter] best�tigen"


REM ===============================================================================================
REM     AskComicName2.cmd  +  MainPart.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenuComicNameInput
REM ===============================================================================================
SET "lang_AskComicName2_comicNameInput=Name"

SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_header=Thema: Name des Comics / Name der Bildreihe"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body8=Name des Comics / Der Bildreihe: (Von der Webseite �bernommen) (Koreanische und japanische Zeichen werden nicht unterst�tzt!)"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body9=Die von mir empfohlenen Formate f�r Comicnamen: (*=optional)"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body10=[Name Autor/en] Comicnamen/Namen_der_Bildreihe (*Sprache) [*Name �bersetzer] (*status)    -^>    [Tom Fischbach] TwoKinds Kapitel 01 (english)"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body11=Comicnamen/Namen_der_Bildreihe (*Sprache) [*Name Autor/en]                                -^>    TwoKinds Kapitel 01 (english) [Tom Fischbach]"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body12=Sie sollten sich im bessten Fall f�r ein einheitliches Format entscheiden, um sp�ter alles leicht wiederzufinden :-)"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body13=Geben Sie nun den Namen des Comics ein"
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body14=M�chten Sie den vorgeschlagenen Namen 1 �bernehmen, dr�cken Sie [Enter] ohne Eingabe einer Zahl."
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body15=M�chten Sie den vorgeschlagenen Namen 2 �bernehmen, dr�cken Sie 2 und dann [Enter]."
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body16=M�chten Sie den vorgeschlagenen Namen 3 �bernehmen, dr�cken Sie 3 und dann [Enter] (und so weiter)."
SET "lang_ConsoleOutputMenus_OutputMenuComicNameInput_body17=Sollte keiner der Vorgeschlagenen Namen passen, k�nnen Sie auch selbst einen Namen eingeben oder mit [strg] + [V] einf�gen."

SET "lang_MainPart_AskComicName_output_1=Der Name"
SET "lang_MainPart_AskComicName_output_2=ist bereist vergeben!"
SET "lang_MainPart_AskComicName_output_3=Bitte w�hlen Sie einen anderen Namen."
SET "lang_MainPart_AskComicName_output_4=Der Name ist noch nicht vergeben. Es wird fortgefahren."


REM ===============================================================================================
REM     AskAllRight.cmd  +  AskAllRightRenew.cmd  +  MainPart.cmd  +  ConsoleOutputMenus.cmd -> VAR: OutputMenuRllRightInput   VAR: OutputMenuRllRightRenewInput
REM ===============================================================================================
SET "lang_AskAllRight_all_right_input=Download starten"
SET "lang_AskAllRight_n=Mit dem Klick auf [Enter] werden alle Eingaben gel�scht und Sie k�nnen die richtigen Daten angeben."

SET "lang_ConsoleOutputMenus_OutputMenuRllRightInput_header=Thema: Sind alle Angaben korrekt? / Download starten?"
SET "lang_ConsoleOutputMenus_OutputMenuRllRightInput_body8=Name des Comics / Der Bildreihe"
SET "lang_ConsoleOutputMenus_OutputMenuRllRightInput_body9=Download starten"
SET "lang_ConsoleOutputMenus_OutputMenuRllRightInput_body10=Alle Angaben werden wieder zur�ckgesetzt und die Eingabe beginnt von vorn"
SET "lang_ConsoleOutputMenus_OutputMenuRllRightInput_body11=Sind alle oben angezeigten Daten richtig? Kann der Download gestartet werden?"
SET "lang_ConsoleOutputMenus_OutputMenuRllRightInput_body12=ja/nein"

SET "lang_ConsoleOutputMenus_OutputMenuRllRightRenewInput_body13=Downloadbeginn von Seite ... bis Seite ... (Anzahl Seiten)"


REM ===============================================================================================
REM     wgetDownloadLists.cmd  +  wgetStartDownload.cmd  +  RenameToPageNumber.cmd  +  WebLinkCreate.cmd  +  7zrStart.cmd
REM ===============================================================================================
SET "lang_wgetDownloadLists_DEBUG_1=Erstelle Flatfile-Datenbankeintrag des Comics"
SET "lang_wgetDownloadLists_DEBUG_2=Erstelle Downloadliste/n"

SET "lang_wgetStartDownload_DEBUG_1=Erstelle Downloadordner"

SET "lang_RenameToPageNumber_DEBUG_1=Starte Nummerierung der Bilder"

SET "lang_WebLinkCreate_DEBUG_1=Erstelle Verkn�pfung zur Webseite des Comics"

SET "lang_7zrStart_DEBUG_1=Erstelle Sicherungs-Archiv der Bilder!"
SET "lang_7zrStart_DEBUG_2=in"
SET "lang_7zrStart_DEBUG_3=aus"
SET "lang_7zrStart_DEBUG_4=Archivierung beendet."
SET "lang_7zrStart_DEBUG_5=Bereite Anwendung f�r neuen Download vor..."





EXIT /B
