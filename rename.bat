@echo off&setlocal EnableDelayedExpansion 
@echo hello
set a=1 
for /f "delims=" %%i in ('dir /b *.jpg') do ( 
if not "%%~ni"=="%~n0" ( 
rename "%%i" "!a!.jpg" 
set/a a+=1 
) 
)
pause