REM =============================================================
REM Batch file to display Date and Time seprated by undescore.
REM =============================================================
REM Read the system date.
REM =============================================================
    SET MyDate=%DATE%
    SET MyDate=%MyDate:/=:%
    SET MyDate=%MyDate:-=:%
    SET MyDate=%MyDate: =:%
    SET MyDate=%MyDate:\=:%
    SET MyDate=%MyDate::=_%
REM =============================================================
REM Read the system time.
REM =============================================================
    SET MyTime=%TIME%
    SET MyTime=%MyTime: =0%
    SET MyTime=%MyTime:.=:%
    SET MyTime=%MyTime::=.%
REM =============================================================
REM Build the DateTime string.
REM =============================================================
    SET xTime=%MyTime:~0,8%
    SET xTime=%xTime:.=:%
    SET xDate=%MyDate:~0,2%.%MyDate:~3,2%.%MyDate:~6,8%
    SET xDateRevers=%MyDate:~6,8%.%MyDate:~3,2%.%MyDate:~0,2%
    SET xTimeDate=%xTime%-%xDate%
    SET xDateRTime=%MyDate:~6,8%.%MyDate:~3,2%.%MyDate:~0,2%-%MyTime:~0,8%
