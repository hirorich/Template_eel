echo off

rem �f�B���N�g���ړ�
cd %~dp0

rem env�t�@�C���ǂݍ���
call env\loadenv.bat env\python.env
call conda activate %env%

rem �R���p�C��
python -m eel ./main.py web --clean --onefile --noconsole --name="Template_eel" --icon="./icon/icon.ico" --hidden-import plyer.platforms.win.notification --add-data "./env/property.json;./env" --add-data "./db/cmn_db.sqlite3;./db" --add-data "./icon/icon.ico;./icon"

rem pause
