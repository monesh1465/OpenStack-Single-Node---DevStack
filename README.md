# OpenStack-SingleNodeDevStack
OpenStack Single Node Deployment using DevStack.

This guide walks you through the steps to set up a single-node OpenStack environment using DevStack on an Ubuntu virtual machine.

The specifications of the setup:

Operating System: Ubuntu 22.04
Virtualization Platform: VirtualBox
VM Configuration:
  10 GB RAM
  4 CPUs
  Networking: Bridged Adapter with static IP configuration using Netplan file

## Steps to Install

### Step 1: Update the Virtual Machine
Update your system to ensure you have the latest packages.

### Step 2: Install Required Packages
Install essential tools and dependencies required for DevStack.

### Step 3: Create a Stack User
DevStack requires a non-root user. Create a `stack` user with sudo privileges to proceed.

### Step 4: Switch to the Stack User
Log in as the newly created `stack` user to perform further installation steps.

### Step 5: Clone the Official DevStack Repository
Download the DevStack repository from the official OpenDev GitHub page.

### Step 6: Configure DevStack
Create and edit the `local.conf` file in the DevStack directory to configure credentials and network settings for your setup.

### Step 7: Run the DevStack Installation
Start the DevStack installation process. This step will install all necessary OpenStack components.

### Step 8: Accessing OpenStack
Once the installation is complete, access the OpenStack Horizon dashboard through a web browser using the provided URL.
