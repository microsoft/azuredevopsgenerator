# Azure Governance DevOps Generator

The cloud creates new paradigms for the technologies that support the business. These new paradigms also change how those technologies are adopted, managed, and governed. When entire datacenters can be virtually torn down and rebuilt with one line of code executed by an unattended process, we have to rethink traditional approaches. This is especially true for governance.

Cloud governance is an iterative process. For organizations with existing policies that govern on-premises IT environments, cloud governance should complement those policies. However, the level of corporate policy integration between on-premises and the cloud varies depending on cloud governance maturity and a digital estate in the cloud. As the cloud estate changes over time, so do cloud governance processes and policies. The following exercises help you understand how start building your initial governance foundation.

The objective is helping customers to quickly deploy Azure Governance following the best practices using  Azure DevOps board with agile practices.

**TODO**Requirements:

1. Create or use an existing Azure DevOps organization
2. [Access to Azure Sentinel DevOps Template](https://docs.microsoft.com/en-us/azure/devops/organizations/accounts/create-organization?view=azure-devops)
3. [Access to Azure DevOps Generator](https://docs.microsoft.com/en-us/azure/devops/demo-gen/use-demo-generator-v2?view=azure-devops)


Steps:

1. Sign in to Azure DevOps Generator

2.	Create a new project, ex: “Azure Sentinel POC” then select your organization “.
3. Click “Choose template”, select Github. Past the raw url: https://raw.githubusercontent.com/microsoft/azuredevopsgenerator/master/azuregovernance/AzureGovernance.zip
 
4. Click “Submit” then “Create Project”
5. An Azure DevOps project will be created in your organization
 
6. Click on “Backlogs”, you should be able to see “User Stories and “Tasks” providing guidance.
This should help your team to discuss, agree on acceptance criteria, delegate ownership, create iterations, track the progress and efficiently deploy Azure Governance. 
