if ($args.Length -eq 0) {
    Write-Host "Building all apps"

    $APPS = Get-ChildItem -Path .\apps

    $APPS | ForEach-Object -Process {
        & .\deploy.ps1 "$_"
    }
}
else {
    Write-Host "Building $($args[0]) app"

    pnpm build $args[0]
    Copy-Item -Path .\package.json -Destination .\dist\apps\$($args[0])
}