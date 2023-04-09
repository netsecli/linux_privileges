FROM ubuntu:latest
# 设置更新源为阿里云
RUN sed -i 's/archive\.ubuntu\.com/mirrors.aliyun.com/g' /etc/apt/sources.list
RUN apt-get -y update
# 安装依赖环境 
RUN apt-get install less nano wget vim sudo openssh-client openssh-server -y
RUN mkdir /var/run/sshd
# SSH登录配置
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
# 添加用户并设置密码
RUN useradd -ms /bin/bash admin
RUN echo 'admin:admin' | chpasswd
RUN echo "export VISIBLE=now" >> /etc/profile
# 设置sudo权限
RUN mv /etc/sudoers /etc/sudoers.bak
ADD sudoers /etc/sudoers
# 设置SUID权限
RUN chmod u+s /usr/bin/vim & chmod u+s /usr/bin/bash & chmod u+s /usr/bin/more & chmod u+s /usr/bin/less & chmod u+s /usr/bin/nano & chmod u+s /usr/bin/cp & chmod u+s /usr/bin/awk & chmod u+s /usr/bin/wget & chmod u+s /usr/bin/su & chmod u+s /usr/bin/cat

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
