:: =============================================================
:: Batch file to display Date and Time seprated by undescore.
:: =============================================================
:: Read the system date.
:: =============================================================
    SET MyDate=%DATE%
    SET MyDate=%MyDate:/=:%
    SET MyDate=%MyDate:-=:%
    SET MyDate=%MyDate: =:%
    SET MyDate=%MyDate:\=:%
    SET MyDate=%MyDate::=_%
:: =============================================================
:: Read the system time.
:: =============================================================
    SET MyTime=%TIME%
    SET MyTime=%MyTime: =0%
    SET MyTime=%MyTime:.=:%
    SET MyTime=%MyTime::=.%
:: =============================================================
:: Build the DateTime string.
:: =============================================================
    SET xTime=%MyTime:~0,8%
    SET xTime=%xTime:.=:%
    SET xDate=%MyDate:~0,2%.%MyDate:~3,2%.%MyDate:~6,8%
    SET xDateRevers=%MyDate:~6,8%.%MyDate:~3,2%.%MyDate:~0,2%
    SET xTimeDate=%xTime%-%xDate%
    SET xDateRTime=%MyDate:~6,8%.%MyDate:~3,2%.%MyDate:~0,2%-%MyTime:~0,8%