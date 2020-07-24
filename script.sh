#!/bin/bash

az group create -n flaskapprg -l uksouth

az vm availability-set create -g flaskapprg -n flaskavailabilityset -l uksouth --platform-fault-domain-count 2 --platform-update-domain-count 5

az vm create -g flaskapprg -n flasksvr -l uksouth --image UbuntuLTS --availability-set flaskavailabilityset --generate-ssh-keys --custom-data cloud-init.txt

az vm open-port --resource group flaskapprg --name flasksvr --port 5000
