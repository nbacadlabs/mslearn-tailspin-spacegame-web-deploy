#!/bin/bash
RANDOM=1234567890
echo webappsuffix=$RANDOM

#create a resource group
az group create --location eastus --name tailspin-space-game-rg

#create an app service prompt
az appservice plan create --name tailspin-space-game-asp --resource-group tailspin-space-game-rg --sku B1 --is-linux

#create two appservice instances (Dev and Staging)
az webapp create --name tailspin-space-game-web-dev-01 --resource-group tailspin-space-game-rg --plan tailspin-space-game-asp --runtime "DOTNET|6.0"

az webapp create --name tailspin-space-game-web-staging-02 --resource-group tailspin-space-game-rg --plan tailspin-space-game-asp --runtime "DOTNET|6.0"

#list app services and verify they are running.

az webapp list --resource-group tailspin-space-game-rg --query "[].{hostName: defaultHostName, state: state}" --output table