#!/bin/bash

echo "Building Qt"


BBB_USERNAME="debian"
BBB_PASSWORD="temppwd"
BBB_IP="192.168.7.2"
BBB_USERNAME_IP="${BBB_USERNAME}@${BBB_IP}"
SSHPASS="sshpass -p \"${BBB_PASSWORD}\" ssh -p 22 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

echo "${SSHPASS}"

APP="/App"

rsync -avz -e "${SSHPASS}" "${APP}/build_cross" "${BBB_USERNAME_IP}":