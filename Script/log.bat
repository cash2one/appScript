@ECHO off&title log
CLS
@ECHO.
@ECHO.
@ECHO.   ==============Monkey����=============
@ECHO.  
@ECHO.       Log��ӡ�У��벻Ҫ�رձ�����...
@ECHO.
@ECHO.   =====================================

call adb logcat -c|adb logcat -v time>G:\log.txt
