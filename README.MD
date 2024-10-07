<b><center>Overview </center></b>


The pipeline is automatically triggered upon any changes to the repository (additions/deletions/edits of files). It executes the following actions: 

1. Retrieves the Nexus credentials from Azure Key Vault. 

2. Synchronises all files from the Approved folder with Nexus Repo. However, any additional files in the Nexus repository are left untouched deliberately to account for potential extra files managed outside this automated process within the nexus repo. 


<b><center>Things to consider before running  the pipeline. </center></b>


1. Ensure to edit the appropriate section to include the secrets that need to be downloaded - task: AzureKeyVault@2 

2. Ensure the base_url of nexus is correct in the pipeline. - Line 19 in azure-pipeline.yml

3. Ensure the folder to be included are correct in the pipeline. - Line 22 in azure-pipeline.yml


<b><center>Additional documentation at the below link: </b></center>

https://amerisourcebergen.sharepoint.com/:w:/r/sites/DevSecOpsTeam/Shared%20Documents/Knowledge%20Resources/Automating%20the%20upload%20to%20nexus%20repo.docx?d=w16937e61c69941b4b24bd259dd57533c&csf=1&web=1&e=gtVzaR