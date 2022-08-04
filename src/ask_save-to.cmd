:save-to
    color 0a
    cls
    echo    Speicherort wählen
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo   ¦
    echo   ¦  %lang_asksaveto_001%
    echo   ¦  %lang_asksaveto_002%
    echo   ¦    
    echo   ¦    %lang_asksaveto_003%
    echo   ¦    
    echo   ¦    %lang_asksaveto_004%
    echo   ¦      %lang_asksaveto_005%
    echo   ¦      %lang_asksaveto_006%
    echo   ¦      %lang_asksaveto_007%
    echo   ¦      
    echo   ¦      %lang_asksaveto_008%
    echo   ¦        %lang_asksaveto_009%
    echo   ¦    
    echo   ¦    %lang_asksaveto_010%
    echo   ¦      %lang_asksaveto_011%
    echo   ¦    
    echo   ¦    
    echo   ¦    
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo.
    echo.
    echo   #  %lang_asksaveto_011%
    echo.
    set "save-to=Comics"
    set /p "save-to=------> Speicherort: "

    ::aktiviere äöü