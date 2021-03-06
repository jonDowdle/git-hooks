#!/bin/sh
 
## pre-commit script to prevent private keys from being committed. 
## Author: Jon Dowdle <jdowdle@gmail.com>

changed=$(git diff --cached --name-only)
# changed="test/FAKE_PRIVATE_KEY"
 
if [[ -z "$changed" ]]
then
    exit 0
fi
 
echo $changed | xargs egrep 'BEGIN RSA PRIVATE KEY' -H -I --line-number
 
## If the egrep command has any hits - echo a warning and exit with non-zero status.
if [ $? == 0 ]
then

	printf '\n\e[0;31m%s\e[m\n' "WARNING: You are commiting a private key. It is a bad idea to commit these."
    exit 1    
fi
 
