echo off

rem �f�B���N�g���ړ�
cd %~dp0

rem �A�C�R���쐬
magick ./icon_512x512.png -define icon:auto-resize ./icon.ico
copy /Y .\icon.ico ..\web\
