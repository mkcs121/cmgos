@echo off&PUSHD %~DP0
mode con cols=47 lines=30
title ����V2020-L ����:HJiM
color 3e

SETLOCAL enabledelayedexpansion

rem �Թ���Ա���������
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c ""%~s0"" ::","","runas",1)(window.close)&&exit

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
    echo [Unicode] > A.inf
    echo Unicode=yes >> A.inf
    echo [System Access] >> A.inf
    echo MinimumPasswordAge = 0 >> A.inf
    echo MaximumPasswordAge = -1 >> A.inf
    echo MinimumPasswordLength = 0 >> A.inf
    echo PasswordComplexity = 0 >> A.inf
    echo [Version] >> A.inf
    echo signature="$CHICAGO$" >> A.inf
    echo Revision=1 >> A.inf
    secedit /configure /db A.sdb /cfg A.inf /log A.log /quiet
    del A.*
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
    echo [Unicode] > C.inf
    echo Unicode=yes >> C.inf
    echo [Registry Values] >> C.inf
    echo MACHINE\System\CurrentControlSet\Control\Session Manager\Memory Management\ClearPageFileAtShutdown=4,0 >> C.inf
    echo [Version] >> C.inf
    echo signature="$CHICAGO$" >> C.inf
    echo Revision=1 >> C.inf
    secedit /configure /db C.sdb /cfg C.inf /log C.log /quiet
    del C.*
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
        echo [Unicode] > C.inf
        echo Unicode=yes >> C.inf
        echo [Registry Values] >> C.inf
        echo MACHINE\System\CurrentControlSet\Control\Session Manager\Memory Management\ClearPageFileAtShutdown=4,1 >> C.inf
        echo [Version] >> C.inf
        echo signature="$CHICAGO$" >> C.inf
        echo Revision=1 >> C.inf
        secedit /configure /db C.sdb /cfg C.inf /log C.log /quiet
        del C.*
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
    echo [Unicode] > D.inf
    echo Unicode=yes >> D.inf
    echo [Registry Values] >> D.inf
    echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCAD=4,1 >> D.inf
    echo [Version] >> D.inf
    echo signature="$CHICAGO$" >> D.inf
    echo Revision=1 >> D.inf
    secedit /configure /db D.sdb /cfg D.inf /log D.log /quiet
    del D.*
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
        echo [Unicode] > D.inf
        echo Unicode=yes >> D.inf
        echo [Registry Values] >> D.inf
        echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCAD=4,0 >> D.inf
        echo [Version] >> D.inf
        echo signature="$CHICAGO$" >> D.inf
        echo Revision=1 >> D.inf
        secedit /configure /db D.sdb /cfg D.inf /log D.log /quiet
        del D.*
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
    echo [Unicode] > E.inf
    echo Unicode=yes >> E.inf
    echo [Registry Values] >> E.inf
    echo MACHINE\System\CurrentControlSet\Control\Lsa\ForceGuest=4,0 >> E.inf
    echo [Privilege Rights] >> E.inf
    echo SeNetworkLogonRight = Administrator >> E.inf
    echo [Version] >> E.inf
    echo signature="$CHICAGO$" >> E.inf
    echo Revision=1 >> E.inf
    secedit /configure /db E.sdb /cfg E.inf /log E.log /quiet
    del E.*
    reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v fDenyTSConnections /t REG_DWORD /d 0 /f > nul
    reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v MaxInstanceCount /t REG_DWORD /d 999999 /f > nul
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
        echo [Unicode] > E.inf
        echo Unicode=yes >> E.inf
        echo [Registry Values] >> E.inf
        echo MACHINE\System\CurrentControlSet\Control\Lsa\ForceGuest=4,1 >> E.inf
        echo [Privilege Rights] >> E.inf
        echo SeNetworkLogonRight = >> E.inf
        echo [Version] >> E.inf
        echo signature="$CHICAGO$" >> E.inf
        echo Revision=1 >> E.inf
        secedit /configure /db E.sdb /cfg E.inf /log E.log /quiet
        del E.*
        reg delete "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v fDenyTSConnections /f > nul
        reg delete "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v MaxInstanceCount /f > nul
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
    reg add "HKLM\Software\Policies\Microsoft\Windows\Personalization" /v NoLockScreen /t REG_DWORD /d 1 /f > nul
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveActive /f > nul
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveTimeOut /f > nul
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaverIsSecure /f > nul
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v SCRNSAVE.EXE /f > nul
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
        reg delete "HKLM\Software\Policies\Microsoft\Windows\Personalization" /v NoLockScreen /f > nul
        reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveActive /t REG_SZ /d 1 /f > nul
        reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveTimeOut /t REG_SZ /d 600 /f > nul
        reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaverIsSecure /t REG_SZ /d 1 /f > nul
        reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v SCRNSAVE.EXE /t REG_SZ /d ssText3D.scr /f > nul
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
    reg add "HKLM\Software\Policies\Microsoft\Windows" /v LetAppsAccessCamera /t REG_DWORD /d 0 /f > nul
    reg add "HKLM\Software\Policies\Microsoft\Windows" /v LetAppsAccessMicrophone /t REG_DWORD /d 0 /f > nul
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
        reg add "HKLM\Software\Policies\Microsoft\Windows" /v LetAppsAccessCamera /t REG_DWORD /d 2 /f > nul
        reg add "HKLM\Software\Policies\Microsoft\Windows" /v LetAppsAccessMicrophone /t REG_DWORD /d 2 /f > nul
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
    echo [Unicode] > H.inf
    echo Unicode=yes >> H.inf
    echo [Registry Values] >> H.inf
    echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoConnectedUser=4,0 >> H.inf
    echo [Version] >> H.inf
    echo signature="$CHICAGO$" >> H.inf
    echo Revision=1 >> H.inf
    secedit /configure /db H.sdb /cfg H.inf /log H.log /quiet
    del H.*
    reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 0 /f > nul
    sc config wlidsvc start= delayed-auto > nul
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
        echo [Unicode] > H.inf
        echo Unicode=yes >> H.inf
        echo [Registry Values] >> H.inf
        echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoConnectedUser=4,3 >> H.inf
        echo [Version] >> H.inf
        echo signature="$CHICAGO$" >> H.inf
        echo Revision=1 >> H.inf
        secedit /configure /db H.sdb /cfg H.inf /log H.log /quiet
        del H.*
        reg delete "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /f > nul
        if "!I!"=="���Ӧ���̵�����ֹ" (sc config wlidsvc start= disabled > nul)
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
    reg add "HKLM\Software\Policies\Microsoft\WindowsStore" /v RemoveWindowsStore /t REG_DWORD /d 0 /f > nul
    reg add "HKLM\Software\Policies\Microsoft\WindowsStore" /v DisableStoreApps /t REG_DWORD /d 1 /f > nul
    reg add "HKLM\Software\Policies\Microsoft\Windows\Explorer" /v NoUseStoreOpenWith /t REG_DWORD /d 0 /f > nul
    sc config wlidsvc start= delayed-auto > nul
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
        reg delete "HKLM\Software\Policies\Microsoft\WindowsStore" /v RemoveWindowsStore /f > nul
        reg delete "HKLM\Software\Policies\Microsoft\WindowsStore" /v DisableStoreApps /f > nul
        reg delete "HKLM\Software\Policies\Microsoft\Windows\Explorer" /v NoUseStoreOpenWith /f > nul
        if "!H!"=="��¼Microsoft�˻�" (sc config wlidsvc start= disabled > nul)
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
    reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /t REG_SZ /d hide:network-directaccess /f > nul
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
        reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /f > nul
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
    reg add "HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation" /v AllowInsecureGuestAuth /t REG_DWORD /d 1 /f > nul
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
        reg delete "HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation" /v AllowInsecureGuestAuth /f > nul
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
    echo.
    echo [Unicode] > all.inf
    echo Unicode=yes >> all.inf
    echo [System Access] >> all.inf
    echo MinimumPasswordAge = 0 >> all.inf
    echo MaximumPasswordAge = -1 >> all.inf
    echo MinimumPasswordLength = 0 >> all.inf
    echo PasswordComplexity = 0 >> all.inf
    echo [Event Audit] >> all.inf
    echo [Registry Values] >> all.inf
    echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCAD=4,1 >> all.inf
    echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA=4,0 >> all.inf
    echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoConnectedUser=4,0 >> all.inf
    echo MACHINE\System\CurrentControlSet\Control\Lsa\ForceGuest=4,0 >> all.inf
    echo MACHINE\System\CurrentControlSet\Control\Session Manager\Memory Management\ClearPageFileAtShutdown=4,0 >> all.inf
    echo [Privilege Rights] >> all.inf
    echo SeNetworkLogonRight = Administrator >> all.inf
    echo [Version] >> all.inf
    echo signature="$CHICAGO$" >> all.inf
    echo Revision=1 >> all.inf
    secedit /configure /db all.sdb /cfg all.inf /log all.log /quiet
    del all.*
    reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v fDenyTSConnections /t REG_DWORD /d 0 /f > nul
    reg add "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v MaxInstanceCount /t REG_DWORD /d 999999 /f > nul
    reg add "HKLM\Software\Policies\Microsoft\Windows\Personalization" /v NoLockScreen /t REG_DWORD /d 1 /f > nul
    reg add "HKLM\Software\Policies\Microsoft\Windows" /v LetAppsAccessCamera /t REG_DWORD /d 0 /f > nul
    reg add "HKLM\Software\Policies\Microsoft\Windows" /v LetAppsAccessMicrophone /t REG_DWORD /d 0 /f > nul
    reg add "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 0 /f > nul
    reg add "HKLM\Software\Policies\Microsoft\WindowsStore" /v RemoveWindowsStore /t REG_DWORD /d 0 /f > nul
    reg add "HKLM\Software\Policies\Microsoft\WindowsStore" /v DisableStoreApps /t REG_DWORD /d 1 /f > nul
    reg add "HKLM\Software\Policies\Microsoft\Windows\Explorer" /v NoUseStoreOpenWith /t REG_DWORD /d 0 /f > nul
    reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /t REG_SZ /d hide:network-directaccess /f > nul
    reg add "HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation" /v AllowInsecureGuestAuth /t REG_DWORD /d 1 /f > nul
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveActive /f > nul
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveTimeOut /f > nul
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaverIsSecure /f > nul
    reg delete "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v SCRNSAVE.EXE /f > nul
    sc config wlidsvc start= delayed-auto > nul
    echo.
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
echo [Unicode] > Back.inf
echo Unicode=yes >> Back.inf
echo [System Access] >> Back.inf
echo MinimumPasswordAge = 1 >> Back.inf
echo MaximumPasswordAge = 90 >> Back.inf
echo MinimumPasswordLength = 8 >> Back.inf
echo PasswordComplexity = 1 >> Back.inf
echo [Event Audit] >> Back.inf
echo [Registry Values] >> Back.inf
echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableCAD=4,0 >> Back.inf
echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA=4,1 >> Back.inf
echo MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\NoConnectedUser=4,3 >> Back.inf
echo MACHINE\System\CurrentControlSet\Control\Lsa\ForceGuest=4,1 >> Back.inf
echo MACHINE\System\CurrentControlSet\Control\Session Manager\Memory Management\ClearPageFileAtShutdown=4,1 >> Back.inf
echo [Privilege Rights] >> Back.inf
echo SeNetworkLogonRight = >> Back.inf
echo [Version] >> Back.inf
echo signature="$CHICAGO$" >> Back.inf
echo Revision=1 >> Back.inf
secedit /configure /db Back.sdb /cfg Back.inf /log Back.log /quiet
del Back.*
reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveActive /t REG_SZ /d 1 /f > nul
reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaveTimeOut /t REG_SZ /d 600 /f > nul
reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v ScreenSaverIsSecure /t REG_SZ /d 1 /f > nul
reg add "HKCU\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v SCRNSAVE.EXE /t REG_SZ /d ssText3D.scr /f > nul
reg add "HKLM\Software\Policies\Microsoft\Windows" /v LetAppsAccessCamera /t REG_DWORD /d 2 /f > nul
reg add "HKLM\Software\Policies\Microsoft\Windows" /v LetAppsAccessMicrophone /t REG_DWORD /d 2 /f > nul
reg delete "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v fDenyTSConnections /f > nul
reg delete "HKLM\Software\Policies\Microsoft\Windows NT\Terminal Services" /v MaxInstanceCount /f > nul
reg delete "HKLM\Software\Policies\Microsoft\Windows\Personalization" /v NoLockScreen /f > nul
reg delete "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /v DisableWindowsConsumerFeatures /f > nul
reg delete "HKLM\Software\Policies\Microsoft\WindowsStore" /v RemoveWindowsStore /f > nul
reg delete "HKLM\Software\Policies\Microsoft\WindowsStore" /v DisableStoreApps /f > nul
reg delete "HKLM\Software\Policies\Microsoft\Windows\Explorer" /v NoUseStoreOpenWith /f > nul
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v SettingsPageVisibility /f > nul
reg delete "HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation" /v AllowInsecureGuestAuth /f > nul
sc config wlidsvc start= disabled > nul
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