@ECHO OFF
title 夜悠服务器  MCPC~1.7.10
SET BINDIR=%~dp0
:_MENU
CLS
set tm1=%time:~0,2%
set tm2=%time:~3,2%
set tm3=%time:~6,2%
echo               现在是%date% %tm1%点%TM2%分
@echo *****************************************************************
@echo.                            欢迎使用！                                                                      
@echo.                夜悠服务器  MCPC~1.5.2     
@echo.
@echo.                     谢谢使用~~              
@echo.
@echo *****************************************************************
pause
cls
echo               现在是%date% %tm1%点%TM2%分
@echo ***************************************************************** 
@echo. 
@echo. 
@echo.                   正在启动,请稍候........ 
@echo. 
@echo.
@echo *****************************************************************
"Java" -Xincgc -Xmx1G -jar "%BINDIR%\cauldron-1.7.10-1.1207.01.187-server.jar"
@echo ***************************************************************** 
@echo.                            谢谢使用！                                
@echo *****************************************************************
pause
EXIT