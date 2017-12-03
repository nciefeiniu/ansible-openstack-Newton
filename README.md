ansible-openstack-Newton 
========================

## 开始
环境ubuntu 16.04
Vigrantfile是虚拟机的配置文件（请自行搭建vagrant+virtualbox）
- ubuntu 14.04地址： 链接：https://pan.baidu.com/s/1miBrRS0 密码：u20d
- ubuntu 16.04地址： 链接：https://pan.baidu.com/s/1dF3yFIT 密码：njuc
- 导入box： 
   ```bash
   vagrant box add ubuntu/trusty64 package.box
   vagrant box add ubuntu-16.04 bento_ubuntu-16.04.box
   ```
- 启动测试环境
	```bash
	vagrant up
	```


## 2017-12-3
    安装了基础环境:
	- chrony
	- mariadb
	- rabbitmq
	- memcached
	- CREATE DATABASE
	
