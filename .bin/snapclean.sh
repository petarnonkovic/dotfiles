#!/usr/bin/env zsh


### Functions

source ./utils/isRoot.sh

function snaps_size() {
  du -h /var/lib/snapd/snaps
}

function snap_clean() {
  set -eu

  snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
      snap remove "$snapname" --revision="$revision"
    done

  printf "\n%s"  "Done"
}

function main() {

}
