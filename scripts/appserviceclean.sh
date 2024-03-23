#!/bin/bash

#delete appserviceplans
az webapp deleted -g tailspin-space-game-rg -n tailspin-space-game-asp  --deleted-id /subscriptions/612497ee-3913-4876-8bbd-25ad368306aa/resourceGroups/tailspin-space-game-rg/providers/Microsoft.Web/sites/tailspin-space-game-web-dev-01

az webapp deleted -g tailspin-space-game-rg -n tailspin-space-game-asp  --deleted-id /subscriptions/612497ee-3913-4876-8bbd-25ad368306aa/resourceGroups/tailspin-space-game-rg/providers/Microsoft.Web/sites/tailspin-space-game-web-staging-02
#delete plan
az appservice plan delete --name tailspin-space-game-asp --resource-group tailspin-space-game-rg

#delete resour group
az group delete --resource-group tailspin-space-game-rg -y

