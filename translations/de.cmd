:: ============================ de.cmd ===========================================================
::chcp 1252>nul

:: ===============================================================================================
::      Deutsche Ausgabe der Texte
:: ===============================================================================================
::Aktiviere Zeichen der ASCII Tabelle wie äöü ... (+Speichern im als ANSI Format)



:: ===============================================================================================
::     OutputMenuSavePath
:: ===============================================================================================
SET "outputMenuSavePath_header=Speicherort wählen"

SET "outputMenuSavePath_headline1=Speicherort eingeben"
SET "outputMenuSavePath_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "outputMenuSavePath_body1=Legen Sie bitte fest, wo Ihre Downloads abgelegt werden sollen."
SET "outputMenuSavePath_body2=Geben/Fügen Sie dazu den entsprechenden Ordnerpfad ein."
SET "outputMenuSavePath_body3=z.B. %userprofile%\Downloads\Comics"
SET "outputMenuSavePath_body4=z.B. %userprofile%\Pictures\Comics"
SET "outputMenuSavePath_body5=z.B. %APPDATA%\_Versteckt"
SET "outputMenuSavePath_body6=Bitte am Ende des Pfads ohne '\'"
SET "outputMenuSavePath_body7=Also nicht: %userprofile%\Downloads\Comics\ sondern %userprofile%\Downloads\Comics"
SET "outputMenuSavePath_body8=Sie können den gewünschten Pfad auch aus der Adressleiste des Explorer kopieren und hier mit [strg] + [V] einfügen."
SET "outputMenuSavePath_footer=Bestätigen Sie Ihre Eingabe mit [Enter]"


:: ===============================================================================================
::     OutputMenuMainUrl
:: ===============================================================================================
SET "outputMenuMainUrl_header=Webseitenadresse / URL"

SET "outputMenuMainUrl_headline1=Bisherige Eingaben"
SET "outputMenuMainUrl_headline2=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^="
SET "outputMenuMainUrl_body1=Speichern unter: "
SET "outputMenuMainUrl_body2=Geben Sie nun die"
SET "outputMenuMainUrl_body3=URL"
SET "outputMenuMainUrl_body4=oder"
SET "outputMenuMainUrl_body5=Nummer"
SET "outputMenuMainUrl_body6=der Webseite ein, auf welcher der Comic vorgestellt wird, und bestätigen Sie diese mit [Enter]"
SET "outputMenuMainUrl_body7=Sie können die URL der Webseite aus der Adressleiste/-zeile des Browsers kopieren und hier mit [strg] ^+ [V] einfügen"
SET "outputMenuMainUrl_body8=Beispiel"
SET "outputMenuMainUrl_footer=URL mit [Enter] bestätigen"


:: ===============================================================================================
::     UrlNumberFilter.cmd
:: ===============================================================================================
SET "outputUrlNumberFilter1=ist keine gültige URL oder Zahl"
SET "outputUrlNumberFilter2=Wiederholen Sie den Vorgang! Um fortzufahren"
SET "outputUrlNumberFilter3=Die angegebene URL entspricht nicht den Bedingungen"
SET "outputUrlNumberFilter4=Bitte versuchen Sie eine andere URL"
SET "outputUrlNumberFilter5=Die angegebene URL entspricht den Bedingungen! Der Fortgang wird fortgesetzt"


:: ===============================================================================================
::     ReadingDataFromURL.cmd
:: ===============================================================================================
SET "outputReadingDataFromURL1=Lade variablen aus der Webseite hinter der angegebenen URL"
SET "outputReadingDataFromURL2=Erstelle einen temporären Ordner zur Verarbeitung der Variablen"
SET "outputReadingDataFromURL3=Die Webseite wurde erfolgreich zwischengespeichert. Nun werden die nötigen Informationen ausgelesen und in Variablen gespeichert."
SET "outputReadingDataFromURL4=Es ist ein Fehler bei der Verarbeitung aufgetreten."
SET "outputReadingDataFromURL5=Die Webseite konnte nicht zwischengespeichert werden."
SET "outputReadingDataFromURL6=Der Vorgang wird daher zurückgesetzt."
SET "outputReadingDataFromURL7=Bitte bestätigen Sie das zurücksetzen, dazu"
SET "outputReadingDataFromURL8=Warte auf Benutzer"
SET "outputReadingDataFromURL9=Im nächsten Schritt wird der Konsoleninhalt geleert. Wenn Sie bereit sind und das Auslesen der Variablen starten möchten,"
SET "outputReadingDataFromURL10=Die Variablen wurden erfolgreich gespeichert!"
SET "outputReadingDataFromURL11=Die temporären Dateien werden nun wieder entfernt."
