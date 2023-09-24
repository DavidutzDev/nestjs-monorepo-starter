#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Building all apps"

  APPS=$(ls apps)

  for APP in $APPS; do
    pwd
    ./deploy.sh "$APP" &
  done
  wait

else
  echo "Building $1 app"

  pnpm build "$1"
  cp ./package.json ./dist/apps/"$1"

  if test -d ./apps/"$1"/prisma/client; then
    rm -rf ./dist/apps/"$1"/prisma
    mkdir ./dist/apps/"$1"/prisma
    cp -r ./apps/"$1"/prisma/client ./dist/apps/"$1"/prisma/client
  fi
fi