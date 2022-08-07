REM display in the console
REM Anzeige in der Konsole
GOTO %outputMenue%
:OutputMenueCountrycode
    CLS
    %colorEcho%    # {0B}Choose Language / Sprache wählen{#} # {\n}
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



















































































:BackToMainCode
::äöü Aktivieren https://www.laenderdaten.info/laendercodes.php
