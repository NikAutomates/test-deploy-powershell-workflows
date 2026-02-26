param(
    [string]$graph_token,
    [string]$azure_token
)

# GRAPH (table)
Invoke-RestMethod `
  -Uri "https://graph.microsoft.com/v1.0/groups" `
  -Headers @{ Authorization = "Bearer $graph_token" } |
  Select-Object value

# ARM (table)
Invoke-RestMethod `
  -Uri "https://management.azure.com/subscriptions?api-version=2020-01-01" `
  -Headers @{ Authorization = "Bearer $azure_token" } |
  Select-Object value
