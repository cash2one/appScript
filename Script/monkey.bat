@ECHO off&title monkey
@ECHO.
@ECHO.   Monkey����ǰ�����ȴ�log.bat�ļ�...
ECHO.&pause
CLS

@ECHO.
@ECHO.
@ECHO.   ==============Monkey����=============
@ECHO.  
@ECHO.       ��ʼ���ԣ��벻Ҫ�رձ�����...
@ECHO.
@ECHO.   =====================================
@ECHO.
set /p packagename=������APK������
set /p a=������Monkey���Դ�����
adb shell monkey -p org.coolx.htvlauncher -v %a%

for /f "tokens=2" %%i in (
  'tasklist/v^|find/i "cmd.exe"^|find/i /v "monkey"'
)do taskkill/pid %%i>nul 2>nul


@ECHO.   ==============���Խ���===============
@ECHO.   %errorlevel%
@ECHO.   Log�ļ���д��G��log.txt
ECHO.&pause


