$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$skillDir = Join-Path $scriptDir "project-wrapup-summary"

if (-not (Test-Path -LiteralPath $skillDir)) {
  $candidate = $scriptDir
  if (Test-Path -LiteralPath (Join-Path $candidate "SKILL.md")) {
    $skillDir = $candidate
  } else {
    throw "Cannot find project-wrapup-summary skill folder or SKILL.md."
  }
}

$targetRoot = Join-Path $env:USERPROFILE ".codex\skills"
$targetDir = Join-Path $targetRoot "project-wrapup-summary"

New-Item -ItemType Directory -Force -Path $targetRoot | Out-Null

if (Test-Path -LiteralPath $targetDir) {
  Remove-Item -LiteralPath $targetDir -Recurse -Force
}

Copy-Item -LiteralPath $skillDir -Destination $targetDir -Recurse -Force

Write-Host "Installed project-wrapup-summary to:"
Write-Host $targetDir
Write-Host ""
Write-Host "Restart Codex if it is already open, then use prompts like:"
Write-Host "总结这个项目"
Write-Host "wrap up this coding session"
