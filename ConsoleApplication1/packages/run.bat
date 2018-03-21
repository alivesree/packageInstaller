@echo off 
start /wait packages\dotnetfx45_full_x86_x64.exe
start /wait packages\NDP45-KB2748645-x86.exe
if exist "%SYSTEMDRIVE%\Program Files (x86)\" (
   start /wait packages\sql64.msi
) else (
   start /wait packages\sql32.msi
)
start /wait packages\rp.msi