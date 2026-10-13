@echo off
:: Locks Secure DNS (DNS-over-HTTPS) OFF in Edge and Chrome so the
:: family DNS filter can't be bypassed. Run as Administrator.
net session >nul 2>&1 || (echo Please right-click and choose "Run as administrator". & pause & exit /b 1)
reg add HKLM\SOFTWARE\Policies\Microsoft\Edge /v DnsOverHttpsMode /t REG_SZ /d off /f
reg add HKLM\SOFTWARE\Policies\Google\Chrome /v DnsOverHttpsMode /t REG_SZ /d off /f
echo.
echo Done. Restart your browsers, then check edge://policy or chrome://policy
pause
