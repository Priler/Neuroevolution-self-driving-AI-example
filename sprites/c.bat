@echo off
ping -n 2 127.0.0.1 > nul

echo this batch will convert ".png" using -strip option from ImageMagick.
echo please make sure you place a batch file in the right location.

ping -n 1 127.0.0.1 > nul

for %%i in (*.png) do identify %%i
for %%i in (*.png) do convert %%i -strip %%i
for %%i in (*.png) do identify %%i

echo finish..

ping -n 2 127.0.0.1 > nul
set /P user_input=Press any key to terminate...