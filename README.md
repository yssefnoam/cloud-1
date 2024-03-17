<!-- # cloud-1
### Description:
Automate Wordpress deployment (inception).

### Requirement:


# INSTALL AND RUN SERVICES
ansible-playbook -i hosts playbook.yml --tags  "install"

# DELETE ALL SERVICES
ansible-playbook -i hosts playbook.yml --tags  "delete"

# wordpress admin panel
https://ip//wp-admin -->


<h4 align="center">Automation of Wordpress deployment (inception)</h4>

<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#install-ansible">Install Ansible</a> •
  <a href="#cloud-server">Cloud Server</a> •
  <a href="#setup-instruction">Setup Instruction</a> •
  <a href="#deployment">Deployment</a>
  <a href="#delete-services">Delete Services</a>
</p>


## Key Features

* automation deployment with ansible
* delete deployment 

## How To Use

To clone and run this application, you'll need [Git](https://git-scm.com) and [Ansible](https://www.ansible.com/overview/how-ansible-works) installed on your computer. From your command line:

```bash
# Clone this repository
$ git clone https://github.com/yssefnoam/cloud-1.git

# Go into the repository
$ cd cloud-1
```
## Install Ansible

```bash
# Macos
$ brew install ansible

# Linux
$ apt install ansible

# python
$ pip install ansible
```

> **Note:**
> more docs on how to install ansible , [see this guide](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).


## Cloud Server

Create a vm (server) on the cloud (Ex: [DigitalOcean](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-20-04))

put your ssh public key to the server + get the public ip of the server.

## Setup Instruction

Follow this steps for setuping the variable of the projects in [./vars.yml](https://github.com/yssefnoam/cloud-1/blob/main/vars.yml) file, full variables with values:

- app_dir: application directory in the server :
    ```bash
    app_dir: /app/
    ```
- database_user: database container user:
    ```bash
    database_user: youruser
    ```
- database_password: database container password:
    ```bash
    database_password: yourpassword
    ```
- database_name: database name:
    ```bash
    database_name: wordpress
    ```
- wp_user: wordpress admin user:
    ```bash
    wp_user: wpuser
    ```
- wp_password: wordpress admin password:
    ```bash
    wp_password: wppassword
    ```
- wp_site_name: wordpress website name:
    ```bash
    wp_site_name: cloudone
    ```
- wp_email: wordpress admin email:
    ```bash
    wp_email: "admin@example.com"
    ```

## Deployment
```bash
# INSTALL AND RUN SERVICES
ansible-playbook -i hosts playbook.yml --tags  "install"
```

## Delete Services
```bash
ansible-playbook -i hosts playbook.yml --tags  "delete"
```
## More
#### Site
```bash
https://ip:443
```
#### Site Admin panel
```bash
https://ip/wp-admin 
```
#### Phpmyadmin panel
```bash
https://ip/phpmyadmin
```