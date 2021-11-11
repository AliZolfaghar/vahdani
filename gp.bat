@echo off 
IF [%1] == [] GOTO HELP
git add . 
git commit -m %1
git push 

echo 
echo DONE ;) 
GOTO END 


:HELP
echo use script as : 
echo gp "Commit Message"

:END