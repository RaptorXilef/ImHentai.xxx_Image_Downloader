:all_right_input
    color 0a
    cls
    echo    Sind alle angaben korrekt? / Download starten?
    echo   +=======================================================================================================================================================================
    echo   ^>
    echo   ^>  Bisherige Eingaben
    echo   ^>  ==================
    echo   ^>
    echo   ^>
    echo   ^>    Speichern unter:
    echo   ^>     -^> %savePath%
    echo   ^>
    echo   ^>    Aktueller Downloadordner/-unterordner:
    echo   ^>     -^> %dl_folder%
    echo   ^>
    echo   ^>    Comic-Identifikationsnummer:
    echo   ^>     -^> %comicId%
    echo   ^>
    echo   ^>    Comic-URL:
    echo   ^>     -^> %main-url%
    echo   ^>
    echo   ^>    Download-URL (Basis):
    echo   ^>     -^> %imageDownloadFolderURL%*.*
    echo   ^>
    echo   ^>    Seitenanzahl:
    echo   ^>     -^> %pages%
    echo   ^>
    echo   ^>    Name des Comics / Der Bildreihe:
    echo   ^>     -^> %comic-name%
    echo   ^>
    echo   ^>
  IF "%DEBUG%"=="DebugON" (CHCP 1252) else (CHCP 1252>nul)
    echo   ^>    j = Download wird gestartet.         n = Alle Angaben werden wieder zurückgesetzt und die Eingabe gebinnt von vorn.
    echo   +=======================================================================================================================================================================
    echo.
    echo   #  Sind alle oben angezeigten Daten richtig? Kann der Download gestartet werden?
    echo         -   j / n    (ja/nein)
    echo         # Eingabe mit [Enter] bestätigen:
    echo.
  goto %chcpCodeNumber%
  :chcp65001
      IF "%DEBUG%"=="DebugON" (CHCP 65001) else (CHCP 65001>nul)
  :chcp1252
    set /p "all_right_input=------> Download starten: "

    IF "%all_right_input%"=="j" goto continue
    IF "%all_right_input%"=="y" goto continue
    IF "%all_right_input%"=="n" color 0c && echo. && echo. && echo Mit dem Klick auf [Enter] werden alle Eingaben gelöscht und Sie können die richtigen Daten angeben. && pause && set errorRestart=errorRestartYES
    goto %errorRestart%
:restart_no
    goto all_right_input
:errorRestartYES
:continue
    ::aktiviere äöü
