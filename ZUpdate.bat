

@ECHO OFF
@For /F "tokens=2,3,4 delims=/ " %%A in ('Date /t') do @( 
    Set Month=%%A
    Set Day=%%B
    Set Year=%%C
)

@echo DAY = %Day%
@echo Month = %Month%
@echo Year = %Year%


call git config --global user.email "thucspc@gmail.com"
call git config --global user.name "ThucTran"
call git pull origin master
call git add .
call git commit -am %mydate%_%mytime%
PAUSE
call git push origin master -f
PAUSE
