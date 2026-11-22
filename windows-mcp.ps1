# Windows-MCP one-click installer
# 右键以管理员身份运行，或粘贴到管理员 PowerShell 里执行

Write-Host "==> [1/3] Installing UV..." -ForegroundColor Cyan
powershell -c "irm https://astral.sh/uv/install.ps1 | iex"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "==> [2/3] Installing Python 3.14..." -ForegroundColor Cyan
uv python install 3.14

Write-Host "==> [3/3] Starting Windows-MCP..." -ForegroundColor Cyan
uvx windows-mcp serve

Write-Host "" 
Write-Host "Done. Windows-MCP is running. Keep this window open." -ForegroundColor Green
pause
