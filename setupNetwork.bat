@echo off
netsh interface ip set address name="Local Area Connection" source=static addr=192.168.0.10 mask=255.255.255.0 gateway=192.168.0.1 gwmetric=1

bitsadmin.exe /transfer "Download PUTTY" http://the.earth.li/~sgtatham/putty/latest/x86/putty.exe c:\putty.exe
