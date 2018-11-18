#!/bin/bash

WHITE='\033[1;37m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

#brew list | while read cask; do echo -n $fg[blue] $cask $fg[white]; brew deps $cask | awk '{printf(" %s ", $0)}'; echo ''; done
brew list | while read cask; do echo -ne "${BLUE} $cask ${WHITE}"; brew deps $cask | awk '{printf(" %s ", $0)}'; echo ''; done
