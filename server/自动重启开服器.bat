@echo off
Title Ò¹ÓÆ·þÎñÆ÷  MCPC~1.7.10

:MAIN
cls
java -Xms1024M -Xmx1024M -jar cauldron-1.7.10-1.1207.01.187-server.jar
if exist "plugins\RestartEvolution\restart.mcs" goto MAIN
if not exist "plugins\RestartEvolution\restart.mcs" goto END

:END
echo.
pause>nul
