ansible-openstack-Newton 
========================

## 开始
环境ubuntu 16.04   
Vigrantfile是虚拟机的配置文件（请自行搭建vagrant+virtualbox）
- ubuntu 14.04地址： 链接：https://pan.baidu.com/s/161_bOMc9w2mCm9zCdvxzmQ 密码：ho7d
- ubuntu 16.04地址： 链接：https://pan.baidu.com/s/1dF3yFIT 密码：njuc
- 导入box： 
   ```bash
   vagrant box add ubuntu/trusty64 package.box
   
   vagrant box add ubuntu-16.04 bento_ubuntu-16.04.box
   ```
- 可自行修改虚拟机ip,其中bridge网卡是桥接网卡，需要修改为你连接的路由器相同网段（即与你宿主机相同网段的ip）

- 启动测试环境
	```bash
	vagrant up
	```


- ssh登陆 账号：vagrant 密码：vagrant
- 用户名：vagrant   密码：vagrant
- 运行ansible-playbook(请在管理机上运行（192.168.221.100）)
	```bash
	cd /vagrant
	
	sudo ansible-playbook -s site.yml
	```
---
#### Update 2018-04-27
	修改更新pip的语句，现在pip 10.0.0有个bug，使用pip 9.0.1
	如果需要使用pip 10.0.0
	可以修改 /usr/bin/pip 文件
	ansible-openstack-Newton 
========================

## 开始
环境ubuntu 16.04   
Vigrantfile是虚拟机的配置文件（请自行搭建vagrant+virtualbox）
- ubuntu 14.04地址： 链接：https://pan.baidu.com/s/161_bOMc9w2mCm9zCdvxzmQ 密码：ho7d
- ubuntu 16.04地址： 链接：https://pan.baidu.com/s/1dF3yFIT 密码：njuc
- 导入box： 
   ```bash
   vagrant box add ubuntu/trusty64 package.box
   
   vagrant box add ubuntu-16.04 bento_ubuntu-16.04.box
   ```
- 可自行修改虚拟机ip,其中bridge网卡是桥接网卡，需要修改为你连接的路由器相同网段（即与你宿主机相同网段的ip）

- 启动测试环境
	```bash
	vagrant up
	```


- ssh登陆 账号：vagrant 密码：vagrant
- 用户名：vagrant   密码：vagrant
- 运行ansible-playbook(请在管理机上运行（192.168.221.100）)
	```bash
	cd /vagrant
	
	sudo ansible-playbook -s site.yml
	```
---
#### Update 2018-04-27
	修改更新pip的语句，现在pip 10.0.0有个bug，使用pip 9.0.1
	如果需要使用pip 10.0.0
	可以修改 /usr/bin/pip 文件
	```
	
	from pip import main
	
	if __name__ == '__main__':
    	sys.exit(main())
	ansible-openstack-Newton 
========================

## 开始
环境ubuntu 16.04   
Vigrantfile是虚拟机的配置文件（请自行搭建vagrant+virtualbox）
- ubuntu 14.04地址： 链接：https://pan.baidu.com/s/161_bOMc9w2mCm9zCdvxzmQ 密码：ho7d
- ubuntu 16.04地址： 链接：https://pan.baidu.com/s/1dF3yFIT 密码：njuc
- 导入box： 
   ```bash
   vagrant box add ubuntu/trusty64 package.box
   
   vagrant box add ubuntu-16.04 bento_ubuntu-16.04.box
   ```
- 可自行修改虚拟机ip,其中bridge网卡是桥接网卡，需要修改为你连接的路由器相同网段（即与你宿主机相同网段的ip）

- 启动测试环境
	```bash
	vagrant up
	```


- ssh登陆 账号：vagrant 密码：vagrant
- 用户名：vagrant   密码：vagrant
- 运行ansible-playbook(请在管理机上运行（192.168.221.100）)
	```bash
	cd /vagrant
	
	sudo ansible-playbook -s site.yml
	```
---
#### Update 2018-04-27
	修改更新pip的语句，现在pip 10.0.0有个bug，使用pip 9.0.1
	如果需要使用pip 10.0.0
	可以修改 /usr/bin/pip 文件
	```bash
	
	from pip import main
	
	if __name__ == '__main__':
    	sys.exit(main())
	```
	
	改为：
	
	```bash
	
	from pip import main

	if __name__ == '__main__':
    	sys.exit(main())
	```


#### Update 2017-12-26
	解决openstack network agent list 全down的问题


#### Update 2017-12-20
	Dashboard能用
	Neutron
	openstack network agent list 任然全是down....

#### Update 2017-12-19
	增加Neutron and Dashboard
	但是 openstack network agent list 却始终是down状态。。。。正在解决

#### Update 2017-12-18
	解决nova同步数据出错

#### Update 2017-12-15
	在上传镜像之前update and upgrade后
	再上传镜像就OK，-.- 很是不解
	
#### Update 2017-12-14
	添加nova-controller and nova-compute
	
	发现了点问题，ansible自动在glance创建镜像报错，无法执行，正在解决...

#### Update 2017-12-13
	添加glance

#### Update 2017-12-8
	添加keystone

#### Update 2017-12-4

安装了基础环境:

- chrony
- mariadb
- rabbitmq
- memcached
- CREATE DATABASE

	

	
	改为：
	
	```
	
	from pip import main

	if __name__ == '__main__':
    	sys.exit(main())
	```


#### Update 2017-12-26
	解决openstack network agent list 全down的问题


#### Update 2017-12-20
	Dashboard能用
	Neutron
	openstack network agent list 任然全是down....

#### Update 2017-12-19
	增加Neutron and Dashboard
	但是 openstack network agent list 却始终是down状态。。。。正在解决

#### Update 2017-12-18
	解决nova同步数据出错

#### Update 2017-12-15
	在上传镜像之前update and upgrade后
	再上传镜像就OK，-.- 很是不解
	
#### Update 2017-12-14
	添加nova-controller and nova-compute
	
	发现了点问题，ansible自动在glance创建镜像报错，无法执行，正在解决...

#### Update 2017-12-13
	添加glance

#### Update 2017-12-8
	添加keystone

#### Update 2017-12-4

安装了基础环境:

- chrony
- mariadb
- rabbitmq
- memcached
- CREATE DATABASE

	

	
	from pip import main
	
	if __name__ == '__main__':
    	sys.exit(main())
	```
	
	改为：
	
	```
	
	from pip import main

	if __name__ == '__main__':
    	sys.exit(main())
	```


#### Update 2017-12-26
	解决openstack network agent list 全down的问题


#### Update 2017-12-20
	Dashboard能用
	Neutron
	openstack network agent list 任然全是down....

#### Update 2017-12-19
	增加Neutron and Dashboard
	但是 openstack network agent list 却始终是down状态。。。。正在解决

#### Update 2017-12-18
	解决nova同步数据出错

#### Update 2017-12-15
	在上传镜像之前update and upgrade后
	再上传镜像就OK，-.- 很是不解
	
#### Update 2017-12-14
	添加nova-controller and nova-compute
	
	发现了点问题，ansible自动在glance创建镜像报错，无法执行，正在解决...

#### Update 2017-12-13
	添加glance

#### Update 2017-12-8
	添加keystone

#### Update 2017-12-4

安装了基础环境:

- chrony
- mariadb
- rabbitmq
- memcached
- CREATE DATABASE

	
