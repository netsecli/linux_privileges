# Linux提权漏洞环境

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

## 使用方法
```git clone https://github.com/netsecli/linux_privileges.git
cd linux_privileges
docker build -t vuln_privige:v1.0 .
docker run -d -p 2222:22 --name=vulns vuln_privige:v1.0
```
## 提权方法参考
https://gtfobins.github.io

