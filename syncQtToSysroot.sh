#!/bin/bash

echo "Building Qt"


BBB_USERNAME="debian"
BBB_PASSWORD="temppwd"
BBB_IP="192.168.7.2"
BBB_USERNAME_IP="${BBB_USERNAME}@${BBB_IP}"
SSHPASS="sshpass -p \"${BBB_PASSWORD}\" ssh -p 22 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

echo "${SSHPASS}"

WORKSPACE="/workspace"
OUTPUT="${WORKSPACE}/OUTPUT"

rsync -avz -e "${SSHPASS}" --rsync-path="sudo rsync" "${OUTPUT}/qt5" "${BBB_USERNAME_IP}":/usr/local