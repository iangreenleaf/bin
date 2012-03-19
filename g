#!/bin/bash

# Alias for git. Saves me TWO WHOLE KEYSTROKES

command=$@
if [ -z "$command" ]; then
  command="status"
fi
echo "$command" | xargs git
