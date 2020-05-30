

@ECHO OFF
@echo Started: %date% %time%
.
.
.
@echo Completed: %date% %time%


call git config --global user.email "thucspc@gmail.com"
call git config --global user.name "ThucTran"
call git pull origin master
call git add .
call git commit -am %mydate%_%mytime%
PAUSE
call git push origin master -f
PAUSE
