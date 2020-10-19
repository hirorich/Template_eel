echo off

rem ディレクトリ移動
cd %~dp0

rem アイコン作成
magick ./icon_512x512.png -define icon:auto-resize ./icon.ico
copy /Y .\icon.ico ..\web\
