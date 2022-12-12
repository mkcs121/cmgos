@echo off&PUSHD %~DP0

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
else (echo. 
echo 输入有误请重新输入
echo.)
pause
cls
goto Menu

:labelA
SETLOCAL enabledelayedexpansion
if "%A%"=="修改密码复杂程度" (
    echo.
    echo [Unicode] > A.inf
    echo Unicode=yes >> A.inf
    echo [System Access] >> A.inf
    echo MinimumPasswordAge = 0 >> A.inf
    echo MaximumPasswordAge = -1 >> A.inf
    echo MinimumPasswordLength = 0 >> A.inf
    echo PasswordComplexity = 0 >> A.inf
    echo [Version] >> A.inf
    echo signature="$CHICAGO$"
    echo Revision=1
    secedit /configure /db A.sdb /cfg A.inf /log A.log /quiet
    del A.*
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
        echo [Unicode] > A.inf
        echo Unicode=yes >> A.inf
        echo [System Access] >> A.inf
        echo MinimumPasswordAge = 1 >> A.inf
        echo MaximumPasswordAge = 90 >> A.inf
        echo MinimumPasswordLength = 8 >> A.inf
        echo PasswordComplexity = 1 >> A.inf
        echo [Version] >> A.inf
        echo signature="$CHICAGO$" >> A.inf
        echo Revision=1 >> A.inf
        secedit /configure /db A.sdb /cfg A.inf /log A.log /quiet
        del A.*
        echo.
        set A=修改密码复杂程度
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
SETLOCAL disabledelayedexpansion

:labelB
SETLOCAL enabledelayedexpansion
if "%B%"=="关闭以管理员批准模式运行所有管理员" (
    echo.
    echo [Unicode] > B.inf
    echo Unicode=yes >> B.inf
    echo [Registry Values] >> B.inf
    echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA=4,0 >> B.inf
    echo [Version] >> B.inf
    echo signature="$CHICAGO$" >> B.inf
    echo Revision=1 >> B.inf
    secedit /configure /db B.sdb /cfg B.inf /log B.log /quiet
    del B.*
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
        echo [Unicode] > B.inf
        echo Unicode=yes >> B.inf
        echo [Registry Values] >> B.inf
        echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA=4,1 >> B.inf
        echo [Version] >> B.inf
        echo signature="$CHICAGO$" >> B.inf
        echo Revision=1 >> B.inf
        secedit /configure /db B.sdb /cfg B.inf /log B.log /quiet
        del B.*
        echo.
        set B=关闭以管理员批准模式运行所有管理员
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
SETLOCAL disabledelayedexpansion

:labelC
SETLOCAL enabledelayedexpansion
if "%C%"=="关闭关机清除虚拟页面加速启动速度" (
    echo.
    echo [Unicode] > C.inf
    echo Unicode=yes >> C.inf
    echo [Registry Values] >> C.inf
    echo MACHINE\System\CurrentControlSet\Control\Session Manager\Memory Management\ClearPageFileAtShutdown=4,0 >> C.inf
    echo [Version] >> C.inf
    echo signature="$CHICAGO$" >> C.inf
    echo Revision=1 >> C.inf
    echo secedit /configure /db C.sdb /cfg C.inf /log C.log /quiet
    echo del C.*
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
        echo [Unicode] > C.inf
        echo Unicode=yes >> C.inf
        echo [Registry Values] >> C.inf
        echo MACHINE\System\CurrentControlSet\Control\Session Manager\Memory Management\ClearPageFileAtShutdown=4,1 >> C.inf
        echo [Version] >> C.inf
        echo signature="$CHICAGO$" >> C.inf
        echo Revision=1 >> C.inf
        echo secedit /configure /db C.sdb /cfg C.inf /log C.log /quiet
        echo del C.*
        echo.
        set C=关闭关机清除虚拟页面加速启动速度
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
SETLOCAL disabledelayedexpansion

:labelD
SETLOCAL enabledelayedexpansion
if "%D%"=="关闭每次登陆都需要按Ctrl+Alt+Del" (
    echo.
    echo [Unicode] > D.inf
    echo Unicode=yes >> D.inf
    echo [Registry Values] >> D.inf
    echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCAD=4,1 >> D.inf
    echo [Version] >> D.inf
    echo signature="$CHICAGO$" >> D.inf
    echo Revision=1 >> D.inf
    echo secedit /configure /db D.sdb /cfg D.inf /log D.log /quiet
    echo del D.*
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
        echo [Unicode] > D.inf
        echo Unicode=yes >> D.inf
        echo [Registry Values] >> D.inf
        echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCAD=4,0 >> D.inf
        echo [Version] >> D.inf
        echo signature="$CHICAGO$" >> D.inf
        echo Revision=1 >> D.inf
        echo secedit /configure /db D.sdb /cfg D.inf /log D.log /quiet
        echo del D.*
        echo.
        set D=关闭每次登陆都需要按Ctrl+Alt+Del
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
SETLOCAL disabledelayedexpansion

:labelE
SETLOCAL enabledelayedexpansion
if "%E%"=="启用远程桌面连接" (
    echo.
    echo [Unicode] > E.inf
    echo Unicode=yes >> E.inf
    echo [Registry Values] >> E.inf
    echo MACHINE\System\CurrentControlSet\Control\Lsa\ForceGuest=4,0 >> E.inf
    echo MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services\fDenyTSConnections=4,0 >> E.inf
    echo MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services\MaxInstanceCount=4,999999 >> E.inf
    echo [Privilege Rights] >> E.inf
    echo SeNetworkLogonRight = Administrator >> E.inf
    echo [Version] >> E.inf
    echo signature="$CHICAGO$" >> E.inf
    echo Revision=1 >> E.inf
    echo secedit /configure /db E.sdb /cfg E.inf /log E.log /quiet
    echo del E.*
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
        echo [Unicode] > E.inf
        echo Unicode=yes >> E.inf
        echo [Registry Values] >> E.inf
        echo MACHINE\System\CurrentControlSet\Control\Lsa\ForceGuest=4,1 >> E.inf
        echo [Privilege Rights] >> E.inf
        echo SeNetworkLogonRight = >> E.inf
        echo [Version] >> E.inf
        echo signature="$CHICAGO$" >> E.inf
        echo Revision=1 >> E.inf
        echo secedit /configure /db E.sdb /cfg E.inf /log E.log /quiet
        echo del E.*
        reg delete "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v fDenyTSConnections /f
        reg delete "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v MaxInstanceCount /f
        echo.
        set E=启用远程桌面连接
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
SETLOCAL disabledelayedexpansion

:labelF
SETLOCAL enabledelayedexpansion
if "%F%"=="修改10分钟自动锁屏，并进入屏幕保护" (
    echo.
    echo [Unicode] > F.inf
    echo Unicode=yes >> F.inf
    echo [Registry Values] >> F.inf
    echo MACHINE\Software\Policies\Microsoft\Windows\Personalization\NoLockScreen=4,1 >> F.inf
    echo [Version] >> F.inf
    echo signature="$CHICAGO$" >> F.inf
    echo Revision=1 >> F.inf
    echo secedit /configure /db F.sdb /cfg F.inf /log F.log /quiet
    echo del F.*
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveActive /f
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveTimeOut /f
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaverIsSecure /f
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v SCRNSAVE.EXE /f
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
        reg delete "HKLM\Software\Policies\Microsoft\Windows\Personalization" /v NoLockScreen /f
        reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveActive /t REG_SZ /d 1 /f
        reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveTimeOut /t REG_SZ /d 600 /f
        reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaverIsSecure /t REG_SZ /d 1 /f
        reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v SCRNSAVE.EXE /t REG_SZ /d ssText3D.scr /f
        echo.
        set F=修改10分钟自动锁屏，并进入屏幕保护
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
SETLOCAL disabledelayedexpansion

:labelG
SETLOCAL enabledelayedexpansion
if "%G%"=="开启摄像头和麦克风权限" (
    echo.
    echo [Unicode] > G.inf
    echo Unicode=yes >> G.inf
    echo [Registry Values] >> G.inf
    echo MACHINE\Software\Policies\Microsoft\Windows\LetAppsAccessCamera=4,0 >> G.inf
    echo MACHINE\Software\Policies\Microsoft\Windows\LetAppsAccessMicrophone=4,0 >> G.inf
    echo [Version] >> G.inf
    echo signature="$CHICAGO$" >> G.inf
    echo Revision=1 >> G.inf
    echo secedit /configure /db G.sdb /cfg G.inf /log G.log /quiet
    echo del G.*
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
        echo [Unicode] > G.inf
        echo Unicode=yes >> G.inf
        echo [Registry Values] >> G.inf
        echo MACHINE\Software\Policies\Microsoft\Windows\LetAppsAccessCamera=4,2 >> G.inf
        echo MACHINE\Software\Policies\Microsoft\Windows\LetAppsAccessMicrophone=4,2 >> G.inf
        echo [Version] >> G.inf
        echo signature="$CHICAGO$" >> G.inf
        echo Revision=1 >> G.inf
        echo secedit /configure /db G.sdb /cfg G.inf /log G.log /quiet
        echo del G.*
        echo.
        set G=开启摄像头和麦克风权限
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
SETLOCAL disabledelayedexpansion

:labelH
SETLOCAL enabledelayedexpansion
if "%H%"=="登录Microsoft账户" (
    echo.
    echo [Unicode] > H.inf
    echo Unicode=yes >> H.inf
    echo [Registry Values] >> H.inf
    echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoConnectedUser=4,0 >> H.inf
    echo MACHINE\Software\Policies\Microsoft\Windows\CloudContent\DisableWindowsConsumerFeatures=4,0 >> H.inf
    echo [Version] >> H.inf
    echo signature="$CHICAGO$" >> H.inf
    echo Revision=1 >> H.inf
    echo secedit /configure /db H.sdb /cfg H.inf /log H.log /quiet
    echo del H.*
    sc config wlidsvc start= delayed-auto
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
        echo [Unicode] > H.inf
        echo Unicode=yes >> H.inf
        echo [Registry Values] >> H.inf
        echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoConnectedUser=4,3 >> H.inf
        echo [Version] >> H.inf
        echo signature="$CHICAGO$" >> H.inf
        echo Revision=1 >> H.inf
        echo secedit /configure /db H.sdb /cfg H.inf /log H.log /quiet
        echo del H.*
        reg delete "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /f
        if "!I!"=="解除应用商店已阻止" (sc config wlidsvc start= disabled)
        echo.
        set H=登录Microsoft账户
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
SETLOCAL disabledelayedexpansion

:labelI
SETLOCAL enabledelayedexpansion
if "%I%"=="解除应用商店已阻止" (
    echo.
    echo [Unicode] > I.inf
    echo Unicode=yes >> I.inf
    echo [Registry Values] >> I.inf
    echo MACHINE\Software\Policies\Microsoft\WindowsStore\RemoveWindowsStore=4,0 >> I.inf
    echo MACHINE\Software\Policies\Microsoft\WindowsStore\DisableStoreApps=4,1 >> I.inf
    echo MACHINE\Software\Policies\Microsoft\Windows\Explorer\NoUseStoreOpenWith=4,0 >> I.inf
    echo [Version] >> I.inf
    echo signature="$CHICAGO$" >> I.inf
    echo Revision=1 >> I.inf
    echo secedit /configure /db I.sdb /cfg I.inf /log I.log /quiet
    echo del I.*
    sc config wlidsvc start= delayed-auto
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
        reg delete "HKLM\Software\Policies\Microsoft\WindowsStore" /v RemoveWindowsStore /f
        reg delete "HKLM\Software\Policies\Microsoft\WindowsStore" /v DisableStoreApps /f
        reg delete "HKLM\Software\Policies\Microsoft\Windows\Explorer" /v NoUseStoreOpenWith /f
        if "!H!"=="登录Microsoft账户" (sc config wlidsvc start= disabled)
        echo.
        set I=解除应用商店已阻止
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
SETLOCAL disabledelayedexpansion

:labelJ
SETLOCAL enabledelayedexpansion
if "%J%"=="修复无法打开移动热点设置页面BUG" (
    echo.
    echo [Unicode] > J.inf
    echo Unicode=yes >> J.inf
    echo [Registry Values] >> J.inf
    echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\SettingsPageVisibility=1,"hide:network-directaccess" >> J.inf
    echo [Version] >> J.inf
    echo signature="$CHICAGO$" >> J.inf
    echo Revision=1 >> J.inf
    echo secedit /configure /db J.sdb /cfg J.inf /log J.log /quiet
    echo del J.*
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
        reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /f
        echo.
        set J=修复无法打开移动热点设置页面BUG
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
SETLOCAL disabledelayedexpansion

:labelK
SETLOCAL enabledelayedexpansion
if "%K%"=="无法访问sabma或共享文件夹" (
    echo.
    echo [Unicode] > K.inf
    echo Unicode=yes >> K.inf
    echo [Registry Values] >> K.inf
    echo MACHINE\Software\Policies\Microsoft\Windows\LanmanWorkstation\AllowInsecureGuestAuth=4,1 >> K.inf
    echo [Version] >> K.inf
    echo signature="$CHICAGO$" >> K.inf
    echo Revision=1 >> K.inf
    echo secedit /configure /db K.sdb /cfg K.inf /log K.log /quiet
    echo del K.*
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
        reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /f
        echo.
        set K=无法访问sabma或共享文件夹
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
SETLOCAL disabledelayedexpansion

:labelL
SETLOCAL enabledelayedexpansion
if "%L%"=="一键全部优化" (
    echo 优化L选项
    set L=%L%----------------------[已优化]
    pause
    cls
goto Menu
) else (
    echo  ---------------------
    echo ^| 您已经优化了此选项：^|
    echo ^| L:一键全部优化      ^|
    echo  ---------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        echo 还原L选项为系统默认设置
        echo.
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
SETLOCAL disabledelayedexpansion

:labelM
SETLOCAL enabledelayedexpansion
if "%M%"=="全部还原系统默认设置" (
    echo 优化M选项
    set M=%M%[已优化]
    pause
    cls
goto Menu
) else (
    echo  ---------------------
    echo ^| 您已经优化了此选项：^|
    echo ^| M:全部还原系统默认设置  ^|
    echo  ---------------------
    set/p v=是否需要还原为系统默认设置^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        echo 还原M选项为系统默认设置
        echo.
        set M=全部还原系统默认设置
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
SETLOCAL disabledelayedexpansion

pause