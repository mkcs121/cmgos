@echo off&PUSHD %~DP0
mode con cols=47 lines=30
title CMGE Author:HJiM
color 3e

SETLOCAL enabledelayedexpansion

rem �Թ���Ա���������
@REM %1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c ""%~s0"" ::","","runas",1)(window.close)&&exit

set A=�޸����븴�ӳ̶�
set B=�ر��Թ���Ա��׼ģʽ�������й���Ա
set C=�رչػ��������ҳ����������ٶ�
set D=�ر�ÿ�ε�½����Ҫ��Ctrl+Alt+Del
set E=����Զ����������
set F=�޸�10�����Զ���������������Ļ����
set G=��������ͷ����˷�Ȩ��
set H=��¼Microsoft�˻�
set I=���Ӧ���̵�����ֹ
set J=�޸��޷����ƶ��ȵ�����ҳ��BUG
set K=�޷�����sabma�����ļ���
set L=һ��ȫ���Ż�

:Menu
echo ===============================================
echo    Win10�������Ű��Ż������˳�����������Q��
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
echo   M:ȫ����ԭϵͳĬ������
echo ===============================================

set /p v=����Ҫ�Ż���ѡ����س���
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
echo ������������������
echo.)
pause
cls
goto Menu

:labelA

if "%A%"=="�޸����븴�ӳ̶�" (
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
    set A=%A%------------------[���Ż�]
    pause
    cls
goto Menu
) else (
    echo  ---------------------
    echo ^| ���Ѿ��Ż��˴�ѡ�^|
    echo ^| A:�޸����븴�ӳ̶�  ^|
    echo  ---------------------
    set/p v=�Ƿ���Ҫ��ԭΪϵͳĬ������^(Y/N^)��
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
        set A=�޸����븴�ӳ̶�
        set L=һ��ȫ���Ż�
        echo ����������
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo ����������
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo ������󣬷���������
        pause
        cls
        goto Menu
    )
)


:labelB

if "%B%"=="�ر��Թ���Ա��׼ģʽ�������й���Ա" (
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
    set B=%B%[���Ż�]
    pause
    cls
goto Menu
) else (
    echo  ---------------------------------------
    echo ^| ���Ѿ��Ż��˴�ѡ�                  ^|
    echo ^| B:�ر��Թ���Ա��׼ģʽ�������й���Ա  ^|
    echo  ---------------------------------------
    set/p v=�Ƿ���Ҫ��ԭΪϵͳĬ������^(Y/N^)��
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
        set B=�ر��Թ���Ա��׼ģʽ�������й���Ա
        set L=һ��ȫ���Ż�
        echo ����������
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo ����������
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo ������󣬷���������
        pause
        cls
        goto Menu
    )
)


:labelC

if "%C%"=="�رչػ��������ҳ����������ٶ�" (
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
    set C=%C%--[���Ż�]
    pause
    cls
goto Menu
) else (
    echo  -------------------------------------
    echo ^| ���Ѿ��Ż��˴�ѡ�                ^|
    echo ^| C:�رչػ��������ҳ����������ٶ�  ^|
    echo  -------------------------------------
    set/p v=�Ƿ���Ҫ��ԭΪϵͳĬ������^(Y/N^):
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
        set C=�رչػ��������ҳ����������ٶ�
        set L=һ��ȫ���Ż�
        echo ����������
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo ����������
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo ������󣬷���������
        pause
        cls
        goto Menu
    )
)


:labelD

if "%D%"=="�ر�ÿ�ε�½����Ҫ��Ctrl+Alt+Del" (
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
    set D=%D%--[���Ż�]
    pause
    cls
goto Menu
) else (
    echo  -------------------------------------
    echo ^| ���Ѿ��Ż��˴�ѡ�                ^|
    echo ^| D:�ر�ÿ�ε�½����Ҫ��Ctrl+Alt+Del  ^|
    echo  -------------------------------------
    set/p v=�Ƿ���Ҫ��ԭΪϵͳĬ������^(Y/N^):
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
        set D=�ر�ÿ�ε�½����Ҫ��Ctrl+Alt+Del
        set L=һ��ȫ���Ż�
        echo ����������
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo ����������
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo ������󣬷���������
        pause
        cls
        goto Menu
    )
)


:labelE

if "%E%"=="����Զ����������" (
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
    set E=%E%------------------[���Ż�]
    pause
    cls
goto Menu
) else (
    echo  ---------------------
    echo ^| ���Ѿ��Ż��˴�ѡ�^|
    echo ^| E:����Զ����������  ^|
    echo  ---------------------
    set/p v=�Ƿ���Ҫ��ԭΪϵͳĬ������^(Y/N^):
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
        set E=����Զ����������
        set L=һ��ȫ���Ż�
        echo ����������
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo ����������
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo ������󣬷���������
        pause
        cls
        goto Menu
    )
)


:labelF

if "%F%"=="�޸�10�����Զ���������������Ļ����" (
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
    set F=%F%[���Ż�]
    pause
    cls
goto Menu
) else (
    echo  ---------------------------------------
    echo ^| ���Ѿ��Ż��˴�ѡ�                  ^|
    echo ^| F:�޸�10�����Զ���������������Ļ����  ^|
    echo  ---------------------------------------
    set/p v=�Ƿ���Ҫ��ԭΪϵͳĬ������^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM reg delete "HKLM\Software\Policies\Microsoft\Windows\Personalization" /v NoLockScreen /f
        @REM reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveActive /t REG_SZ /d 1 /f
        @REM reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveTimeOut /t REG_SZ /d 600 /f
        @REM reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaverIsSecure /t REG_SZ /d 1 /f
        @REM reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v SCRNSAVE.EXE /t REG_SZ /d ssText3D.scr /f
        echo.
        set F=�޸�10�����Զ���������������Ļ����
        set L=һ��ȫ���Ż�
        echo ����������
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo ����������
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo ������󣬷���������
        pause
        cls
        goto Menu
    )
)


:labelG

if "%G%"=="��������ͷ����˷�Ȩ��" (
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
    set G=%G%------------[���Ż�]
    pause
    cls
goto Menu
) else (
    echo  ---------------------------
    echo ^| ���Ѿ��Ż��˴�ѡ�      ^|
    echo ^| G:��������ͷ����˷�Ȩ��  ^|
    echo  ---------------------------
    set/p v=�Ƿ���Ҫ��ԭΪϵͳĬ������^(Y/N^):
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
        set G=��������ͷ����˷�Ȩ��
        set L=һ��ȫ���Ż�
        echo ����������
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo ����������
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo ������󣬷���������
        pause
        cls
        goto Menu
    )
)


:labelH

if "%H%"=="��¼Microsoft�˻�" (
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
    set H=%H%-----------------[���Ż�]
    pause
    cls
goto Menu
) else (
    echo  ----------------------
    echo ^| ���Ѿ��Ż��˴�ѡ� ^|
    echo ^| H:��¼Microsoft�˻�  ^|
    echo  ----------------------
    set/p v=�Ƿ���Ҫ��ԭΪϵͳĬ������^(Y/N^):
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
        @REM if "!I!"=="���Ӧ���̵�����ֹ" (sc config wlidsvc start= disabled)
        echo I:!I!
        if "!I!"=="���Ӧ���̵�����ֹ" (echo ִ�йرշ���)
        echo.
        set H=��¼Microsoft�˻�
        set L=һ��ȫ���Ż�
        echo ����������
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo ����������
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo ������󣬷���������
        pause
        cls
        goto Menu
    )
)


:labelI

if "%I%"=="���Ӧ���̵�����ֹ" (
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
    set I=%I%----------------[���Ż�]
    pause
    cls
goto Menu
) else (
    echo  -----------------------
    echo ^| ���Ѿ��Ż��˴�ѡ�  ^|
    echo ^| I:���Ӧ���̵�����ֹ  ^|
    echo  -----------------------
    set/p v=�Ƿ���Ҫ��ԭΪϵͳĬ������^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM reg delete "HKLM\Software\Policies\Microsoft\WindowsStore" /v RemoveWindowsStore /f
        @REM reg delete "HKLM\Software\Policies\Microsoft\WindowsStore" /v DisableStoreApps /f
        @REM reg delete "HKLM\Software\Policies\Microsoft\Windows\Explorer" /v NoUseStoreOpenWith /f
        @REM if "!H!"=="��¼Microsoft�˻�" (sc config wlidsvc start= disabled)
        echo H:!H!
        if "!H!"=="��¼Microsoft�˻�" (echo ִ�йرշ���)
        echo.
        set I=���Ӧ���̵�����ֹ
        set L=һ��ȫ���Ż�
        echo ����������
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo ����������
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo ������󣬷���������
        pause
        cls
        goto Menu
    )
)


:labelJ

if "%J%"=="�޸��޷����ƶ��ȵ�����ҳ��BUG" (
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
    set J=%J%---[���Ż�]
    pause
    cls
goto Menu
) else (
    echo  ------------------------------------
    echo ^| ���Ѿ��Ż��˴�ѡ�               ^|
    echo ^| J:�޸��޷����ƶ��ȵ�����ҳ��BUG  ^|
    echo  ------------------------------------
    set/p v=�Ƿ���Ҫ��ԭΪϵͳĬ������^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /f
        echo.
        set J=�޸��޷����ƶ��ȵ�����ҳ��BUG
        set L=һ��ȫ���Ż�
        echo ����������
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo ����������
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo ������󣬷���������
        pause
        cls
        goto Menu
    )
)


:labelK

if "%K%"=="�޷�����sabma�����ļ���" (
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
    set K=%K%---------[���Ż�]
    pause
    cls
goto Menu
) else (
    echo  ------------------------------
    echo ^| ���Ѿ��Ż��˴�ѡ�         ^|
    echo ^| K:�޷�����sabma�����ļ���  ^|
    echo  ------------------------------
    set/p v=�Ƿ���Ҫ��ԭΪϵͳĬ������^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        @REM reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /f
        echo.
        set K=�޷�����sabma�����ļ���
        set L=һ��ȫ���Ż�
        echo ����������
        pause
        cls
        goto Menu
    ) else if /i "!v!"=="N" (
        echo.
        echo ����������
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo ������󣬷���������
        pause
        cls
        goto Menu
    )
)


:labelL

if "%L%"=="һ��ȫ���Ż�" (
    echo �Ż�Lѡ��
    set A=�޸����븴�ӳ̶�------------------[���Ż�]
    set B=�ر��Թ���Ա��׼ģʽ�������й���Ա[���Ż�]
    set C=�رչػ��������ҳ����������ٶ�--[���Ż�]
    set D=�ر�ÿ�ε�½����Ҫ��Ctrl+Alt+Del--[���Ż�]
    set E=����Զ����������------------------[���Ż�]
    set F=�޸�10�����Զ���������������Ļ����[���Ż�]
    set G=��������ͷ����˷�Ȩ��------------[���Ż�]
    set H=��¼Microsoft�˻�-----------------[���Ż�]
    set I=���Ӧ���̵�����ֹ----------------[���Ż�]
    set J=�޸��޷����ƶ��ȵ�����ҳ��BUG---[���Ż�]
    set K=�޷�����sabma�����ļ���---------[���Ż�]
    set L=һ��ȫ���Ż�----------------------[���Ż�]
    pause
    cls
    goto Menu
) else (
    echo  ---------------------
    echo ^| ���Ѿ��Ż�ȫ��ѡ�� ^|
    echo  ---------------------
    set/p v=�Ƿ���Ҫȫ����ԭΪϵͳĬ������^(Y/N^):
    if /i "!v!"=="Y" (
        echo.
        echo ȫ����ԭΪϵͳĬ������
        echo.
        pause
        cls
        goto LabelM
    ) else if /i "!v!"=="N" (
        echo.
        echo ����������
        pause
        cls
        goto Menu
    ) else (
        echo.
        echo ������󣬷���������
        pause
        cls
        goto Menu
    )
)


:labelM
echo.
echo �Ż�Mѡ��
echo.
set A=�޸����븴�ӳ̶�
set B=�ر��Թ���Ա��׼ģʽ�������й���Ա
set C=�رչػ��������ҳ����������ٶ�
set D=�ر�ÿ�ε�½����Ҫ��Ctrl+Alt+Del
set E=����Զ����������
set F=�޸�10�����Զ���������������Ļ����
set G=��������ͷ����˷�Ȩ��
set H=��¼Microsoft�˻�
set I=���Ӧ���̵�����ֹ
set J=�޸��޷����ƶ��ȵ�����ҳ��BUG
set K=�޷�����sabma�����ļ���
set L=һ��ȫ���Ż�
pause
cls
goto Menu

pause