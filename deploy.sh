#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Building all apps"

    APPS=$(ls apps)

    for APP in $APPS; do
      pwd
      ./deploy.sh "$APP" &
    done

    else
      echo "Building $1 app"

      pnpm build "$1"
      cp ./package.json ./dist/apps/"$1"
fi

