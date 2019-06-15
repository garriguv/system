#!/bin/bash

set -euo pipefail

readonly PACK_DIR=".vim/pack/garriguv/start/"

usage() {
  echo "Usage: $0 <package>"
}

main() {
  local package=${1:-}

  if [ -z "$package" ]
  then
    echo "package not set"
    usage
    exit 1
  fi

  git submodule add git@github.com:${package}.git "${PACK_DIR}$(basename $package)"
}
main "$@"
