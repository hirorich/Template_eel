echo off

REM �ݒ�t�@�C�������݂��邩�m�F����
if not exist %1 (
    echo ERROR: Not found %1
    exit /b 1
)

REM �ݒ�t�@�C����ǂݍ���
for /f "usebackq tokens=1,* delims==" %%a in ("%1") do (
    set %%a=%%b
)

exit /b 0
