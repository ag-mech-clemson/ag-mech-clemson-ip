#!/bin/bash

#Based on script written by Jake Ammons

#Set USER to username on the rpi
USER="pi"
#Set REPO to the path to the git repo
REPO=./

#Navigate to Git repo, pull updates, and connect to the latest ip address
cd $REPO
git pull
echo "connecting to $USER@$(cat ip_address)"
ssh $USER@$(cat ip_address)

