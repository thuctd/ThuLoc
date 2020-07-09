echo %date:~6,4%%date:~3,2%%date:~0,2%_%time%
call git pull origin master
call git add *
call git commit -m %date:~6,4%%date:~3,2%%date:~0,2%_%time%
call git push origin master -f
PAUSE
