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
  print "Setting up Bend environment..."; hr-line
  print $'Gcc version: (ansi g)(gcc --version)(ansi reset)'
  print $'Cargo version: (ansi g)(cargo --version)(ansi reset)'
  print 'Installing Hvm2...'; hr-line
  cargo install hvm
  print $'Hvm version: (ansi g)(hvm --version)(ansi reset)'
  print 'Installing Bend...'; hr-line
  cargo install bend-lang
  print $'Bend version: (ansi g)(bend --version)(ansi reset)'
}

alias main = setup bend
