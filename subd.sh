#!/bin/bash

#declaring variables 
DOMAIN=$1

echo "starting subdomain enumoration process this can take a minute" 



amass enum -d $DOMAIN.com -o amass1.txt
amass enum -config ~/.config/amass/config.ini -d $DOMAIN.com -o amass.txt
subfinder -d $DOMAIN -o subfinder.txt 
assetfinder --subs-only $DOMAIN | tee assetfinder.txt 
cd ~/tools/Sublist3r/python3 sublist3r.py -d $DOMAIN 
