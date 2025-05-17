@echo off
cls
setlocal

echo =======================================                                       
echo        OnionSSH - SSH over Tor                                      
echo =======================================

echo.
set /p user=USERNAME~: 
echo.
set /p server=IP OR DOMAIN~: 
echo.

set ncatpath=C:\PROGRA~2\Nmap\ncat.exe
set tor=127.0.0.1:9050

echo Starting SSH connection via Tor...
echo.

ssh -o "ProxyCommand=%ncatpath% --proxy %tor% --proxy-type socks5 %%h %%p" %user%@%server%

echo.
pause
