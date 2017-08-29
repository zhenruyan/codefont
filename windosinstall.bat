@echo off
set exs=*.otf *.ttf
cd/d "lib/"
for /r %%i in (%exs%) do (
  echo %%i
  xcopy/i "%%i" "c:/fonts">nul)
pause
