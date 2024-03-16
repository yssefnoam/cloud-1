# cloud-1
Automate Wordpress deployment (inception).

# INSTALL AND RUN SERVICES
ansible-playbook -i hosts playbook.yml --tags  "install"

# DELETE ALL SERVICES
ansible-playbook -i hosts playbook.yml --tags  "delete"

# wordpress admin panel
https://ip//wp-admin