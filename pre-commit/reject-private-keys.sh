#!/bin/sh
 
## pre-commit script to prevent private keys from being committed. 
## Author: Jon Dowdle <jdowdle@gmail.com>

changed=$(git diff --cached --name-only)
 
if [[ -z "$changed" ]]
then
    exit 0
fi
 
echo $changed | xargs egrep 'BEGIN RSA PRIVATE KEY' -H -I --line-number
 
## If the egrep command has any hits - echo a warning and exit with non-zero status.
if [ $? == 0 ]
then
    echo "\n\nWARNING: You are commiting a private key. It is a bad idea to commit these.n\n"
    exit 1    
fi
 
