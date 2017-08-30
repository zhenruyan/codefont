color 0A
title fonts install Powered by freeidea
setlocal ENABLEEXTENSIONS
set exs=*.otf *.ttf
cd/d "lib"
for /r %%a in (%exs%) do (
dir %windir%\fonts\%%a>nul 2>nul||(copy %%a %windir%\fonts>nul 2>nul&rundll32.exe gdi32.dll,AddFontResourceA %windir%\fonts\%%a)
)

pause

