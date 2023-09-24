#!/bin/bash

echo "Merging prisma schemas..."

APPS=$(find apps -type f -name "*.prisma" -not -path "*/client/schema.prisma")
FILES=$(find libs -type f -name "*.prisma" -not -path "*/client/schema.prisma")

for APP in $APPS; do
  sed -zi 's/[^\n]*PACKAGES.*//' "$APP"
  echo "// PACKAGES" >> "$APP"
done

for FILE in $FILES; do
  CONTENT=$(sed -zne 's/.*MODELS\n//p' "$FILE")

  for APP in $APPS; do
    echo "$CONTENT" >> "$APP"
  done
done

echo "Prisma schemas merged."