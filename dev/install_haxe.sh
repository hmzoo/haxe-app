#!/bin/bash

# INSTALL HAXE
sudo add-apt-repository ppa:haxe/releases -y
sudo apt-get update
sudo apt-get install haxe -y
mkdir ~/haxelib && haxelib setup ~/haxelib

# INSTALL HEAPS

haxelib install heaps


## AVEC PROXY
# haxelib proxy 172.16.20.90 8080
# haxelib install heaps -R http://lib.haxe.org/



## HTTP SERVER
sudo apt-get install busybox
## Serve :
# sudo busybox httpd -f  -p 8000 -h ./builds/html

# https://manpages.ubuntu.com/manpages/xenial/man1/busybox.1.html