#!/bin/bash

defaultEmail="alan.dariva@gmail.com"

read -p "Utilizar qual e-mail para os commits? ($defaultEmail) " userEmail

if [ "$userEmail" == "" ]; then
    userEmail="$defaultEmail"
fi

git config --global user.name "Alan Oliveira"
git config --global user.email $userEmail
git config --global push.default simple
git config --global core.editor "vim"
