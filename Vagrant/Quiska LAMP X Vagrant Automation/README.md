# Vagrant-LAMP-Automate
 -- To Automate the provision and hosting of LAMP web application to Linux (ubuntu) using Vagrantfile --

Prerequisite:-
1. Vagrant (For Automation of Vm's Provisions)
2. Hypervisor (Ex. Oracle virtualbox)
3. Terminal (Ex. Gitbash)

How to Run:-
Step 1. Clone the Repository.

Step 2. Install all Prequisites.

Step 3. Open the Directory using GitBash.

Step 4. Type "vagrant up" and the Vm's will start booting up.

Step 5. After booting of vm, Type "vagrant ssh" which will login to the linux machine.

Step 6. Type "sudo -i" to switch to root user.

Step 7. Type "apt install phpmyadmin -y" to install phpmyadmin to setup connection between database and php scripts.

Step 8. Answer the prompt for phpmyadmin installation.

![image](https://user-images.githubusercontent.com/92919113/210528187-f128bb8b-827e-4624-a82a-f5fc47457aba.png)

![image](https://user-images.githubusercontent.com/92919113/210528359-495da9b0-c697-4a58-aa91-4112bb67b019.png)

Password is "password"
![image](https://user-images.githubusercontent.com/92919113/210528458-2cc96d6f-0f20-4b17-835e-f6558efc253b.png)

Step 9: Type "vim /etc/apache2/apache2.conf" and add "Include /etc/phpmyadmin/apache.conf" to last line and save the changes.

Step 10: Type "systemctl restart apache2" to restart apache2 services.

Step 10: Type "systemctl restart mysql" to restart mysql services.


Done!

Validate:- 
Open browser and search http://192.168.33.15/
