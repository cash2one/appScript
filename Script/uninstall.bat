@echo off
if exist package.txt (
 
  rem �����ļ����� 
  for /f %%l in (package.txt) do ( 
    set /a num+=1 
    echo.&echo ж��"%%l"... 
    call adb uninstall %%l 
  ) 
) else ( 
  echo.&echo package.txt�����ڣ� 
) 
 
:end 
@echo.  ж����ɣ�
echo.&pause  
