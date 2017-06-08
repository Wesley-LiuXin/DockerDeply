#This dockerfile uses the ubuntu image, Add Python.
#Author: wesleyliuxin
FROM ubuntu:trusty
MAINTAINER wesleyliuxin liuxin_coding@sina.com
# APT 自动安装 PHP 相关的依赖包，如需其他依赖包在此添加
RUN apt-get update && \  
      apt-get install -y python \
                       python-dev \
                       python-pip  \
    # 用完包管理器后安排打扫卫生可以显著的减少镜像大小
    && apt-get clean \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
	
RUN mkdir -p /app  
WORKDIR /app

ADD helloPython.py helloPython.py

EXPOSE 80 
CMD ["bash"]
