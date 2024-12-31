#OpenStack Single Node Installation using DevStack

#Steps to Install
#bash

#1.Update the Virtual machine
sudo apt update && sudo apt upgrade -y

#2.Install Required Packages
sudo apt install git curl wget python3-dev -y

#3.Create a Stack User
#DevStack requires a non-root user to run. Create a stack user with sudo privileges.
sudo useradd -s /bin/bash -d /opt/stack -m stack
echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/stack

#4.Switch to the stack user...
sudo su - stack

#5.Clone the official DevStack repository
git clone https://opendev.org/openstack/devstack
cd devstack

#Configure DevStack
#6.Create a local.conf file in the devstack directory to specify how OpenStack will be installed.
nano local.conf

    #inside the local.conf file replace these content,

        [[local|localrc]]
        #Credentials
        ADMIN_PASSWORD=$ADMIN_PASSWORD
        DATABASE_PASSWORD=$DATABASE_PASSWORD
        RABBIT_PASSWORD=$RABBIT_PASSWORD
        SERVICE_PASSWORD=$SERVICE_PASSWORD

        #Network Configuration 
        HOST_IP=x.x.x.x  #Replace with your actual IP address

#7.Run the DevStack Installation
./stack.sh

#8.Accessing OpenStack
http://<your-VM-IP-address>/dashboard