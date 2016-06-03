@echo off
@ECHO.   ======================================
@ECHO.
@ECHO.              0 ��̬IP����
@ECHO.              1 ��̬IP����
@ECHO.
@ECHO.   ======================================
set /p input=����IP����������0��1��
if %input% == 0 goto Static
if %input% == 1 goto Dynamic
pause
exit

:Static
title Static IP
echo ��̬IP�����У����Ժ�...
set name=��������
set IP=192.168.8.131
set mask=255.255.255.0
set gw=192.168.8.254
set dns=202.96.128.166
set dns2=202.96.134.133
netsh interface ip set address name="%name%" source=static addr=%IP% mask=%mask% gateway=%gw% gwmetric=1
netsh interface ip set dns name="%name%" source=static addr=%dns% register=primary
netsh interface ip add dns name="%name%" addr=%dns2%
netsh interface ip set wins name="%name%" source=static addr=none
echo ��̬IP�������
pause
exit

:Dynamic
title Dynamic IP
echo ��̬IP�����У����Ժ�...
set name=��������
netsh interface ip set address name="%name%" dhcp
netsh interface ip set dns name="%name%" dhcp
echo ��̬IP�������
pause
exit