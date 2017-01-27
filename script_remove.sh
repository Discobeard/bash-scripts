#!/bin/bash

sed -i.bak '/bash_scripts/d' ~/.bash_profile
sed -i.bak '/bash_scripts/d' ~/.bashrc
sed -i.bak '/script_location/d' ~/.bash_profile
sed -i.bak '/script_location/d' ~/.bashrc

git config --global --unset alias.st
git config --global --unset alias.co
