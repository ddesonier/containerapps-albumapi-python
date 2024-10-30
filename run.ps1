$API_NAME = "demo-buildpack"
$RESOURCE_GROUP = "demo-BuildPack5-rg"
$LOCATION = "westus"
$ENVIRONMENT = "python"
$GITHUB_USERNAME = "ddesonier"
az containerapp up --name $API_NAME `
  --resource-group $RESOURCE_GROUP `
  --location $LOCATION `
  --environment $ENVIRONMENT `
  --context-path ./src `
  --ingress external `
  --target-port 8080 `
  --repo https://github.com/ddesonier/containerapps-albumapi-python `
  --branch buildpack


az acr repository list --name damonsregistry --output table