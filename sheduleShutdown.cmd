@echo off

:menu
rem 当前时间
echo 现在时间是%time:~0,2%:%time:~3,2%
echo 【1】定时关机   【2】取消关机   【3】退出&echo.
set /p yn=请输入选择后回车确认：
if /i "%yn%"=="1" goto dsgj
if /i "%yn%"=="2" goto qxgj
if /i "%yn%"=="3" exit
echo 您输入的有误，请查询输入。&ping 0 -n "2">nul&cls&goto menu

:dsgj
rem 关机时间
set /p endTime=请输入关机时间（例17:30）:
echo 关机时间为%endTime%

rem 时间间隔
set /a endTimeS=%endTime:~0,2%*3600+%endTime:~3,2%*60
set /a startTimeS=%time:~0,2%*3600+%time:~3,2%*60+%time:~6,2%
set /a diffTtime=%endTimeS%-%startTimeS%
echo 间隔%diffTtime%秒

rem 执行命令
shutdown -s -t %diffTtime%
exit

:qxgj
shutdown -a
exit