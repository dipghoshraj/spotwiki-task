#!/usr/bin/env bash

sudo apt update

# install ruby 
sudo apt-get install ruby

#verifing instalation
ruby -v
gem -v

# install parallel wiith gem
gem install parallel