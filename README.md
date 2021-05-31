# CoinTerminal

## Description
A basic powershell CLI tool to grab current Crypto prices using Coinmarketcap

`Note: This is my first attempt at Powershell Scripting`


## Using the Script
Set your API key using the following command:

```
$Env:CMC_API_KEY  = "APIKEYHERE"
```
To get prices:
```
.\cointerminal.ps1 [SYMBOL] [FIAT]
```
Or:
```
.\cointerminal.ps1 #Run the script and enter parameters as prompted
Input Coin symbol: 
Input the Fiat name: 
```
_****You can get a key here: https://pro.coinmarketcap.com/account****_ 

## To Do
- [X] Use Env variables
- [X] Allow for Command Line Arguments
- [ ] Allow for full token name aswell as symbol
- [ ] Add options to see price change for over past 1d/1w/1M