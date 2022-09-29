#                         Devops Intern

## 1.Basic concepts of different linux distributions

- A Linux distribution -- often shortened to "Linux distro" -- is a version of the open source Linux operating system that is packaged with other components, such as an installation programs, management tools and additional software such as the KVM hypervisor.

  Linux distributions, which are based on the Linux kernel, are often easier for users to deploy than the traditional open source version of Linux. 

  Some distributions, such as [Fedora](https://www.techtarget.com/searchdatacenter/definition/Fedora) and Red Hat Enterprise Linux from Red Hat, openSUSE from SUSE, Ubuntu from Canonical, and Oracle Linux from Oracle, are commercial, while others, such as Debian and Slackware, are community-developed

  #### (a) Why Linux ? What is Open Source ?

  - Open source is a term that originally referred to open source software (OSS). Open source software is code that is designed to be publicly accessible—anyone can see, modify, and distribute the code as they see fit.
  - **Because Linux is released under an open source license, which prevents restrictions on the use of the software**, anyone can run, study, modify, and redistribute the source code, or even sell copies of their modified code, as long as they do so under the same license

  #### (b) How SSH works

  - SSH, or Secure Shell Protocol, is a remote administration protocol that allows users to access, control, and modify their remote servers over the internet.

  - When you connect through SSH, you will be dropped into a shell session, which is a text-based interface where you can interact with your server. For the duration of your SSH session, any commands that you type into your local terminal are sent through an encrypted SSH tunnel and executed on your server

  - ssh authenticate users through passwords and ssh key

  - ```bash
    # how to generate ssh key
    $ ssh-keygen
    # To copy your public key to a server, allowing you to authenticate without a password
    $ ssh-copy-id username@remote_host
    # how to ssh 
    $ ssh username@remote_host
    # how to ssh with private key of remote server
    $ ssh -i private.pem username@remote_host
    # how to ssh with different port
    $ ssh -p port_num username@remote_host
    
    
    ```

  #### (c) Modifying permissions of folders and file

  - ```bash
    # how to change permission of folder u=user g=group o=other
    $ chmod u-x,g=rwx,o+x /devteam
    # change permission to all user,group and other like write to all 
    $ chmod +w /devteam
    # change permission to all
    $ chmod ugo-x /devteam
    # to give permission to all 
    $ chmod ugo=rwx
    # change permission to al users
    $ chmod ugo=---
    # change permission to specific user by adding to specific group
    $ usermod -G root user1
    # then change permission of group
    $ chmod g=rwx 
    # how to change owner and group at the same time
    $ chown root:root /devteam
    #NOTE how to apply permission to the child from parent directory
    $ chmod 777 -R /devteam
    # NOTE  change group of all files under directory recursively
    $ chgrp team -R /devteam
    ```

  #### (d) Usage of VIM/Nano editor

  - ##### Important Commands in Esc mode

    - If you want to delete this where is your cursor press **x**

    - If you want to delete the specific range of characteristics from the line **like next 7 character press 7x**

    - if you want to delete the whole word  press **dw**

    - if you want to undo any action press **u**

    - if you want to redo any previous action that is undone by undo press **ctl+**

      

    - If you want to delete the whole line press **dd and 5dw**

    - If you want to delete next 5 lines **5dd**

    - If you want your cursor should go the bottom then press **shift+g**

    - If you want your cursor go the top then press **gg**

    - If you want to undo changes press **u**

    - If you want to redo changes press **ctl+r**

    - If you want to come out this file press **shift+zz**

    - 

  - ##### Important commands of insert mode

    - If you want  you write after your cursor then press  **a**
    - If you want to you write before cursor then press **i**
    - If you want you write in a new line upon your cursor then **shift+o**
    - If you want you write on the new line then press **o**

    

  - ##### Important commands of command line 

    - if you want show line numbers you press **:se nu**
    - if you want line numbers then press **:se nonu**
    - if you want go to line number 12 **:15**

  #### (e) Basic use of Net tools([22 Linux Networking Commands for Sysadmin ](https://www.tecmint.com/linux-networking-commands/))

  - **ifconfig**

    - is a command-line interface tool for network interface configuration and is also used to initialize interfaces at system boot time. Once a server is up and running, it can be used to assign an IP Address to an interface and enable or disable the interface on demand.

    - It is also used to view the IP Address, Hardware / MAC address, as well as MTU (Maximum Transmission Unit) size of the currently active interfaces. ifconfig is thus useful for debugging or performing system tuning.

    - ```bash
      # To list all interfaces which are currently available, whether up or down, use the -a flag
      $ ifconfig -a 
      # To assign an IP address to an interface, use the following command.
      $ sudo ifconfig eth0 192.168.56.5 netmask 255.255.255.0
      # To activate a network interface, type.
      $ sudo ifconfig up eth0
      # To deactivate or shut down a network interface, type.
      $ sudo ifconfig down eth0
      ```

      

  - **IP**

    - is another useful command-line utility for displaying and manipulating routing, network devices, interfaces. It is a replacement for **ifconfig** and many other networking commands

    - ```bash
      # it will show the IP address and other information about a network interface.
      $ ip addr show
      # To temporarily assign IP Address to a specific network interface (eth0), type.
      $ sudo ip addr add 192.168.56.1 dev eth0
      # To remove an assigned IP address from a network interface (eth0), type.
      $ sudo ip addr del 192.168.56.15/24 dev eth0
      # 
      ```

  - **ping**

    -  is a utility normally used for testing connectivity between two systems on a network (**Local Area Network** (**LAN**) or **Wide Area Network** (**WAN**)). It uses **ICMP** (**Internet Control Message Protocol**) to communicate to nodes on a network.

    - ```bash
      $ ping 192.168.0.103
      # to tell the number of echo like 4 times
      $ ping -c 4 192.168.0.103
      
      ```

  - **traceout**

    - **Traceroute** is a command-line utility for tracing the full path from your local system to another network system. It prints a number of hops (router IPs) in that path you travel to reach the end server. It is an easy-to-use network troubleshooting utility after the ping command.

    - ```bash
      $ traceroute 216.58.204.46
      ```

  - **mtr**

    - is a modern command-line network diagnostic tool that combines the functionality of **ping** and **traceroute** into a single diagnostic tool. Its output is updated in real-time, by default until you exit the program by pressing `q`

    - ```bash
      $ mtr -c 4 google.com
      ```


  - **nmcli**

    - is an easy-to-use, scriptable command-line tool to report network status, manage network connections, and control the **NetworkManager**.

    - ```bash
      # To view all your network devices, type.
      $ nmcli dev status
      # To check network connections on your system, type.
      $ nmcli con show
      # To see only the active connections, add the -a flag
      $ nmcli con show -a
      ```

  - **netstat**

    - command-line tool that displays useful information such as network connections, routing tables, interface statistics, and much more, concerning the Linux networking subsystem. It is useful for network troubleshooting and performance analysis.

    - it is also a fundamental network service debugging tool used to check which programs are listening on what ports. For instance, the following command will show all TCP ports in listening mode and what programs are listening on them

    - ```bash
      $ sudo netstat -tnlp
      # To view the kernel routing table, use the -r flag
      $ netstat -r
      ```

  - **dig**

    - (**domain information groper**) is also another simple DNS lookup utility, that is used to query DNS related information such as A Record, CNAME, MX Record

    - ```bash
      $ dig google.com
      ```

  - **nslookup**

    -  is also a popular command-line utility to query DNS servers both interactively and non-interactively. It is used to query DNS resource records (RR). You can find out the **“A”** record (IP address) of a domain as

    - ```bash
      $  nslookup google.com
      $  nslookup 216.58.208.174
      ```

  - **tcpdump**

    - is a very powerful and widely used command-line network sniffer. It is used to capture and analyze TCP/IP packets transmitted or received over a network on a specific interface

    - ```bash
      $ tcpdump -i eth1
      # To capture a specific number of packets, use the -c option to enter the desired number.
      $ tcpdump -c 5 -i eth1(f) Utilities
      ```

- #### (f) Utilities

  -  Printing and Email as the basic utilities of Unix

  - **pr(print)**

    - ```bash
      # Let's use the pr command to make a two-column report with the header Restaurants
      $ pr -2 -h "Restaurants" food.txt
      
      ```

  - **mail**

    - ```bash
      # send mail to another user
      $ mail -s "Test Message" admin@yahoo.com 
      # to see list of mails
      $ mail
      ```

  

  
  
-   #### (g) FileSystem

  - Linux file system is the collection of data and/or files stored in a computer’s hard disk or storage, your computer relies on this file system to ascertain the location and positioning of files in your storage,  and types of file system  ext, ext2, ext3, ext4, xfs, swap and directory list
  
  - root (it is home directory for root user)
  - boot( here all the boot files stored)
  - etc (all configuration files stored in this directory)
  - bin (all commands stored)
  - sbin( all commands that root can execute)
  - dev (all hard disk and pen drive stored over there)
  - lib (libraries of 32 bit)
  - lib64 (libraries of 64 bit)
  - opt ( all third parties software stored here)
  - proc (all process information stored over there)
  - mnt ( all mounting information is stored here)
  - run (when you want to see multimedia it help you)
  - usr (all information of user is stored like help, mail etc)
