:countrycode
    cls
    %colorEcho%    # {0B}Choose Language / Sprache wählen{#} # {\n}
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo   ¦
    %colorEcho%   ¦  {0A}Language ^| Sprache{#}{\n}
    %colorEcho%   ¦  {07}==================={#}{\n}
    echo   ¦
    %colorEcho%   ¦    {02}English = en (not available yet){#}{\n}
    %colorEcho%   ¦    {02}Deutsch = de{#}{\n}
    echo   ¦
    echo   ¦
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo.
    echo.
    %colorEcho%   #  {07}de or en? Than [Enter]{#}{\n}
    echo.
    set /p "countrycode=------> Countrycode: "
        IF "%countrycode%"=="de" goto continue
        IF "%countrycode%"=="en" goto continue
        goto countrycode
:continue
::äöü Aktivieren https://www.laenderdaten.info/laendercodes.php
