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

  local package_path="${PACK_DIR}${package}"

  if [ ! -d "$package_path" ]
  then
    echo "package $package does not exist at $package_path"
    usage
    exit 1
  fi

  git submodule deinit "$package_path"
  git rm "$package_path"
  rm -rf ".git/modules/${package_path}"
}
main "$@"
