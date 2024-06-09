#!/usr/bin/env nu
# Author: hustcer
# Created: 2024/06/09 20:33:15
# TODO:
#   [x] Support Windows, macOS, Linux
#   [x] This script should run both in Github Runners and local machines
# Description: Scripts for setting up Bend environment

use common.nu [hr-line windows? is-installed]

export-env {
  $env.config.color_config.leading_trailing_space_bg = { attr: n }
}

export def 'setup bend' [] {
  print "Setting up Bend environment..."
  print $'Gcc version: (gcc --version)'
  print $'Cargo version: (cargo --version)'
  print 'Installing Hvm2...'
  cargo install hvm
  print $'Hvm version: (hvm --version)'
  print 'Installing Bend...'
  cargo install bend-lang
  print $'Bend version: (bend --version)'
}

alias main = setup bend
