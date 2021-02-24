@ECHO OFF
@echo Started: %date% %time%



call git pull origin master

PAUSE

set /p commit=Enter Commit: 
echo %commit%

call git add *

echo %date%_%commit%

call git commit -m %date%_%commit%
call git push origin master
PAUSE
