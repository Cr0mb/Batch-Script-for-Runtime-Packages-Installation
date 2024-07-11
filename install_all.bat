@echo off
CD /d %~dp0

echo.
echo All-In-One Runtimes by GitHub.com/Cr0mb/
echo.
echo Installing runtime packages...

set IS_X64=0
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    set IS_X64=1
) else (
    if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (
        set IS_X64=1
    )
)

if "%IS_X64%" == "1" (
    goto :X64
) else (
    goto :Install_x86
)

:Install_x86
echo Installing x86 runtimes...

echo 2005...
start /wait vcredist2005_x86.exe /q

echo 2008...
start /wait vcredist2008_x86.exe /qb

echo 2010...
start /wait vcredist2010_x86.exe /passive /norestart

echo 2012...
start /wait vcredist2012_x86.exe /passive /norestart

echo 2013...
start /wait vcredist2013_x86.exe /passive /norestart

echo 2015 - 2022...
start /wait vcredist2015_2017_2019_2022_x86.exe /passive /norestart

echo General x86...
start /wait vcredist_x86.exe /passive /norestart

echo 2015 - 2019...
start /wait vcredist_2015-2019_x86.exe /passive /norestart

echo Installing additional components...

echo OpenAL...
start /wait oalinst.exe /silent

echo .NET Framework 4.0...
start /wait dotNetFx40_Full_setup.exe /passive /norestart

goto :END

:X64
echo Installing x64 runtimes...

echo 2005...
start /wait vcredist2005_x86.exe /q
start /wait vcredist2005_x64.exe /q

echo 2008...
start /wait vcredist2008_x86.exe /qb
start /wait vcredist2008_x64.exe /qb

echo 2010...
start /wait vcredist2010_x86.exe /passive /norestart
start /wait vcredist2010_x64.exe /passive /norestart

echo 2012...
start /wait vcredist2012_x86.exe /passive /norestart
start /wait vcredist2012_x64.exe /passive /norestart

echo 2013...
start /wait vcredist2013_x86.exe /passive /norestart
start /wait vcredist2013_x64.exe /passive /norestart

echo 2015 - 2022...
start /wait vcredist2015_2017_2019_2022_x86.exe /passive /norestart
start /wait vcredist2015_2017_2019_2022_x64.exe /passive /norestart

echo General x64...
start /wait vcredist_x64.exe /passive /norestart

echo 2015 - 2019...
start /wait vcredist_2015-2019_x64.exe /passive /norestart

echo Installing additional components...

echo OpenAL...
start /wait oalinst.exe /silent

echo .NET Framework 4.0...
start /wait dotNetFx40_Full_setup.exe /passive /norestart

goto :END

:END
echo.
echo Installation completed successfully
exit
