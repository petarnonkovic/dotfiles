#!/usr/bin/env bash


### Functions

source ./utils/isRoot.sh

function main() {
  apt-get autoremove --purge
  apt-get autoclean
  apt-get clean
} 

### Run script
isRoot && main
