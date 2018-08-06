#/bin/bash

# Create .config folder in $HOME directory and populate it with sviatco/dotconfig settings
cd $HOME;
mkdir .config && $1;
git clone https://github.com/sviatco/dotconfig

# Create a public rsa key
ssh-keygen


