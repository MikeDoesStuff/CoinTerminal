param (
    # Symbol entry
    [string]$coin = (Read-Host -Prompt 'Input Coin symbol'),
    
    # name of the output fiat currency for pricing
    [string]$convert = (Read-Host -Prompt 'Input the Fiat name')
)


$headers =@{
    "X-CMC_PRO_API_KEY" =  $Env:CMC_API_KEY
}

$url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest"


$params =@{
    "symbol" =  $coin
    "convert" = $convert
}


$request = Invoke-WebRequest -Uri $url  -Method Get -Headers $headers -Body $params | ConvertFrom-Json 
$parse = $request.data.$coin | Select-Object quote | ForEach-Object{$_.quote.$convert}
$currentprice = $parse | select -ExpandProperty price
$delta = $parse | select -ExpandProperty percent_change_24h
Write-Host $coin.ToUpper() -> $convert.ToUpper() "="  $currentprice
Write-Host  "Percentage Change (24hr) ="  $delta
