<b><center>Overview </center></b>


The pipeline is automatically triggered upon any changes to the repository (additions/deletions/edits of files). It executes the following actions: 

1. Retrieves the Nexus credentials from Azure Key Vault. 

2. Synchronises all files from the Approved folder with Nexus Repo. However, any additional files in the Nexus repository are left untouched deliberately to account for potential extra files managed outside this automated process within the nexus repo. 


<b><center>Things to consider before running  the pipeline. </center></b>


1. Ensure to edit the appropriate section to include the secrets that need to be downloaded - task: AzureKeyVault@2 

2. Ensure the base_url  is correct in the pipeline. - Line 19 in azure-pipeline.yml

3. Ensure the folder to be included are correct in the pipeline. - Line 22 in azure-pipeline.yml


