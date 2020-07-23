#!/usr/bin/env bash


### Functions

source ./utils/isRoot.sh

function main() {
  apt-get update
  apt-get upgrade -y
}


### Run script
isRoot && main
