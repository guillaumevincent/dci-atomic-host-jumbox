#!/usr/bin/env bash
pushd "/home/centos/dci-atomic-host-agent"
git fetch -a
git checkout master
git reset --hard origin/master
source ./openrc.sh
source ./dcirc.sh
ansible-playbook -e topic='Fedora-Atomic-26' -e SSH_HOST='38.145.32.193' -e SSH_USER='fedora' -e SSH_PRIVATE_KEY_FILE='/home/centos/.ssh/id_rsa' -e SSH_PUBLIC_KEY_FILE='/home/centos/.ssh/id_rsa.pub' dci-atomic-host-agent.yml
popd
