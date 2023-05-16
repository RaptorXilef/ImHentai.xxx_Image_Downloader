REM Check whether the programme was started via Start.cmd, if not, start it automatically via Start.cmd.
REM Prüfe ob Programm über Start.cmd gestartet wurde, wenn nicht starte es automatisch über Start.cmd.
IF "%~1"=="" (SET "STARTED_CORRECTLY=0") ELSE (SET "STARTED_CORRECTLY=%1")
IF %STARTED_CORRECTLY%==0 (CD.. && START start.cmd && ECHO Restart! & Exit)
IF %STARTED_CORRECTLY%==1 (IF "%DEBUG%"=="DebugON" CLS & ECHO. & ECHO DEBUG-Info: ConsoleOutputMenus.cmd load successful! & ECHO.)
IF "%DEBUG%"=="DebugON" CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL
REM ############################################################################
::goto ggg
REM display in the console
REM Anzeige in der Konsole
IF "%DEBUG%"=="DebugON" ( ECHO Debug-Info: Var-outputMenu=%outputMenu% & CHOICE /N /C 123 /T %DEBUGTIME% /D 1 >NUL )
GOTO %outputMenu%
:OutputMenuCountrycode
    %colorEcho%    # {0B}Choose Language / Sprache wählen{#} # {\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}Countrycodes{#}{\n}
    %colorEcho%   ^>  {07}============{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>    {02}English =^> en{#}{\n}
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
    %colorEcho%    # {0B}%lang_ConsoleOutputMenus_OutputMenuSavePath_header%{#} # {\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}%lang_ConsoleOutputMenus_OutputMenuSavePath_headline1%{#}{\n}
    %colorEcho%   ^>  {07}%lang_ConsoleOutputMenus_OutputMenuSavePath_headline2%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>    {0f}%lang_ConsoleOutputMenus_OutputMenuSavePath_body1%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>      {07}%lang_ConsoleOutputMenus_OutputMenuSavePath_body2%{#}{\n}
    %colorEcho%   ^>        {08}%lang_ConsoleOutputMenus_OutputMenuSavePath_body3%{#}{\n}
    %colorEcho%   ^>        {08}%lang_ConsoleOutputMenus_OutputMenuSavePath_body4%{#}{\n}
    %colorEcho%   ^>        {08}%lang_ConsoleOutputMenus_OutputMenuSavePath_body5%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>      {07}%lang_ConsoleOutputMenus_OutputMenuSavePath_body6%{#}{\n}
    %colorEcho%   ^>        {08}%lang_ConsoleOutputMenus_OutputMenuSavePath_body7%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>      {07}%lang_ConsoleOutputMenus_OutputMenuSavePath_body8%{#}{\n}
    %colorEcho%   ^>        {08}%lang_ConsoleOutputMenus_OutputMenuSavePath_body9%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    ECHO.
    ECHO   #  %lang_ConsoleOutputMenus_OutputMenuSavePath_footer%
    ECHO.
    GOTO BackToMainCode

:OutputMenuMainUrl
    ECHO.
    %colorEcho%    # {0B}%lang_ConsoleOutputMenus_OutputMenueMainUrl_header%{#} # {\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}%lang_ConsoleOutputMenus_OutputMenueMainUrl_headline1%{#}{\n}
    %colorEcho%   ^>  {07}%lang_ConsoleOutputMenus_OutputMenueMainUrl_headline2%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>    {02}%lang_ConsoleOutputMenus_OutputMenueMainUrl_body1%:{#}{\n}
    %colorEcho%   ^>     {07}-^> %savePath%{#}\*{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    %colorEcho%   #  {07}%lang_ConsoleOutputMenus_OutputMenueMainUrl_body2% {0B}%lang_ConsoleOutputMenus_OutputMenueMainUrl_body3%{07} %lang_ConsoleOutputMenus_OutputMenueMainUrl_body4% {0B}%lang_ConsoleOutputMenus_OutputMenueMainUrl_body5%{07} %lang_ConsoleOutputMenus_OutputMenueMainUrl_body6%:{#}{\n}
    %colorEcho%         - {08}%lang_ConsoleOutputMenus_OutputMenueMainUrl_body7%{#}{\n}
    %colorEcho%          - {08}%lang_ConsoleOutputMenus_OutputMenueMainUrl_body8%: https://imhentai.xxx/gallery/598258/   %lang_ConsoleOutputMenus_OutputMenueMainUrl_body4%   https://imhentai.xxx/gallery/000258/{#}{\n}
    %colorEcho%          - {08}%lang_ConsoleOutputMenus_OutputMenueMainUrl_body8%: 598258, 397 %lang_ConsoleOutputMenus_OutputMenueMainUrl_body4% 000237{#}{\n}
    %colorEcho%         # {07}%lang_ConsoleOutputMenus_OutputMenueMainUrl_footer%: {#}{\n}
    ECHO.
    GOTO BackToMainCode

:OutputMenuDownloadFolderInput
    %colorEcho%    # {0B}%lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_header%{#}{\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>  {0A}  %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_headline1%{#}{\n}
    %colorEcho%   ^>  {07}  %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_headline2%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>  {0A}  %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body1% {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body2%{#}{\n}
    %colorEcho%   ^>  {07}  --------^|----------------------{#}{\n}
    %colorEcho%   ^>  {0A}     d    {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var1%{#}{\n}
    %colorEcho%   ^>  {0A}     a    {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var2%{#}{\n}
    %colorEcho%   ^>  {0A}     dr   {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var3%{#}{\n}
    %colorEcho%   ^>  {0A}     f    {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var4%{#}{\n}
    %colorEcho%   ^>  {0A}     c    {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var5%{#}{\n}
    %colorEcho%   ^>  {0A}     h    {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var6%{#}{\n}
    %colorEcho%   ^>  {0A}     hc   {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var7%{#}{\n}
    %colorEcho%   ^>  {0A}     k    {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var8%{#}{\n}
    %colorEcho%   ^>  {0A}     p    {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var9%{#}{\n}
    %colorEcho%   ^>  {0A}     di   {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var10%{#}{\n}
    %colorEcho%   ^>  {0A}     s    {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var11%{#}{\n}
    %colorEcho%   ^>  {0A}     z    {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var12%{#}{\n}
    %colorEcho%   ^>  {0A}     an   {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var13%{#}{\n}
    %colorEcho%   ^>  {0A}     de   {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var14%{#}{\n}
    %colorEcho%   ^>  {0A}    mlp   {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var15%{#}{\n}
    %colorEcho%   ^>  {0A}    pic   {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var16%{#}{\n}
    %colorEcho%   ^>  {0A}     tk   {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var17%{#}{\n}
    %colorEcho%   ^>  {0A}    tlk   {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var18%{#}{\n}
    %colorEcho%   ^>  {0A}     o    {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var19%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>  {0A}    sfw   {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var20%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>  {0A}     f    {07}^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_Var21%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>  {08}          ^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body3%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>  {08}     i    ^| %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body4%{#}{\n}
    %colorEcho%   ^>  {08}     e    ^| Exit / %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_body5%{#}{\n}
    ECHO   +=======================================================================================================================================================================
    ECHO.
    %colorEcho%  {07} #  %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_1%{#}{\n}
    %colorEcho%  {08}       - %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_2%{#}{\n}
    %colorEcho%  {07}       # %lang_ConsoleOutputMenus_OutputMenuDownloadFolderInput_footer_3%{#}{\n}
    ECHO.
    GOTO BackToMainCode

:OutputMenuPageCountInput
    %colorEcho%    # {0B}%lang_ConsoleOutputMenus_OutputMenuPageCountInput_header%{#}{\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>{0A}  %lang_ConsoleOutputMenus_OutputMenuPageCountInput_headline1%{#}{\n}
    %colorEcho%   ^>{07}  %lang_ConsoleOutputMenus_OutputMenuPageCountInput_headline2%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body1%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %savePath%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body2%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %downloadFolder%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body3%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %comicId%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body4%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %mainUrl%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body5%: %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body6%{#}{\n}
    %colorEcho%   ^>{08}     -^> %imageDownloadFolderURL%*.*{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{02}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body7%: {07}%lang_ConsoleOutputMenus_OutputMenuPageCountInput_body6%{#}{\n}
    %colorEcho%   ^>{0A}     *-^> %pageCountInput%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    %colorEcho% {07}  #  %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body8%:{#}{\n}
    %colorEcho% {08}        - %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body9%{#}{\n}
    %colorEcho% {07}        # %lang_ConsoleOutputMenus_OutputMenuPageCountInput_footer%:{#}{\n}
    ECHO.
    GOTO BackToMainCode

:OutputMenuPageCountInputRenew
    %colorEcho% {05} %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_top1%{#}{\n}
    %colorEcho% {0B} %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_top2%{#}{\n}
    %colorEcho% {0B}  %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_top3%:{#}{\n}
    %colorEcho% {05} %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_top1%{#}{\n}
    ECHO.
    %colorEcho%    # {0B}%lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_header%{#}{\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>{0A}  %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_headline1% = {0B}"%lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_db%->"{#}{\n}
    %colorEcho%   ^>{07}  %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_headline2%{#}{\n}
    %colorEcho%   ^>{07}  %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_headline3%: {0E}"%lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_new%->"{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body1%:{#}{\n}
    %colorEcho%   ^>{0B}     %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_db%{08}-^> %savePathRenew%{#}{\n}
    %colorEcho%   ^>  ^*{0E}  %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_new%{08}-^> %savePathRenew%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body2%:{#}{\n}
    %colorEcho%   ^>{0B}     %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_db%{08}-^> %downloadFolderRenew%{#}{\n}
    %colorEcho%   ^>  ^*{0E}  %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_new%{08}-^> %downloadFolder%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body5%:{#}{\n}
    %colorEcho%   ^>  ^*{0B}  %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_db%{08}-^> %comicNameRenew%{#}{\n}
    ECHO   ^>
SET /a "pages_start=%pageCountInputRenew%+1"
SET /a "pages_count=%pageCountInput%-%pageCountInputRenew%"
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body6% %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body7%:{#}{\n}
    %colorEcho%   ^>{0B}     %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_db%{08} -^> %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_page% 1 - %pageCountInputRenew% (%pageCountInputRenew% %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_pages%){#}{\n}
    %colorEcho%   ^>  ^*{0E}  %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_new%{0A}-^> %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_page% %pages_start% - %pageCountInput% (=%pages_count% %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_pages%){#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>{08}        ^*%lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body8%{#}{\n}
    %colorEcho%   ^>{08}        ^*%lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body9% {0E}^* {08}%lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body10%{#}{\n}
    %colorEcho%   ^>{08}          %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body11%{#}{\n}
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    %colorEcho% {07}  #  %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body12%:{#}{\n}
    %colorEcho% {08}        - %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body13% "{0E}%pageCountInputRenew%{08}".{#}{\n}
    %colorEcho% {08}        - %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_body14%{#}{\n}
    %colorEcho% {07}        # %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_footer%:{#}{\n}
    ECHO.
    GOTO BackToMainCode

:OutputMenuComicNameInput
    %colorEcho%    # {0B}%lang_ConsoleOutputMenus_OutputMenuComicNameInput_header%{#}{\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>{0A}  %lang_ConsoleOutputMenus_OutputMenuPageCountInput_headline1%{#}{\n}
    %colorEcho%   ^>{07}  %lang_ConsoleOutputMenus_OutputMenuPageCountInput_headline2%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body1%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %savePath%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body2%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %downloadFolder%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body3%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %comicId%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body4%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %mainUrl%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body5%: %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body6%{#}{\n}
    %colorEcho%   ^>{08}     -^> %imageDownloadFolderURL%*.*{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body7%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %pages%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuComicNameInput_body8%{#}{\n}
    %colorEcho%   ^>{0A}     ^*-^> 1 = %comicNameInput%{#}{\n}
    %colorEcho%   ^>{0A}     ^*-^> 2 = %comicNameInput% (%languageInput%){#}{\n}
    %colorEcho%   ^>{0A}     ^*-^> 3 = [%artistInput%] %comicNameInput%{#}{\n}
    %colorEcho%   ^>{0A}     ^*-^> 4 = [%artistInput%] %comicNameInput% (%languageInput%){#}{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   ^>
  IF "%DEBUG%"=="DebugON" (ECHO DEBUG-Info: & CHCP 1252) else (CHCP 1252>nul)
    %colorEcho%   ^>{08}         # %lang_ConsoleOutputMenus_OutputMenuComicNameInput_body9%{#}{\n}
    %colorEcho%   ^>{08}            %lang_ConsoleOutputMenus_OutputMenuComicNameInput_body10%{#}{\n}
    %colorEcho%   ^>{08}            %lang_ConsoleOutputMenus_OutputMenuComicNameInput_body11%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}            # %lang_ConsoleOutputMenus_OutputMenuComicNameInput_body12%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    ECHO   +=======================================================================================================================================================================
    ECHO.
    %colorEcho% {07}  #  %lang_ConsoleOutputMenus_OutputMenuComicNameInput_body13%:{#}{\n}
    %colorEcho% {08}        - %lang_ConsoleOutputMenus_OutputMenuComicNameInput_body14%{#}{\n}
    %colorEcho% {08}        - %lang_ConsoleOutputMenus_OutputMenuComicNameInput_body15%{#}{\n}
    %colorEcho% {08}        - %lang_ConsoleOutputMenus_OutputMenuComicNameInput_body16%{#}{\n}
    %colorEcho% {08}        ^* %lang_ConsoleOutputMenus_OutputMenuComicNameInput_body17%{#}{\n}
    %colorEcho% {07}        # %lang_ConsoleOutputMenus_OutputMenuPageCountInput_footer%:{#}{\n}
    ECHO.
    GOTO BackToMainCode

:OutputMenuRllRightInput
    %colorEcho%    # {0B}%lang_ConsoleOutputMenus_OutputMenuRllRightInput_header%{#}{\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>{0A}  %lang_ConsoleOutputMenus_OutputMenuPageCountInput_headline1%{#}{\n}
    %colorEcho%   ^>{07}  %lang_ConsoleOutputMenus_OutputMenuPageCountInput_headline2%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body1%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %savePath%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body2%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %downloadFolder%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body3%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %comicId%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body4%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %mainUrl%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body5%: %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body6%{#}{\n}
    %colorEcho%   ^>{08}     -^> %imageDownloadFolderURL%*.*{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body7%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %pages%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuRllRightInput_body8%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %comicName%{#}{\n}
    ECHO   ^>
    ECHO   ^>
  IF "%DEBUG%"=="DebugON" (CHCP 1252) else (CHCP 1252>nul)
    %colorEcho%   ^>{0A}    j = %lang_ConsoleOutputMenus_OutputMenuRllRightInput_body9%.        {04} n = %lang_ConsoleOutputMenus_OutputMenuRllRightInput_body10%.{#}{\n}
    ECHO   +=======================================================================================================================================================================
    ECHO.
    %colorEcho% {07}  #  %lang_ConsoleOutputMenus_OutputMenuRllRightInput_body11%{#}{\n}
    %colorEcho% {08}        -  {0A} j {08}/ {04}n   {08} (%lang_ConsoleOutputMenus_OutputMenuRllRightInput_body12%){#}{\n}
    %colorEcho% {07}        # %lang_ConsoleOutputMenus_OutputMenuPageCountInput_footer%:{#}{\n}
    ECHO.
    GOTO BackToMainCode

:OutputMenuRllRightRenewInput
    %colorEcho%    # {0B}%lang_ConsoleOutputMenus_OutputMenuRllRightInput_header%{#}{\n}
    ECHO   +=======================================================================================================================================================================
    ECHO   ^>
    %colorEcho%   ^>{0A}  %lang_ConsoleOutputMenus_OutputMenuPageCountInput_headline1%{#}{\n}
    %colorEcho%   ^>{07}  %lang_ConsoleOutputMenus_OutputMenuPageCountInput_headline2%{#}{\n}
    ECHO   ^>
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body1%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %savePath%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body2%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %downloadFolder%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body3%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %comicId%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body4%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %mainUrl%{#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body5%: %lang_ConsoleOutputMenus_OutputMenuPageCountInput_body6%{#}{\n}
    %colorEcho%   ^>{08}     -^> %imageDownloadFolderURL%*.*{#}{\n}
    ECHO   ^>
::    ECHO   ^>    Seitenanzahl:
::    ECHO   ^>     -^> %pages%
::    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuRllRightRenewInput_body13%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_page% %pages_start% - %pageCountInput% (=%pages_count% %lang_ConsoleOutputMenus_OutputMenuPageCountInputRenew_pages%){#}{\n}
    ECHO   ^>
    %colorEcho%   ^>{07}    %lang_ConsoleOutputMenus_OutputMenuRllRightInput_body8%:{#}{\n}
    %colorEcho%   ^>{08}     -^> %comicName%{#}{\n}
    ECHO   ^>
    ECHO   ^>
  IF "%DEBUG%"=="DebugON" (CHCP 1252) else (CHCP 1252>nul)
    %colorEcho%   ^>{0A}    j = %lang_ConsoleOutputMenus_OutputMenuRllRightInput_body9%.        {04} n = %lang_ConsoleOutputMenus_OutputMenuRllRightInput_body10%.{#}{\n}
    ECHO   +=======================================================================================================================================================================
    ECHO.
    %colorEcho% {07}  #  %lang_ConsoleOutputMenus_OutputMenuRllRightInput_body11%{#}{\n}
    %colorEcho% {08}        -  {0A} j {08}/ {04}n   {08} (%lang_ConsoleOutputMenus_OutputMenuRllRightInput_body12%){#}{\n}
    %colorEcho% {07}        # %lang_ConsoleOutputMenus_OutputMenuPageCountInput_footer%:{#}{\n}
    ECHO.
    GOTO BackToMainCode

:BackToMainCode
EXIT /B
::äöü Aktivieren https://www.laenderdaten.info/laendercodes.php

::ECHO. & PAUSE & CALL src\translations\de.cmd 1 & CLS & Goto ggg
