#!/bin/bash

echo "synching sysroot"

BBB_USERNAME="debian"
BBB_PASSWORD="temppwd"
BBB_IP="192.168.7.2"
BBB_USERNAME_IP="${BBB_USERNAME}@${BBB_IP}"
SSHPASS="sshpass -p \"${BBB_PASSWORD}\" ssh -p 22 -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

SYSROOT="/workspace/sysroot"

rm -rf ${SYSROOT}
mkdir -p ${SYSROOT}
mkdir -p ${SYSROOT}/usr
mkdir -p ${SYSROOT}/usr/local

rsync -avz -e "${SSHPASS}" "${BBB_USERNAME_IP}":/lib ${SYSROOT}
rsync -avz -e "${SSHPASS}" "${BBB_USERNAME_IP}":/usr/include ${SYSROOT}/usr
rsync -avz -e "${SSHPASS}" "${BBB_USERNAME_IP}":/usr/lib ${SYSROOT}/usr
rsync -avz -e "${SSHPASS}" "${BBB_USERNAME_IP}":/usr/local/include ${SYSROOT}/usr/local
rsync -avz -e "${SSHPASS}" "${BBB_USERNAME_IP}":/usr/local/lib ${SYSROOT}/usr/local