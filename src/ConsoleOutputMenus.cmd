REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (
  SET "STARTED_CORRECTLY=0"
) ELSE (
  SET "STARTED_CORRECTLY=%1"
)
IF %STARTED_CORRECTLY%==0 (CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO ConsoleOutputMenus load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T 3 /D 1 >NUL

REM display in the console
REM Anzeige in der Konsole
GOTO %outputMenu%
:OutputMenuCountrycode
    REM IF "%DEBUG%"=="DebugON" (ECHO. & ECHO. & ECHO Debug: ConsoleOutputMenus.cmd is found & ECHO. & ECHO.) else (CLS)
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
    %colorEcho%   #  {07}en: Choose a Countrycode. Than klick [Enter]{#}{\n}
    %colorEcho%   #  {07}de: Wählen Sie einen Ländercode. Dann bestätigen Sie mit [Enter]{#}{\n}
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
EXIT /B
::äöü Aktivieren https://www.laenderdaten.info/laendercodes.php
