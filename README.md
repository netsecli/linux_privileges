# Linux提权漏洞环境
**`PS：请勿用于生产环境`**

简介： 
  这是一个Linux提权的容器靶场，目前支持SUID和SUDO提权环境，支持提权命令如下：
```vim
bash
more
less
nano
cp
awk
wget
su
cat
```
<div align="center">
  <img src="https://github.com/netsecli/linux_privileges/blob/main/sudo.png">
</div>

## 使用方法
```
git clone https://github.com/netsecli/linux_privileges.git
cd linux_privileges/suid_sudo
docker build -t vuln_privige:v1.0 .
docker run -d -p 2222:22 --name=vulns vuln_privige:v1.0
```
<div align="center">
  <img src="https://github.com/netsecli/linux_privileges/blob/main/use.png">
</div>

## 连接方式
账号和密码均为admin,SSH端口设置为2222，可以按需修改Dockerfile

## 提权方法参考
https://gtfobins.github.io

