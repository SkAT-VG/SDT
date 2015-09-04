rem CHANGE THE PATH BELOW ACCORDING TO YOUR LOCAL flext DIRECTORY
set FLEXTPATH=C:\flext_svn

@echo off
cls

echo.
echo ---------- Sound Design Toolkit (SDT) ----------
echo.
echo PLEASE WAIT while building the SDT externals for %1...
echo.
echo NOTICE: particles_sim~ can only be compiled for Max and using gcc
echo NOTICE: currently, mesh2D_static~ and mesh2D_dynamic~ must be compiled using gcc
echo.
pause

for %%i in (SDT_*.txt) do (%FLEXTPATH%\build.bat %1 %2 %3 "PKGINFO=%%i")
