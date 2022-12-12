# **Windows 10神州网信版优化**

## 介绍
通过组策略优化Windows 10神州网信版

**制作了一个批处理文件，一键优化，省时省力：**

![][Pic1]
![][Pic2]

[下载地址](https://gitee.com/AiNi21/cmgos/repository/archive/master.zip)

下载完成解压后运行src目录optimize.bat。
程序在虚拟机下测试没有问题

---
## 以下是自己手动修改步骤

> 打开策略组
> Win+R 运行`gpedit.msc`

## 修改密码复杂程度
```
计算机配置--windows设置--安全设置--账户策略--密码策略
把“密码必须符合复杂性要求”禁用
```
```
计算机配置--windows设置--安全设置--账户策略--密码策略
把“密码长度最小值”改为0
```
```
计算机配置--windows设置--安全设置--账户策略--密码策略
把“密码最短使用期限”改为0
```
```
计算机配置--windows设置--安全设置--账户策略--密码策略
把“密码最长使用期限”改为0
```

## 关闭以管理员批准模式运行所有管理员
```
计算机配置--windows设置--安全设置--本地策略--安全选项
把“用户账户控制：以管理员批准模式运行所有管理员”禁用
```

## 关闭关机清除虚拟页面加速启动速度
```
计算机配置--windows设置--安全设置--本地策略--安全选项
把“关机:清除虚拟内存页面文件”禁用
```

## 关闭每次登陆都需要按Ctrl+Alt+Del
```
计算机配置--windows设置--安全设置--本地策略--安全选项
把“交互式登陆:无需按Ctrl+Alt+Del” 选择启用
```

## 启用远程桌面连接
```
计算机配置--windows设置--安全设置--本地策略--安全选项
把“网络访问: 本地帐户的共享和安全模型” 修改为“经典:对本地用户进行身份验证，不改变其本来身份”
```
```
计算机配置--windows设置--安全设置--本地策略--用户权限分配
把“从网络访问此计算机” 添加“Administrators”组
```
```
计算机配置--管理模板--Windows 组件--远程桌面服务--远程桌面会话主机--连接
把“允许用户通过使用远程桌面服务进行远程连接” 选择启用
```
```
计算机配置--管理模板--Windows 组件--远程桌面服务--远程桌面会话主机--连接
把“限制连接的数量” 选择启用并修改为999999
```

## 修改10分钟自动锁屏，并进入屏幕保护
```
计算机配置--管理模板--控制面板--个性化
把“不显示锁屏” 修改为“已启用”
```
```
用户配置--管理模板--控制面板--个性化
把“启用屏幕保护程序” 修改为“未配置”
```
```
用户配置--管理模板--控制面板--个性化
把“屏幕保护程序超时” 修改为“未配置”
```
```
用户配置--管理模板--控制面板--个性化
把“带密码的屏幕保护程序” 修改为“未配置”
```
```
用户配置--管理模板--控制面板--个性化
把“强制使用特定的屏幕保护程序” 修改为“未配置”
```

## 开启摄像头和麦克风权限
```
计算机配置--管理模板--windows组件--应用隐私
把“允许 Windows 应用访问相机”设置为“已启用”，“由用户控制”
```
```
计算机配置--管理模板--windows组件--应用隐私
把“允许 Windows 应用访问麦克风”设置为“已启用”，“由用户控制”
```

## 登录Microsoft账户（设置-账户中，改为Microsoft账户登录，可用）
```
计算机配置--Windows设置--安全设置--本地策略--安全选项
把“账户：阻止Microsoft账户”设置为“此策略已禁止”
```
```
计算机配置--管理模板--Windows组件--云内容
把“关闭Microsoft用户体验”设置为“未配置”
```
```
计算机右键管理--服务和应用程序--服务--Microsoft Account Sign-in Assistant
设置为“自动(延迟启动）”
```

## 解除应用商店已阻止（下载和安装应用，也需要启用“登录Microsoft账户”的最后一条）
```
计算机配置--管理模板--系统--Internet通信管理--Internet通信设置
把“关闭访问Microsoft Store”，设置为“未配置”
```
```
计算机配置--管理模板--windows组件--应用商店
把“关闭Microsoft Store应用程序”，设置为“未配置”
```
```
计算机配置--管理模板--windows组件--应用商店
把“禁止来自Microsoft Store的所有应用”，设置为“未配置”
```

## 修复无法打开移动热点设置页面BUG
```
计算机配置 - 管理模板 - 控制面板
把“设置页面可见性”，设置为“已启用”
设置页面可见性：hide:network-directaccess
```

## 无法访问sabma或共享文件夹:
```
计算机配置--管理模板--网络--Lanman 工作站
把“启用不安全的来宾登录”，设置为“已启用”
```


[Pic1]:https://gitee.com/AiNi21/cmgos/raw/master/img/%E9%BB%98%E8%AE%A4%E7%95%8C%E9%9D%A2.png
[Pic2]:https://gitee.com/AiNi21/cmgos/raw/master/img/%E8%BF%90%E8%A1%8C%E7%8A%B6%E6%80%81.png