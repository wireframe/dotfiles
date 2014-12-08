#!/bin/bash

echo -n 'Loading OSX customizations...'

if [ -d ~/.osx.d ]; then
  for f in ~/.osx.d/*.sh; do
    echo -n .
    source $f;
  done
fi

echo 'SONNEK BOOM 🔥🔥🔥'
