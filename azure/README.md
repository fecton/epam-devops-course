# Azure

## Prerequisites
### 1. Create azure subscription
![Image](./screenshots/subscription.png)
### 2. Create azure devops organization
![Image](./screenshots/organization.png)
### 3. Read information about github flow branching strategy
### 4. Terraform should be installed
![Image](./screenshots/installed_terraform.png)
### 5. Terraform knowledged is also required to do the stuff
### 6. Az cli shoud be installed
![Image](./screenshots/installed_azcli.png)

# Homework
## PART 1

### 1. Create a service connection in a Azure DevOps project to your subscription 
![Image](./screenshots/service_connection.png)

### 2. Find a .net pet project for the experiments
![Image](./screenshots/dotnet_deploy.png)
![Image](./screenshots/donet_deployed.png)

## 3. Build your app locally .net project via dotnet tool. dotnet restore/build/runBuild you 
![Image](./screenshots/donet_view.png)

### 4.	Create an Azure DevOps repo - https://learn.microsoft.com/en-us/azure/devops/repos/git/create-new-repo?view=azure-devops  You can use import repository to import from existing source control version like github
![Image](./screenshots/git_repo_push.png)

### [?] 5.	Create a branching policy for you application. Added yourself as a reviewer - https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser As branching strategy use a github flow (It will be applied by default when you strict commit to your main branch)
![Image](./screenshots/created_storage.png)
![Image](./screenshots/branch_policy.png)
![Image](./screenshots/first_pipeline.png)
![Image](./screenshots/include_reviewer.png )
![Image](./screenshots/limit_merge.png)
![Image](./screenshots/success_pipeline.png)
![Image](./screenshots/branch_policies.png)
![Image](./screenshots/policy_review.png)


## PART 2

### 1. Create an another repo to store devops code
### 2. Create a folder terraform
### 3. Add app service implementation - https://learn.microsoft.com/en-us/azure/app-service/provision-resource-terraform
### 4. Integrate application insights with app service
### 5. Updated backend "azurerm" according to the guide - https://learn.microsoft.com/en-us/azure/developer/terraform/store-state-in-azure-storage?tabs=azure-cli
### 6. Run az login or Connect-AzAccount to connect the azure subscription from your local
### 7. Run terraform apply to deploy infrastructure

#### I created an empty container
![Image](./screenshots/container.png)
### Connected to the account and run commands
![Image](./screenshots/connect_to_account.png)
![Image](./screenshots/get_azsubscription.png)
![Image](./screenshots/get_azcontext.png)
![Image](./screenshots/env.png)
![Image](./screenshots/cli_subscription.png)
![Image](./screenshots/newazadserviceprincipal.png)
![Image](./screenshots/object.png)
![Image](./screenshots/setaccontext_subscription.png)
### Start working with terraform and push the infrastructure
![Image](./screenshots/terraform_the_beginning.png)
![Image](./screenshots/first_syntax_errors.png)
![Image](./screenshots/terraform_success.png)
![Image](./screenshots/terraform_apply.png)
![Image](./screenshots/terraform_apply_2.png)
![Image](./screenshots/terraform_apply_result.png)

![Image](./screenshots)
![Image](./screenshots)
![Image](./screenshots)
