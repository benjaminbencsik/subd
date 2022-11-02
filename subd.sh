#!/bin/bash

DOMAIN=$1


amass enum -d $DOMAIN -o amass1.txt
amass enum -config ~/.config/amass/config.ini -d $DOMAIN -o amass.txt
subdfinder -d $DOMAIN -o subfinder.txt 
assetfinder --subs-only $DOMAIN | tee assetfinder.txt 

