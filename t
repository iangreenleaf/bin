#!/bin/bash

#
# Tries to figure out what kind of project the cwd is, and runs the tests.
# I name this file "t". That's important.
#

if [ -d node_modules ]; then
  npm test
elif [ -e Rakefile ]; then
  if [ -d "test" ]; then
    rake test
  fi
  if [ -d spec ]; then
    rake spec
  fi
elif [ -e phpunit.xml* ]; then
  phpunit
elif [ -e Makefile ]; then
  make test
else
  echo "I can't find the tests :("
fi
