@echo off
:: Turns AppLocker enforcement OFF by stopping the Application Identity
:: service and setting it back to Manual. Run as Administrator.
:: To fully remove, also delete the rules in secpol.msc > AppLocker.
net session >nul 2>&1 || (echo Please right-click and choose "Run as administrator". & pause & exit /b 1)
reg add HKLM\SYSTEM\CurrentControlSet\Services\AppIDSvc /v Start /t REG_DWORD /d 3 /f
sc stop appidsvc
echo AppLocker service stopped and set to Manual.
pause
