REM display in the console
REM Anzeige in der Konsole
GOTO %outputMenue%
:OutputMenueCountrycode
    CLS
    %colorEcho%    # {0B}Choose Language / Sprache w¦hlen{#} # {\n}
    ECHO   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ECHO   ¦
    %colorEcho%   ¦  {0A}Countrycodes{#}{\n}
    %colorEcho%   ¦  {07}============{#}{\n}
    ECHO   ¦
    %colorEcho%   ¦    {02}English =^> en (not available yet){#}{\n}
    %colorEcho%   ¦    {02}Deutsch =^> de{#}{\n}
    ECHO   ¦
    ECHO   ¦
    ECHO   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ECHO.
    ECHO.
    %colorEcho%   #  {07}Choose a Countrycode? Than klick [Enter]{#}{\n}
    ECHO.
    GOTO BackToMainCode

:OutputMenueSavePath
    CLS
    %colorEcho%    # {0B}%outputMenueSavePath_header%{#} # {\n}
    ECHO   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ECHO   ¦
    %colorEcho%   ¦  {0A}%outputMenueSavePath_headline1%{#}{\n}
    %colorEcho%   ¦  {07}%outputMenueSavePath_headline2%{#}{\n}
    ECHO   ¦
    %colorEcho%   ¦    {0f}%outputMenueSavePath_body1%{#}{\n}
    ECHO   ¦
    %colorEcho%   ¦      {07}%outputMenueSavePath_body2%{#}{\n}
    %colorEcho%   ¦        {08}%outputMenueSavePath_body3%{#}{\n}
    %colorEcho%   ¦        {08}%outputMenueSavePath_body4%{#}{\n}
    %colorEcho%   ¦        {08}%outputMenueSavePath_body5%{#}{\n}
    ECHO   ¦
    %colorEcho%   ¦      {07}%outputMenueSavePath_body6%{#}{\n}
    %colorEcho%   ¦        {08}%outputMenueSavePath_body7%{#}{\n}
    ECHO   ¦
    %colorEcho%   ¦      {07}%outputMenueSavePath_body8%{#}{\n}
    %colorEcho%   ¦        {08}%outputMenueSavePath_body9%{#}{\n}
    ECHO   ¦
    ECHO   ¦
    ECHO   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    ECHO.
    ECHO.
    ECHO   #  %outputMenueSavePath_footer%
    ECHO.
    GOTO BackToMainCode

:OutputMenueMainUrl
    cls
    echo.
    %colorEcho%    # {0B}Webseitenadresse / URL{#} # {\n}
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo   ¦
    %colorEcho%   ¦  {0A}Bisherige Eingaben{#}{\n}
    %colorEcho%   ¦  {07}=================={#}{\n}
    echo   ¦
    echo   ¦
    %colorEcho%   ¦    {02}Speichern unter: {#}{\n}
    %colorEcho%   ¦     {07}-^> %savePath%{#}\*{\n}
    echo   ¦
::    echo   ¦    Aktueller Downloadordner/-unterordner:
::    echo   ¦     -^> %dl_folder%
::    echo   ¦
    echo   ¦
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo.
    %colorEcho%   #  {07}Geben Sie nun die {0B}URL{07} oder {0B}Nummer{07} der Webseite ein, auf welcher das Comic vorgestellt wird und bestätigen Sie diese mit Enter:{#}{\n}
    %colorEcho%         - {08}Sie können die URL der Webseite aus der Adressleiste/-zeile des Browsers kopieren und hier mit [strg] + [V] einfühen{#}{\n}
    %colorEcho%          - {08}Beispiel: https://imhentai.xxx/gallery/598258/   oder   https://imhentai.xxx/gallery/000258/{#}{\n}
    %colorEcho%          - {08}Beispiel: 598258 oder 000237{#}{\n}
    %colorEcho%         # {07}URL mit Enter bestätigen: {#}{\n}
    echo.
    GOTO BackToMainCode
















































































:BackToMainCode
::¦¦¦ Aktivieren https://www.laenderdaten.info/laendercodes.php
