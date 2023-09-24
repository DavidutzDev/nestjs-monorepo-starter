#!/bin/bash

echo "Merging prisma schemas..."

APPS=$(find apps -type f -name "*.prisma")
FILES=$(find libs -type f -name "*.prisma")

for APP in $APPS; do
  sed -zi 's/[^\n]*PACKAGES.*//' "$APP"
  echo "// PACKAGES" >> "$APP"
done

for FILE in $FILES; do
  CONTENT=$(sed -zne 's/.*MODELS\n//p' "$FILE")

  echo "$CONTENT"

  for APP in $APPS; do
    echo "$CONTENT" >> "$APP"
  done
done

echo "Prisma schemas merged."