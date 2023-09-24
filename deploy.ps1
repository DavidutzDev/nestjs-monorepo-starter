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

    if (Test-Path .\apps\$($args[0])\prisma\client) {
        Remove-Item -Path .\dist\apps\$($args[0])\prisma -ErrorAction Ignore
        mkdir .\dist\apps\$($args[0])\prisma
        Copy-Item -Recurse -Path .\apps\$($args[0])\prisma\client -Destination .\dist\apps\$($args[0])\prisma\client
    }
}