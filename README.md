# dci-jumpbox

Ansible playbook used to create and configure a jumbox on OpenStack Platform.

## requirements

 * ansible
 * openstackclient
 * OpenStack RC file v3
 * DCI RC files (`remotecirc.sh` and `feederrc.sh`)

## Create jumbox

download and source your OpenStack RC file

    source ./openrc.sh
    
run `create-jumpbox.yml` playbook

    ansible-playbook -i '127.0.0.1,' -e SSH_HOST='<IP>' -e SSH_USER='<user>' -e SSH_PRIVATE_KEY_FILE='<id_rsa>' create-jumpbox.yml
    
## Configure jumbox

download your DCI RC file and run `configure-jumpbox.yml` playbook

    ansible-playbook -u <SUDOER> --private-key=<SSH_PRIVATE_KEY> -i '<IP>,' bootstrap.yml
