@echo off
:: Creates a harmless test file on the shared desktop.
:: Sign in as the kids' account and double-click applocker-test.bat:
::   window flashes and closes  = AppLocker is working
::   window stays open          = AppLocker is NOT enforcing
net session >nul 2>&1 || (echo Please right-click and choose "Run as administrator". & pause & exit /b 1)
echo @echo AppLocker is NOT blocking this ^& pause > C:\Users\Public\Desktop\applocker-test.bat
echo Created C:\Users\Public\Desktop\applocker-test.bat
pause
