@echo off

REM This script is called as a post-build event in VS and
REM copies the binaries (.dll) to the half-life installation.

REM Adjust mod_dir to your half-life installation + mod subdir
REM Example: E:\SteamLibrary\steamapps\common\Half-Life\hllab\
set mod_dir=_deploy\hllab\

xcopy %1 %mod_dir%%2% /Y
