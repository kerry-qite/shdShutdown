@echo off

:menu
rem ��ǰʱ��
echo ����ʱ����%time:~0,2%:%time:~3,2%
echo ��1����ʱ�ػ�   ��2��ȡ���ػ�   ��3���˳�&echo.
set /p yn=������ѡ���س�ȷ�ϣ�
if /i "%yn%"=="1" goto dsgj
if /i "%yn%"=="2" goto qxgj
if /i "%yn%"=="3" exit
echo ��������������ѯ���롣&ping 0 -n "2">nul&cls&goto menu

:dsgj
rem �ػ�ʱ��
set /p endTime=������ػ�ʱ�䣨��17:30��:
echo �ػ�ʱ��Ϊ%endTime%

rem ʱ����
set /a endTimeS=%endTime:~0,2%*3600+%endTime:~3,2%*60
set /a startTimeS=%time:~0,2%*3600+%time:~3,2%*60+%time:~6,2%
set /a diffTtime=%endTimeS%-%startTimeS%
echo ���%diffTtime%��

rem ִ������
shutdown -s -t %diffTtime%
exit

:qxgj
shutdown -a
exit