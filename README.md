# dci-atomic-host-jumpbox

Ansible playbook used to create jumbox on RDO cloud.
This jumbox is configured to run every day [Atomic Host Tests](https://github.com/projectatomic/atomic-host-tests) and send results to [DCI](https://distributed-ci.io).

## requirements

 * python3
 * OpenStack Platform
 * OpenStack RC file v3

## create virtualenv
    
    python3 -m venv venv
    source venv/bin/activate
    python -m pip install -r requirements.txt
    
## Download and source your OpenStack RC file

    source ./openrc.sh

## Create jumbox

    source venv/bin/activate
    ansible-playbook -i '127.0.0.1,' -e SSH_HOST='<ip>' -e SSH_USER='<user>' -e SSH_PRIVATE_KEY_FILE='<id_rsa>' jumpbox.yml
