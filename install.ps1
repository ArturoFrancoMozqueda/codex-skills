[CmdletBinding()]
param(
    [switch]$Force
)

$ErrorActionPreference = 'Stop'

$sourceRoot = Join-Path $PSScriptRoot 'skills'
$destinationRoot = Join-Path $env:USERPROFILE '.agents\skills'

if (-not (Test-Path -LiteralPath $sourceRoot)) {
    throw "No se encontro la carpeta de skills: $sourceRoot"
}

New-Item -ItemType Directory -Path $destinationRoot -Force | Out-Null

foreach ($skill in Get-ChildItem -LiteralPath $sourceRoot -Directory) {
    $manifest = Join-Path $skill.FullName 'SKILL.md'
    if (-not (Test-Path -LiteralPath $manifest)) {
        Write-Warning "Se omite '$($skill.Name)' porque no contiene SKILL.md."
        continue
    }

    $destination = Join-Path $destinationRoot $skill.Name
    if ((Test-Path -LiteralPath $destination) -and -not $Force) {
        Write-Warning "Ya existe '$destination'. Usa -Force para actualizarla."
        continue
    }

    if (Test-Path -LiteralPath $destination) {
        Remove-Item -LiteralPath $destination -Recurse -Force
    }

    Copy-Item -LiteralPath $skill.FullName -Destination $destination -Recurse
    Write-Host "Instalada: $($skill.Name)"
}

Write-Host "Skills disponibles en: $destinationRoot"
