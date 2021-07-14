@ECHO OFF
echo.
echo.
echo      刷官方boot的作用：
echo      解决任何情况卡开机的问题，帮助你成功进入系统。（修改system导致的不算）；
echo      请将手机重启到fastboot模式下使用！按任意键开始刷写boot.....
pause >nul
echo.
echo. 
win_tools\fastboot.exe flash boot win_tools\boot.img
win_tools\fastboot.exe flash vbmeta win_tools\vbmeta.img
echo.
echo      出现两个“OKAY”表示刷入成功！
echo      请按任意键关闭本窗口并重启进入系统....
echo      BY 缠铆
echo.
pause >nul 
win_tools\fastboot reboot
echo.
