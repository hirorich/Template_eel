echo off

rem �f�B���N�g���ړ�
cd %~dp0
cd ..\

rem env�t�@�C���ǂݍ���
call env\loadenv.bat env\python.env
call conda activate %env%

rem ���s
if exist ".\db\cmn_db.sqlite3" del ".\db\cmn_db.sqlite3"
sqlite3 ./db/cmn_db.sqlite3 < ./db/create_tb_message.sql

pause
