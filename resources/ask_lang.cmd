:lang
    color 0a
    cls
    echo    Language / Sprache w�hlen
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo   �
    echo   �  Language ^| Sprache
    echo   �  ===================
    echo   �    
    echo   �  [en] [de]
    echo   �    
    echo   �    eg. -^> en (noch nicht verf�gbar / not available yet)
    echo   �    zB. -^> de
    echo   �    
    echo   �    
    echo   +-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
    echo.
    echo.
    echo   #  Lang -^> [Enter]
    echo.
    set /p "lang=------> Lang: "
        if "%lang%"=="de" goto weiter
        if "%lang%"=="en" goto weiter
        goto lang
:weiter
::��� Aktivieren