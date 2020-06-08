
@ECHO OFF
@echo Started: %date% %time%


call git config --global user.email "thucspc@gmail.com"
call git config --global user.name "ThucTran"
call git pull origin master
call git add .
call git commit -am %date%_%time%
<<<<<<< HEAD
PAUSE
=======
>>>>>>> 010f163ed83f42ff6d3243b355c236fd88e8b474
call git push origin master -f
PAUSE
