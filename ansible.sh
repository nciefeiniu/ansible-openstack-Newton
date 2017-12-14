      apt-get install -y python-pip python-dev libffi-dev libssl-dev
      mkdir -p ~/.pip
      cat > ~/.pip/pip.conf <<EOF
[global]
trusted-host=mirrors.aliyun.com 

index-url=http://mirrors.aliyun.com/pypi/simple/ 

EOF
      cat >> /etc/ssh/ssh_config <<EOF   
    StrictHostKeyChecking no
    UserKnownHostsFile=/dev/null
EOF
      pip install ansible