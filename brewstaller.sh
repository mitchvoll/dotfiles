#!/bin/sh

for package in $(cat $1); do 
  brew install $package
done
  
