# Lesson 7

### Trying to connect but servers didn't have openssh-server
```
ansible all -m ping
```
![FingerPrintError](./Screenshots/fingerprints_error.png)

### I decided to build NAT for my convenient
![MyNAT](./Screenshots/nat.png)

### Openssh-servers work fine and ping was good
![PingPong](./Screenshots/ping_pong.png)

### Now I could access an each server by MobaXterm
```
ansible all -m ping
```
![MobaXterm](./Screenshots/mobaxterm.png)

### Run a command in the linux environment
```
ansible all -m shell -a "uptime"
```
![Uptime](./Screenshots/uptime.png)

### Run a command
```
ansible all -m command -a "ls /"
```
![Command](./Screenshots/command.png)

### Copy a file to servers
```
ansible all -m copy -a "scr=hi.txt dest=/home/junops mode=777" -b
```
![Copy](./Screenshots/copy.png)

### Remove a file from servers
```
ansible all -m file -a "path=/home/junops/hi.txt state=absent" -b
```
![Remove](./Screenshots/file_absent.png)

### Get URL
```
ansible all -m get_url -a "urll=https://fecton.github.io/aboutme dest=/home/junops/" -b
```
![GetUrl](./Screenshots/get_url.png)

### Setup (Shows info)
```
ansible all -m setup
```
![Setup](./Screenshots/setup.png)

### APT install
```
ansible all -m apt "name=stress state=latest" -b
```
![Apt_install](./Screenshots/apt_install.png)

### APT remove
```
ansible all -m apt "name=stress state=remove" -b
```
![Apt_remove](./Screenshots/apt_remove.png)

### Uri
```
ansible all -m uri "url=https://fecton.github.io/aboutme"
```
```
ansible all -m uri "https://fecton/github.io/aboutme return_content=yes"
```
![Uri](./Screenshots/uri_status.png)

### Enable a service
```
ansible all -m service -a "name=sshd state=started enabled=yes" -b
```
![Service](./Screenshots/service_enable.png)

### Logs (additional info) (1-5)
```
ansible all -m shell -a "ls /home/junops" -v
ansible all -m shell -a "ls /home/junops" -vv
ansible all -m shell -a "ls /home/junops" -vvv
ansible all -m shell -a "ls /home/junops" -vvvv
ansible all -m shell -a "ls /home/junops" -vvvvv
```
![Verbose1](./Screenshots/verbose1.png)
![Verbose1](./Screenshots/verbose2.png)
![Verbose1](./Screenshots/verbose3.png)

### Ansible doc
```
ansible-doc -l
```
![AnsibleDoc](./Screenshots/ansible_doc.png)