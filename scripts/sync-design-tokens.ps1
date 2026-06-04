# sync-design-tokens.ps1
# Syncs canonical design-tokens.css from san-scribe-hq to target repo
# Usage: .\sync-design-tokens.ps1 -Target "C:\path\to\repo\src\app\"
param([Parameter(Mandatory)]$Target)

$source = "C:\Users\clair\OneDrive\Desktop\Starfleet-Command\Active-Missions\san-scribe-hq\DESIGN_SYSTEM\design-tokens.css"
$dest = Join-Path $Target "design-tokens.css"

if (Test-Path $source) {
    Copy-Item $source $dest -Force
    Write-Host "[OK] design-tokens.css synced to $dest" -ForegroundColor Green
} else {
    Write-Host "[FAIL] Source not found: $source" -ForegroundColor Red
    exit 1
}
