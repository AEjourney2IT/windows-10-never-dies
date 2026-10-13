@echo off
:: Sets the Application Identity service (required by AppLocker) to start
:: automatically and starts it now. Run as Administrator.
:: Create AppLocker default rules in secpol.msc BEFORE running this.
net session >nul 2>&1 || (echo Please right-click and choose "Run as administrator". & pause & exit /b 1)
reg add HKLM\SYSTEM\CurrentControlSet\Services\AppIDSvc /v Start /t REG_DWORD /d 2 /f
sc start appidsvc
gpupdate /force
sc query appidsvc
echo.
echo Look for "STATE : 4 RUNNING" above.
pause
