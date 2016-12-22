#!/bin/bash

rm ~/.bash_scripts
sed -i.bak '/bash_scripts/d' ~/.bash_profile

git config --global --unset alias.st
git config --global --unset alias.co
