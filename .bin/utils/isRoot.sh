#!/usr/bin/env bash


# Check is user is root
function isRoot() {
  [[ $(id -u) -eq 0 ]]
}
