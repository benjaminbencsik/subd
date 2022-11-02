#!/bin/bash

#declaring variables 
DOMAIN=$1


amass enum -d $DOMAIN.com -o amass1.txt
amass enum -config ~/.config/amass/config.ini -d $DOMAIN.com -o amass.txt
subfinder -d $DOMAIN -o subfinder.txt 
assetfinder --subs-only $DOMAIN | tee assetfinder.txt 

