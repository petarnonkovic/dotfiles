#!/usr/bin/env bash


### Prints memory size of RAM and Swap
### Prints total memory size

RAM=$(free | grep ^Mem | awk '{print $2}') 
SWAP=$(free | grep ^Swap | awk '{print $2}')
TOTAL=$((RAM+SWAP))


printf "RAM is= %d\nSwap is= %d\nTotal Virtual memory is= %d\n" \
  "${RAM}" "${SWAP}" "${TOTAL}"
