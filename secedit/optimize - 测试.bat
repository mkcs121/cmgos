@echo off&PUSHD %~DP0
mode con cols=47 lines=30
title CMGE Author:HJiM
color 3e

SETLOCAL enabledelayedexpansion

rem 以管理员的身份运行
@REM %1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c ""%~s0"" ::","","runas",1)(window.close)&&exit

set A=修改密码复杂程度
set B=关闭以管理员批准模式运行所有管理员
set C=关闭关机清除虚拟页面加速启动速度
set D=关闭每次登陆都需要按Ctrl+Alt+Del
set E=启用远程桌面连接
set F=修改10分钟自动锁屏，并进入屏幕保护
set G=开启摄像头和麦克风权限
set H=登录Microsoft账户
set I=解除应用商店已阻止
set J=修复无法打开移动热点设置页面BUG
set K=无法访问sabma或共享文件夹
set L=一键全部优化

:Menu
echo ===============================================
echo    Win10神州网信版优化程序（退出程序请输入Q）
echo -----------------------------------------------
echo   A:%A%
echo   B:%B%
echo   C:%C%
echo   D:%D%
echo   E:%E%
echo   F:%F%
echo   G:%G%
echo   H:%H%
echo   I:%I%
echo   J:%J%
echo   K:%K%
echo   L:%L%
echo   M:全部还原系统默认设置
echo ===============================================

set /p v=你想要优化的选项并按回车：
@REM for %%i in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do call set v=%%v:%%i=%%i%%

if /i "%v%"=="A" (goto labelA)^
else if /i "%v%"=="B" (goto labelB)^
else if /i "%v%"=="C" (goto labelC)^
else if /i "%v%"=="D" (goto labelD)^
else if /i "%v%"=="E" (goto labelE)^
else if /i "%v%"=="F" (goto labelF)^
else if /i "%v%"=="G" (goto labelG)^
else if /i "%v%"=="H" (goto labelH)^
else if /i "%v%"=="I" (goto labelI)^
else if /i "%v%"=="J" (goto labelJ)^
else if /i "%v%"=="K" (goto labelK)^
else if /i "%v%"=="L" (goto labelL)^
else if /i "%v%"=="M" (goto labelM)^
else if /i "%v%"=="Q" (goto :EOF)^
else (echo. 
echo 输入有误请重新输入
echo.)
pause
cls
goto Menu

:labelA

if "%A%"=="修改密码复杂程度" (
    echo.
    @REM echo [Unicode] > A.inf
    @REM echo Unicode=yes >> A.inf
    @REM echo [System Access] >> A.inf
    @REM echo MinimumPasswordAge = 0 >> A.inf
    @REM echo MaximumPasswordAge = -1 >> A.inf
    @REM echo MinimumPasswordLength = 0 >> A.inf
    @REM echo PasswordComplexity = 0 >> A.inf
    @REM echo [Version] >> A.inf
    @REM echo signature="$CHICAGO$" >> A.inf
    @REM echo Revision=1 >> A.inf
    @REM secedit /configure /db A.sdb /cfg A.inf /log A.log /quiet
    @REM del A.*
    echo.
    set A=%A%------------------[已优化]
    pause
    cls
goto Menu
) else (
    echo  ---------------------
    echo ^| 您已经优化了此选项：^|
    echo ^| A:修改密码复杂程度  ^|
    echo  ---------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^)：
    if /i "!v!"=="Y" (
        echo.
        @REM echo [Unicode] > A.inf
        @REM echo Unicode=yes >> A.inf
        @REM echo [System Access] >> A.inf
        @REM echo MinimumPasswordAge = 1 >> A.inf
        @REM echo MaximumPasswordAge = 90 >> A.inf
        @REM echo MinimumPasswordLength = 8 >> A.inf
        @REM echo PasswordComplexity = 1 >> A.inf
        @REM echo [Version] >> A.inf
        @REM echo signature="$CHICAGO$" >> A.inf
        @REM echo Revision=1 >> A.inf
        @REM secedit /configure /db A.sdb /cfg A.inf /log A.log /quiet
        @REM del A.*
        echo.
        set A=修改密码复杂程度
        set L=一键全部优化
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo 输入错误，返回主界面
        pause
        cls
        goto Menu
    )
)


:labelB

if "%B%"=="关闭以管理员批准模式运行所有管理员" (
    echo.
    @REM echo [Unicode] > B.inf
    @REM echo Unicode=yes >> B.inf
    @REM echo [Registry Values] >> B.inf
    @REM echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA=4,0 >> B.inf
    @REM echo [Version] >> B.inf
    @REM echo signature="$CHICAGO$" >> B.inf
    @REM echo Revision=1 >> B.inf
    @REM secedit /configure /db B.sdb /cfg B.inf /log B.log /quiet
    @REM del B.*
    echo.
    set B=%B%[已优化]
    pause
    cls
goto Menu
) else (
    echo  ---------------------------------------
    echo ^| 您已经优化了此选项：                  ^|
    echo ^| B:关闭以管理员批准模式运行所有管理员  ^|
    echo  ---------------------------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^)：
    if /i "!v!"=="Y" (
        echo.
        @REM echo [Unicode] > B.inf
        @REM echo Unicode=yes >> B.inf
        @REM echo [Registry Values] >> B.inf
        @REM echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA=4,1 >> B.inf
        @REM echo [Version] >> B.inf
        @REM echo signature="$CHICAGO$" >> B.inf
        @REM echo Revision=1 >> B.inf
        @REM secedit /configure /db B.sdb /cfg B.inf /log B.log /quiet
        @REM del B.*
        echo.
        set B=关闭以管理员批准模式运行所有管理员
        set L=一键全部优化
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo 输入错误，返回主界面
        pause
        cls
        goto Menu
    )
)


:labelC

if "%C%"=="关闭关机清除虚拟页面加速启动速度" (
    echo.
    @REM echo [Unicode] > C.inf
    @REM echo Unicode=yes >> C.inf
    @REM echo [Registry Values] >> C.inf
    @REM echo MACHINE\System\CurrentControlSet\Control\Session Manager\Memory Management\ClearPageFileAtShutdown=4,0 >> C.inf
    @REM echo [Version] >> C.inf
    @REM echo signature="$CHICAGO$" >> C.inf
    @REM echo Revision=1 >> C.inf
    @REM echo secedit /configure /db C.sdb /cfg C.inf /log C.log /quiet
    @REM echo del C.*
    echo.
    set C=%C%--[已优化]
    pause
    cls
goto Menu
) else (
    echo  -------------------------------------
    echo ^| 您已经优化了此选项：                ^|
    echo ^| C:关闭关机清除虚拟页面加速启动速度  ^|
    echo  -------------------------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM echo [Unicode] > C.inf
        @REM echo Unicode=yes >> C.inf
        @REM echo [Registry Values] >> C.inf
        @REM echo MACHINE\System\CurrentControlSet\Control\Session Manager\Memory Management\ClearPageFileAtShutdown=4,1 >> C.inf
        @REM echo [Version] >> C.inf
        @REM echo signature="$CHICAGO$" >> C.inf
        @REM echo Revision=1 >> C.inf
        @REM echo secedit /configure /db C.sdb /cfg C.inf /log C.log /quiet
        @REM echo del C.*
        echo.
        set C=关闭关机清除虚拟页面加速启动速度
        set L=一键全部优化
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo 输入错误，返回主界面
        pause
        cls
        goto Menu
    )
)


:labelD

if "%D%"=="关闭每次登陆都需要按Ctrl+Alt+Del" (
    echo.
    @REM echo [Unicode] > D.inf
    @REM echo Unicode=yes >> D.inf
    @REM echo [Registry Values] >> D.inf
    @REM echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCAD=4,1 >> D.inf
    @REM echo [Version] >> D.inf
    @REM echo signature="$CHICAGO$" >> D.inf
    @REM echo Revision=1 >> D.inf
    @REM echo secedit /configure /db D.sdb /cfg D.inf /log D.log /quiet
    @REM echo del D.*
    echo.
    set D=%D%--[已优化]
    pause
    cls
goto Menu
) else (
    echo  -------------------------------------
    echo ^| 您已经优化了此选项：                ^|
    echo ^| D:关闭每次登陆都需要按Ctrl+Alt+Del  ^|
    echo  -------------------------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM echo [Unicode] > D.inf
        @REM echo Unicode=yes >> D.inf
        @REM echo [Registry Values] >> D.inf
        @REM echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCAD=4,0 >> D.inf
        @REM echo [Version] >> D.inf
        @REM echo signature="$CHICAGO$" >> D.inf
        @REM echo Revision=1 >> D.inf
        @REM echo secedit /configure /db D.sdb /cfg D.inf /log D.log /quiet
        @REM echo del D.*
        echo.
        set D=关闭每次登陆都需要按Ctrl+Alt+Del
        set L=一键全部优化
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo 输入错误，返回主界面
        pause
        cls
        goto Menu
    )
)


:labelE

if "%E%"=="启用远程桌面连接" (
    echo.
    @REM echo [Unicode] > E.inf
    @REM echo Unicode=yes >> E.inf
    @REM echo [Registry Values] >> E.inf
    @REM echo MACHINE\System\CurrentControlSet\Control\Lsa\ForceGuest=4,0 >> E.inf
    @REM REM echo MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services\fDenyTSConnections=4,0 >> E.inf
    @REM REM echo MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services\MaxInstanceCount=4,999999 >> E.inf
    @REM echo [Privilege Rights] >> E.inf
    @REM echo SeNetworkLogonRight = Administrator >> E.inf
    @REM echo [Version] >> E.inf
    @REM echo signature="$CHICAGO$" >> E.inf
    @REM echo Revision=1 >> E.inf
    @REM echo secedit /configure /db E.sdb /cfg E.inf /log E.log /quiet
    @REM echo del E.*
    @REM reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v fDenyTSConnections /t REG_DWORD /d 0 /f
    @REM reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v MaxInstanceCount /t REG_DWORD /d 999999 /f
    echo.
    set E=%E%------------------[已优化]
    pause
    cls
goto Menu
) else (
    echo  ---------------------
    echo ^| 您已经优化了此选项：^|
    echo ^| E:启用远程桌面连接  ^|
    echo  ---------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM echo [Unicode] > E.inf
        @REM echo Unicode=yes >> E.inf
        @REM echo [Registry Values] >> E.inf
        @REM echo MACHINE\System\CurrentControlSet\Control\Lsa\ForceGuest=4,1 >> E.inf
        @REM echo [Privilege Rights] >> E.inf
        @REM echo SeNetworkLogonRight = >> E.inf
        @REM echo [Version] >> E.inf
        @REM echo signature="$CHICAGO$" >> E.inf
        @REM echo Revision=1 >> E.inf
        @REM echo secedit /configure /db E.sdb /cfg E.inf /log E.log /quiet
        @REM echo del E.*
        @REM reg delete "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v fDenyTSConnections /f
        @REM reg delete "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v MaxInstanceCount /f
        echo.
        set E=启用远程桌面连接
        set L=一键全部优化
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo 输入错误，返回主界面
        pause
        cls
        goto Menu
    )
)


:labelF

if "%F%"=="修改10分钟自动锁屏，并进入屏幕保护" (
    echo.
    @REM REM echo [Unicode] > F.inf
    @REM REM echo Unicode=yes >> F.inf
    @REM REM echo [Registry Values] >> F.inf
    @REM REM echo MACHINE\Software\Policies\Microsoft\Windows\Personalization\NoLockScreen=4,1 >> F.inf
    @REM REM echo [Version] >> F.inf
    @REM REM echo signature="$CHICAGO$" >> F.inf
    @REM REM echo Revision=1 >> F.inf
    @REM REM echo secedit /configure /db F.sdb /cfg F.inf /log F.log /quiet
    @REM REM echo del F.*
    @REM reg add "HKLM\Software\Policies\Microsoft\Windows\Personalization" /v NoLockScreen /t REG_DWORD /d 1 /f
    @REM reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveActive /f
    @REM reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveTimeOut /f
    @REM reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaverIsSecure /f
    @REM reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v SCRNSAVE.EXE /f
    echo.
    set F=%F%[已优化]
    pause
    cls
goto Menu
) else (
    echo  ---------------------------------------
    echo ^| 您已经优化了此选项：                  ^|
    echo ^| F:修改10分钟自动锁屏，并进入屏幕保护  ^|
    echo  ---------------------------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM reg delete "HKLM\Software\Policies\Microsoft\Windows\Personalization" /v NoLockScreen /f
        @REM reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveActive /t REG_SZ /d 1 /f
        @REM reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveTimeOut /t REG_SZ /d 600 /f
        @REM reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaverIsSecure /t REG_SZ /d 1 /f
        @REM reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v SCRNSAVE.EXE /t REG_SZ /d ssText3D.scr /f
        echo.
        set F=修改10分钟自动锁屏，并进入屏幕保护
        set L=一键全部优化
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo 输入错误，返回主界面
        pause
        cls
        goto Menu
    )
)


:labelG

if "%G%"=="开启摄像头和麦克风权限" (
    echo.
    @REM REM echo [Unicode] > G.inf
    @REM REM echo Unicode=yes >> G.inf
    @REM REM echo [Registry Values] >> G.inf
    @REM REM echo MACHINE\Software\Policies\Microsoft\Windows\LetAppsAccessCamera=4,0 >> G.inf
    @REM REM echo MACHINE\Software\Policies\Microsoft\Windows\LetAppsAccessMicrophone=4,0 >> G.inf
    @REM REM echo [Version] >> G.inf
    @REM REM echo signature="$CHICAGO$" >> G.inf
    @REM REM echo Revision=1 >> G.inf
    @REM REM echo secedit /configure /db G.sdb /cfg G.inf /log G.log /quiet
    @REM REM echo del G.*
    @REM reg add "HKLM\Software\Policies\Microsoft\Windows" /v LetAppsAccessCamera /t REG_DWORD /d 0 /f
    @REM reg add "HKLM\Software\Policies\Microsoft\Windows" /v LetAppsAccessMicrophone /t REG_DWORD /d 0 /f
    echo.
    set G=%G%------------[已优化]
    pause
    cls
goto Menu
) else (
    echo  ---------------------------
    echo ^| 您已经优化了此选项：      ^|
    echo ^| G:开启摄像头和麦克风权限  ^|
    echo  ---------------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM REM echo [Unicode] > G.inf
        @REM REM echo Unicode=yes >> G.inf
        @REM REM echo [Registry Values] >> G.inf
        @REM REM echo MACHINE\Software\Policies\Microsoft\Windows\LetAppsAccessCamera=4,2 >> G.inf
        @REM REM echo MACHINE\Software\Policies\Microsoft\Windows\LetAppsAccessMicrophone=4,2 >> G.inf
        @REM REM echo [Version] >> G.inf
        @REM REM echo signature="$CHICAGO$" >> G.inf
        @REM REM echo Revision=1 >> G.inf
        @REM REM echo secedit /configure /db G.sdb /cfg G.inf /log G.log /quiet
        @REM REM echo del G.*
        @REM reg add "HKLM\Software\Policies\Microsoft\Windows" /v LetAppsAccessCamera /t REG_DWORD /d 2 /f
        @REM reg add "HKLM\Software\Policies\Microsoft\Windows" /v LetAppsAccessMicrophone /t REG_DWORD /d 2 /f
        echo.
        set G=开启摄像头和麦克风权限
        set L=一键全部优化
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo 输入错误，返回主界面
        pause
        cls
        goto Menu
    )
)


:labelH

if "%H%"=="登录Microsoft账户" (
    echo.
    @REM echo [Unicode] > H.inf
    @REM echo Unicode=yes >> H.inf
    @REM echo [Registry Values] >> H.inf
    @REM echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoConnectedUser=4,0 >> H.inf
    @REM REM echo MACHINE\Software\Policies\Microsoft\Windows\CloudContent\DisableWindowsConsumerFeatures=4,0 >> H.inf
    @REM echo [Version] >> H.inf
    @REM echo signature="$CHICAGO$" >> H.inf
    @REM echo Revision=1 >> H.inf
    @REM echo secedit /configure /db H.sdb /cfg H.inf /log H.log /quiet
    @REM echo del H.*
    @REM reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 0 /f
    @REM sc config wlidsvc start= delayed-auto
    echo.
    set H=%H%-----------------[已优化]
    pause
    cls
goto Menu
) else (
    echo  ----------------------
    echo ^| 您已经优化了此选项： ^|
    echo ^| H:登录Microsoft账户  ^|
    echo  ----------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM echo [Unicode] > H.inf
        @REM echo Unicode=yes >> H.inf
        @REM echo [Registry Values] >> H.inf
        @REM echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoConnectedUser=4,3 >> H.inf
        @REM echo [Version] >> H.inf
        @REM echo signature="$CHICAGO$" >> H.inf
        @REM echo Revision=1 >> H.inf
        @REM echo secedit /configure /db H.sdb /cfg H.inf /log H.log /quiet
        @REM echo del H.*
        @REM reg delete "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /f
        @REM if "!I!"=="解除应用商店已阻止" (sc config wlidsvc start= disabled)
        echo I:!I!
        if "!I!"=="解除应用商店已阻止" (echo 执行关闭服务)
        echo.
        set H=登录Microsoft账户
        set L=一键全部优化
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo 输入错误，返回主界面
        pause
        cls
        goto Menu
    )
)


:labelI

if "%I%"=="解除应用商店已阻止" (
    echo.
    @REM REM echo [Unicode] > I.inf
    @REM REM echo Unicode=yes >> I.inf
    @REM REM echo [Registry Values] >> I.inf
    @REM REM echo MACHINE\Software\Policies\Microsoft\WindowsStore\RemoveWindowsStore=4,0 >> I.inf
    @REM REM echo MACHINE\Software\Policies\Microsoft\WindowsStore\DisableStoreApps=4,1 >> I.inf
    @REM REM echo MACHINE\Software\Policies\Microsoft\Windows\Explorer\NoUseStoreOpenWith=4,0 >> I.inf
    @REM REM echo [Version] >> I.inf
    @REM REM echo signature="$CHICAGO$" >> I.inf
    @REM REM echo Revision=1 >> I.inf
    @REM REM echo secedit /configure /db I.sdb /cfg I.inf /log I.log /quiet
    @REM REM echo del I.*
    @REM reg add "HKLM\Software\Policies\Microsoft\WindowsStore" /v RemoveWindowsStore /t REG_DWORD /d 0 /f
    @REM reg add "HKLM\Software\Policies\Microsoft\WindowsStore" /v DisableStoreApps /t REG_DWORD /d 1 /f
    @REM reg add "HKLM\Software\Policies\Microsoft\Windows\Explorer" /v NoUseStoreOpenWith /t REG_DWORD /d 0 /f
    @REM sc config wlidsvc start= delayed-auto
    echo.
    set I=%I%----------------[已优化]
    pause
    cls
goto Menu
) else (
    echo  -----------------------
    echo ^| 您已经优化了此选项：  ^|
    echo ^| I:解除应用商店已阻止  ^|
    echo  -----------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM reg delete "HKLM\Software\Policies\Microsoft\WindowsStore" /v RemoveWindowsStore /f
        @REM reg delete "HKLM\Software\Policies\Microsoft\WindowsStore" /v DisableStoreApps /f
        @REM reg delete "HKLM\Software\Policies\Microsoft\Windows\Explorer" /v NoUseStoreOpenWith /f
        @REM if "!H!"=="登录Microsoft账户" (sc config wlidsvc start= disabled)
        echo H:!H!
        if "!H!"=="登录Microsoft账户" (echo 执行关闭服务)
        echo.
        set I=解除应用商店已阻止
        set L=一键全部优化
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo 输入错误，返回主界面
        pause
        cls
        goto Menu
    )
)


:labelJ

if "%J%"=="修复无法打开移动热点设置页面BUG" (
    echo.
    @REM REM echo [Unicode] > J.inf
    @REM REM echo Unicode=yes >> J.inf
    @REM REM echo [Registry Values] >> J.inf
    @REM REM echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\SettingsPageVisibility=1,"hide:network-directaccess" >> J.inf
    @REM REM echo [Version] >> J.inf
    @REM REM echo signature="$CHICAGO$" >> J.inf
    @REM REM echo Revision=1 >> J.inf
    @REM REM echo secedit /configure /db J.sdb /cfg J.inf /log J.log /quiet
    @REM REM echo del J.*
    @REM reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /t REG_SZ /d hide:network-directaccess /f
    echo.
    set J=%J%---[已优化]
    pause
    cls
goto Menu
) else (
    echo  ------------------------------------
    echo ^| 您已经优化了此选项：               ^|
    echo ^| J:修复无法打开移动热点设置页面BUG  ^|
    echo  ------------------------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /f
        echo.
        set J=修复无法打开移动热点设置页面BUG
        set L=一键全部优化
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo 输入错误，返回主界面
        pause
        cls
        goto Menu
    )
)


:labelK

if "%K%"=="无法访问sabma或共享文件夹" (
    echo.
    @REM REM echo [Unicode] > K.inf
    @REM REM echo Unicode=yes >> K.inf
    @REM REM echo [Registry Values] >> K.inf
    @REM REM echo MACHINE\Software\Policies\Microsoft\Windows\LanmanWorkstation\AllowInsecureGuestAuth=4,1 >> K.inf
    @REM REM echo [Version] >> K.inf
    @REM REM echo signature="$CHICAGO$" >> K.inf
    @REM REM echo Revision=1 >> K.inf
    @REM REM echo secedit /configure /db K.sdb /cfg K.inf /log K.log /quiet
    @REM REM echo del K.*
    @REM reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /t REG_DWORD /d 1 /f
    echo.
    set K=%K%---------[已优化]
    pause
    cls
goto Menu
) else (
    echo  ------------------------------
    echo ^| 您已经优化了此选项：         ^|
    echo ^| K:无法访问sabma或共享文件夹  ^|
    echo  ------------------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /f
        echo.
        set K=无法访问sabma或共享文件夹
        set L=一键全部优化
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo 输入错误，返回主界面
        pause
        cls
        goto Menu
    )
)


:labelL

if "%L%"=="一键全部优化" (
    echo 优化L选项
    set A=修改密码复杂程度------------------[已优化]
    set B=关闭以管理员批准模式运行所有管理员[已优化]
    set C=关闭关机清除虚拟页面加速启动速度--[已优化]
    set D=关闭每次登陆都需要按Ctrl+Alt+Del--[已优化]
    set E=启用远程桌面连接------------------[已优化]
    set F=修改10分钟自动锁屏，并进入屏幕保护[已优化]
    set G=开启摄像头和麦克风权限------------[已优化]
    set H=登录Microsoft账户-----------------[已优化]
    set I=解除应用商店已阻止----------------[已优化]
    set J=修复无法打开移动热点设置页面BUG---[已优化]
    set K=无法访问sabma或共享文件夹---------[已优化]
    set L=一键全部优化----------------------[已优化]
    pause
    cls
    goto Menu
) else (
    echo  ---------------------
    echo ^| 您已经优化全部选项 ^|
    echo  ---------------------
    set/p v=是否需要全部还原为系统默认设置^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        echo 全部还原为系统默认设置
        echo.
        pause
        cls
        goto LabelM
    ) else if /i "!v!"=="N" (
        echo.
        echo 返回主界面
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo 输入错误，返回主界面
        pause
        cls
        goto Menu
    )
)


:labelM
echo.
echo 优化M选项
echo.
set A=修改密码复杂程度
set B=关闭以管理员批准模式运行所有管理员
set C=关闭关机清除虚拟页面加速启动速度
set D=关闭每次登陆都需要按Ctrl+Alt+Del
set E=启用远程桌面连接
set F=修改10分钟自动锁屏，并进入屏幕保护
set G=开启摄像头和麦克风权限
set H=登录Microsoft账户
set I=解除应用商店已阻止
set J=修复无法打开移动热点设置页面BUG
set K=无法访问sabma或共享文件夹
set L=一键全部优化
pause
cls
goto Menu

pause