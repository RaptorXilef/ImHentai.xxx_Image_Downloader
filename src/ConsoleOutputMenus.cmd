REM display in the console
REM Anzeige in der Konsole
GOTO %outputMenu%
:OutputMenuCountrycode
    IF "%DEBUG%"=="DebugON" (ECHO. & ECHO. & ECHO Debug: ConsoleOutputMenus.cmd is found & ECHO. & ECHO.) else (CLS)
    %colorEcho%    # {0B}Choose Language / Sprache wählen{#} # {\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}Countrycodes{#}{\n}
    %colorEcho%   ^>  {07}============{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>    {02}English =^> en (not available yet){#}{\n}
    %colorEcho%   ^>    {02}Deutsch =^> de{#}{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    ECHO.
    %colorEcho%   #  {07}Choose a Countrycode? Than klick [Enter]{#}{\n}
    ECHO.
    GOTO BackToMainCode

:OutputMenuSavePath
    IF "%DEBUG%"=="DebugON" (ECHO. & ECHO. & ECHO Debug: ConsoleOutputMenus.cmd is found & ECHO. & ECHO.) else (CLS)
    %colorEcho%    # {0B}%outputMenuSavePath_header%{#} # {\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}%outputMenuSavePath_headline1%{#}{\n}
    %colorEcho%   ^>  {07}%outputMenuSavePath_headline2%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>    {0f}%outputMenuSavePath_body1%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>      {07}%outputMenuSavePath_body2%{#}{\n}
    %colorEcho%   ^>        {08}%outputMenuSavePath_body3%{#}{\n}
    %colorEcho%   ^>        {08}%outputMenuSavePath_body4%{#}{\n}
    %colorEcho%   ^>        {08}%outputMenuSavePath_body5%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>      {07}%outputMenuSavePath_body6%{#}{\n}
    %colorEcho%   ^>        {08}%outputMenuSavePath_body7%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>      {07}%outputMenuSavePath_body8%{#}{\n}
    %colorEcho%   ^>        {08}%outputMenuSavePath_body9%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    ECHO.
    ECHO   #  %outputMenuSavePath_footer%
    ECHO.
    GOTO BackToMainCode

:OutputMenuMainUrl
    IF "%DEBUG%"=="DebugON" (ECHO. & ECHO. & ECHO Debug: ConsoleOutputMenus.cmd is found & ECHO. & ECHO.) else (CLS)
    ECHO.
    %colorEcho%    # {0B}%outputMenuMainUrl_header%{#} # {\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}%outputMenuMainUrl_headline1%{#}{\n}
    %colorEcho%   ^>  {07}%outputMenuMainUrl_headline2%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>    {02}%outputMenuMainUrl_body1%{#}{\n}
    %colorEcho%   ^>     {07}-^> %savePath%{#}\*{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    %colorEcho%   #  {07}%outputMenuMainUrl_body2% {0B}%outputMenuMainUrl_body3%{07} %outputMenuMainUrl_body4% {0B}%outputMenuMainUrl_body5%{07} %outputMenuMainUrl_body6%:{#}{\n}
    %colorEcho%         - {08}%outputMenuMainUrl_body7%{#}{\n}
    %colorEcho%          - {08}%outputMenuMainUrl_body8%: https://imhentai.xxx/gallery/598258/   %outputMenuMainUrl_body4%   https://imhentai.xxx/gallery/000258/{#}{\n}
    %colorEcho%          - {08}%outputMenuMainUrl_body8%: 598258, 397 %outputMenuMainUrl_body4% 000237{#}{\n}
    %colorEcho%         # {07}%outputMenuMainUrl_footer%: {#}{\n}
    ECHO.
    GOTO BackToMainCode
















































































:BackToMainCode
::äöü Aktivieren https://www.laenderdaten.info/laendercodes.php
