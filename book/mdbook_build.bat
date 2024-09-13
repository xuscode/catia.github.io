
cd /d %~dp0

mdbook build
rem mdbook serve


xcopy /s /e /c /y /h /r /d C:\Tmp\CATIA_PLUGINS\book\*.* C:\Tmp\catia.github.io\docs\

cd C:\Tmp\catia.github.io

git add .
git commit -m "%date%"
git push
