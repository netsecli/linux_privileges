# Linux提权漏洞环境

简介：
  这是一个Linux提权的容器靶场，目前支持SUID和SUDO提权环境。
  


## 使用方法
git clone https://github.com/netsecli/linux_privileges.git
cd linux_privileges
docker build -t vuln_privige:v1.0 .
docker run -d -p 2222:22 --name=vulns vuln_privige:v1.0
