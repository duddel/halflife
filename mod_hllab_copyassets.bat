@echo off

REM This script copies the mod assets to the half-life installation.


REM Adjust mod_dir to your half-life installation + mod subdir
REM Example: E:\SteamLibrary\steamapps\common\Half-Life\hllab\
@REM set mod_dir=E:\SteamLibrary\steamapps\common\Half-Life\hllab\
set mod_dir=_deploy\hllab\

xcopy hllab_assets\* %mod_dir% /Y /e
