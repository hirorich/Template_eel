echo off

rem �f�B���N�g���ړ�
cd %~dp0

rem env�t�@�C���ǂݍ���
call env\loadenv.bat env\python.env
call conda activate %env%

rem ���s
python main.py

rem pause
