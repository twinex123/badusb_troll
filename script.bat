@echo off
color b
title Memory Corruption
mode con: cols=99 lines=10
for /F %%a in ('echo prompt $E ^| cmd') do set "esc=%%a"
setLocal enableDelayedExpansion
set array=AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789 !@#$%^&*()-=_+`~[]{}\|;':",./<>?-=,./
echo off
cls
ping 127.1 -n 4 >nul
:a
echo !esc![!random:~1,1!;!random:~1,1!!random:~1,1!H!esc![48;5;!random:~1,2!m!esc![35;5;!random:~1,2!m!array:~%random:~0,1%%random:~1,1%,1!!esc![0m
echo HACKED HACKED HACKED
goto a


X = Msgbox ("Message Here", 0 + 16, "Title Here")