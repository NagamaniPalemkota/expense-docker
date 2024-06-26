#!/bin/bash
R="\e[31m"
N="\e[0m"
if [$USERID -ne 0]
then
    echo -e "Please run with super user access"
    exit 1
else
    echo -e "You're super user"
fi
yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
systemctl start docker
systemctl enable docker
usermod -aG docker ec2-user
echo -e "$R Logout and login again $N"
