# ------------------- PowerShell -----------------------------------
# PS Deploy resource group with tags

# Login & Subscription selection
Login-AzureRmAccount

# TODO: Enter the variables...
$resourceGroupName = "rgPsRgTemplate"
$location = "eastus"
$subscriptionId = "87fb4835-b4c1-4119-93b6-5c2d91ce07c1"

# Subscription...
Select-AzureRmSubscription -SubscriptionId $subscriptionId
Get-AzureRmSubscription -SubscriptionId $subscriptionId | Set-AzureRmContext

# Set the tags...
# TODO: Fill in tag values...
$tags = @{"ApplicationName"="Application Name"; "Approver"="Email"; "BudgetAmount"="$"; "BusinessUnit"="FINANCE, MARKETING, Product Name, CORP, SHARED"; "CostCenter"="Number"; "DR"="Mission-critical, Critical, Essential"; "EndDate"="Date"; "Env"="Prod, Dev, QA, Stage, Test"; "Owner"="Email"; "Requestor"="Email"; "ServiceClass"="Dev, Bronze, Silver, Gold"; "StartDate"="Date"}

#Create the RG and set tags...
New-AzureRmResourceGroup -Name $resourceGroupName -Location $location -Tag $tags

# Create and set lock (optional)...
$scope = "/subscriptions/" + $subscriptionId + "/resourceGroups/" + $resourceGroupName
New-AzureRmResourceLock -LockLevel "CanNotDelete" -LockName "DoNotDelete" -Scope $scope -Force


