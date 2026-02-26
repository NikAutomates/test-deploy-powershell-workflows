param(
    [string]$graph_token,
    [string]$azure_token
)

# ARM – force visible output
Invoke-RestMethod `
  -Uri "https://management.azure.com/subscriptions?api-version=2020-01-01" `
  -Headers @{ Authorization = "Bearer $azure_token" } |
  ConvertTo-Json -Depth 10 |
  Write-Host
