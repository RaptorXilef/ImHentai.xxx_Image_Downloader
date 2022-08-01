:main-url_input
    color 08
    cls
    echo.
    %color_echo%    # {0B}Webseitenadresse / URL{#} # {\n}
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo   ¦
    %color_echo%   ¦  {0A}Bisherige Eingaben{#}{\n}
    %color_echo%   ¦  {0A}=================={#}{\n}
    echo   ¦
    echo   ¦
    %color_echo%   ¦    {02}Speichern unter: {#}{\n}
    %color_echo%   ¦     {07}-^> %save-to%{#}\*{\n}
    echo   ¦
::    echo   ¦    Aktueller Downloadordner/-unterordner: 
::    echo   ¦     -^> %dl_folder%
::    echo   ¦
    echo   ¦
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo.
    %color_echo%   #  {07}Geben Sie nun die {0B}URL{07} oder {0B}Nummer{07} der Webseite ein, auf welcher das Comic vorgestellt wird und bestätigen Sie diese mit Enter:{#}{\n}
    %color_echo%         - {08}Sie können die URL der Webseite aus der Adressleiste/-zeile des Browsers kopieren und hier mit [strg] + [V] einfühen{#}{\n}
    %color_echo%          - {08}Beispiel: https://imhentai.xxx/gallery/598258/   oder   https://imhentai.xxx/gallery/000258/{#}{\n}
    %color_echo%          - {08}Beispiel: 598258 oder 000237{#}{\n}
    %color_echo%         # {07}URL mit Enter bestätigen: {#}{\n}
    echo.
    set /p "main-url_input=------> URL: "
    
    ::Entferne Sonderzeichen aus dem eingegebenen String
    set "main-url_input=%main-url_input:h=%"
    set "main-url_input=%main-url_input:t=%"
    set "main-url_input=%main-url_input:p=%"
    set "main-url_input=%main-url_input:s=%"
    set "main-url_input=%main-url_input::=%"
    set "main-url_input=%main-url_input:/=%"
    set "main-url_input=%main-url_input:i=%"
    set "main-url_input=%main-url_input:m=%"
    set "main-url_input=%main-url_input:e=%"
    set "main-url_input=%main-url_input:n=%"
    set "main-url_input=%main-url_input:t=%"
    set "main-url_input=%main-url_input:a=%"
    set "main-url_input=%main-url_input:.=%"
    set "main-url_input=%main-url_input:x=%"
    set "main-url_input=%main-url_input:g=%"
    set "main-url_input=%main-url_input:l=%"
    set "main-url_input=%main-url_input:r=%"
    set "main-url_input=%main-url_input:y=%"
    set "main-url_num=%main-url_input: =%"
    
::######################################################################################################################################
    ::Prüfung ob die ermittelte Comic ID 6 Stellen hat (Code-part by https://www.geeksforgeeks.org/batch-script-string-length/)
        set str=%main-url_num%
        call :strLen str strlen
        ::echo String is %strlen% characters long
        ::pause
        ::exit /b
        goto weiter

        :strLen
        setlocal enabledelayedexpansion

        :strLen_Loop
           if not "!%1:~%len%!"=="" set /A len+=1 & goto :strLen_Loop
        (endlocal & set %2=%len%)
        goto :eof
::######################################################################################################################################

:weiter
    SET /a "strlen=%strlen%"
        ::echo %strlen%


::Wenn strlen kleiner 6, vervollständige String (Support der alten Seiten)
    if %strlen% EQU 5 set "main-url_num=0%main-url_num%"
    if %strlen% EQU 4 set "main-url_num=00%main-url_num%"
    if %strlen% EQU 3 set "main-url_num=000%main-url_num%"
    if %strlen% EQU 2 set "main-url_num=0000%main-url_num%"
    if %strlen% EQU 1 set "main-url_num=00000%main-url_num%"
    
    
    ::######################################################################################################################################
    ::Prüfung ob die ermittelte Comic ID 6 Stellen hat (Code-part by https://www.geeksforgeeks.org/batch-script-string-length/)
        set str=%main-url_num%
        call :strLen str strlen
        ::echo String is %strlen% characters long
        ::pause
        ::exit /b
        goto weiter

        :strLen
        setlocal enabledelayedexpansion

        :strLen_Loop
           if not "!%1:~%len%!"=="" set /A len+=1 & goto :strLen_Loop
        (endlocal & set %2=%len%)
        goto :eof
::######################################################################################################################################

:weiter
    SET /a "strlen=%strlen%"
        ::echo %strlen%
    
    
    ::+Prüfung ob die ermittelte Comic ID im gesuchten Bereich liegt
    set /a "main_url_temp=%main-url_num%"
        ::echo %main_url_temp%
        ::pause
    
    if %strlen% EQU 6 if %main_url_temp% GEQ 1 if %main_url_temp% LEQ 999999 goto weiter
    echo.
    echo.
    echo.
    color 0c
    echo Die angegebene URL entspricht nicht den Bedingungen!
    echo Bitte versuchen Sie eine andere URL.
    pause
    goto main-url_input
    
    
:weiter
    echo.
    echo.
    echo.
    echo Die angegebene URL entspricht den Bedingungen! Der Forgang wird fortgesetzt.
    set "main-url=https://imhentai.xxx/gallery/%main-url_num%/"
        choice /N /C 123 /T 1 /D 1 >NUL
    ::aktiviere äöü
    
    
    
    
    
