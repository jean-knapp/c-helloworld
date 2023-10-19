@echo off
cd %~dp0

gcc --version > nul 2>&1
if errorlevel 1 (
    echo GCC is not installed.
) else (
    echo Compiling program.c...
    gcc -o helloworld.exe program.c
    echo Compile complete.
    echo Running helloworld.exe...
    cls
    .\helloworld.exe
    pause
)

