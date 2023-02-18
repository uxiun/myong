set LAST_DIR=%CD%

cd /d "%~dp0"

if %PROCESSOR_ARCHITECTURE%==x86 goto x86
	tsf-reg64.exe -u -d

:x86
tsf-reg.exe -u -d

cd /d %LAST_DIR%
