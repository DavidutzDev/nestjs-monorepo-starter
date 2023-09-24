Write-Host "Merging prisma schemas..."

$APPS = Get-ChildItem -Path .\apps -Recurse -Filter *.prisma
$FILES = Get-ChildItem -Path .\libs -Recurse -Filter *.prisma

foreach ($APP in $APPS) {
  $content = Get-Content $APP.FullName -Raw
  $content = $content -replace '(?ms)[^\n]*PACKAGES.*', ''
  $content += "// PACKAGES"
  $content | Set-Content $APP.FullName
}

foreach ($FILE in $FILES) {
  $content = Get-Content $FILE.FullName | Out-String
  $content = $content -replace '(?ms).*MODELS\r?\n', ''

  foreach ($APP in $APPS) {
    $content | Add-Content $APP.FullName
  }
}

Write-Host "Prisma schemas merged."