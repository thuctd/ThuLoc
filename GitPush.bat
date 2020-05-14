

@ECHO OFF
: Sets the proper date and time stamp with 24Hr Time for log file naming
: convention

SET HOUR=%time:~0,2%
SET dtStamp9=%date:~-4%%date:~4,2%%date:~7,2%_0%time:~1,1%%time:~3,2%%time:~6,2% 
SET dtStamp24=%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%

if "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) else (SET dtStamp=%dtStamp24%)

ECHO %dtStamp%




call git config --global user.email "thucspc@gmail.com"
call git config --global user.name "ThucTran"
call git pull origin master
call git add .
call git commit -am %dtStamp%
PAUSE
call git push origin master

