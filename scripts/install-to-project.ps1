# Optional: copy sk-kit instructions into an existing project without overwriting files.
# Usage (from task directory): powershell -NoProfile -File .\sk-kit\scripts\install-to-project.ps1 -ProjectPath .
param([string]$ProjectPath = ".")
$ErrorActionPreference = "Stop"

$source = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot "..")).Path
$target = (Resolve-Path -LiteralPath $ProjectPath).Path
if ($source.TrimEnd('\','/') -eq $target.TrimEnd('\','/')) {
    throw "Source kit and destination project cannot be identical."
}

$skillsDir = Join-Path $source ".agents/skills"
$targetSkillsDir = Join-Path $target ".agents/skills"
New-Item -ItemType Directory -Force -Path $targetSkillsDir | Out-Null

foreach ($skill in (Get-ChildItem -LiteralPath $skillsDir -Directory | Where-Object { $_.Name -like "sk-*" })) {
    $dest = Join-Path $targetSkillsDir $skill.Name
    if (Test-Path -LiteralPath $dest) {
        Write-Host "SKIP existing skill: $($skill.Name)"
    } else {
        Copy-Item -LiteralPath $skill.FullName -Destination $dest -Recurse
        Write-Host "COPIED skill: $($skill.Name)"
    }
}

$extras = @(
    "AGENTS.md", "checklists/final-check.md", "templates/work-record.md",
    "prompts/sample-prompts.md", "THIRD-PARTY-NOTICES.md", "LICENSES/cofa-MIT.txt"
)
foreach ($relative in $extras) {
    $src = Join-Path $source $relative
    $dst = Join-Path $target $relative
    if (Test-Path -LiteralPath $dst) {
        Write-Host "SKIP existing: $relative"
        continue
    }
    $parent = Split-Path -Parent $dst
    if (-not (Test-Path -LiteralPath $parent)) {
        New-Item -ItemType Directory -Force -Path $parent | Out-Null
    }
    Copy-Item -LiteralPath $src -Destination $dst
    Write-Host "COPIED: $relative"
}
Write-Host "Installed available files without overwriting existing paths."
Write-Host "Open a new Codex session to check local skill discovery, or explicitly read .agents/skills/sk-kit/SKILL.md."
