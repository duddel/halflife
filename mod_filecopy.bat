@echo off

REM This script is called as a post-build event in VS and
REM copies the binaries (.dll) to the half-life installation.

REM Adjust mod_dir to your half-life installation + mod subdir
set mod_dir=E:\SteamLibrary\steamapps\common\Half-Life\hllab\

xcopy %1 %mod_dir%%2% /Y
