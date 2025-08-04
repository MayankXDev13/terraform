## For Creating a New Terraform Workspace
To create a new Terraform workspace, you can use the following command:

```
terraform workspace new <workspace_name>
```
This command will create a new workspace with the specified name. If the workspace already exists, Terraform will switch to that workspace.

## For Listing All Workspaces
To list all available workspaces, you can use the following command:    

```
terraform workspace list
```

This command will display a list of all workspaces in your current Terraform configuration. The active workspace will be indicated with an asterisk (*).

## For Switching to an Existing Workspace
To switch to an existing workspace, you can use the following command:

```
terraform workspace select <workspace_name>
```
This command will switch the current workspace to the specified one. If the workspace does not exist, Terraform will return an error.

## For Deleting a Workspace
To delete a workspace, you can use the following command:   

```
terraform workspace delete <workspace_name>
```
This command will delete the specified workspace. Note that you cannot delete the currently active workspace, so you must switch to another workspace before deleting the one you want to remove.       

## For Showing the Current Workspace
To show the current active workspace, you can use the following command:    
```
terraform workspace show
```
This command will display the name of the currently active workspace. This is useful for confirming which workspace you are currently working in, especially when managing multiple environments or configurations.


## For Renaming a Workspace
To rename an existing workspace, you can use the following command:

```
terraform workspace rename <old_workspace_name> <new_workspace_name>
```
This command will rename the specified workspace. Note that you cannot rename the currently active workspace, so you must switch to another workspace before renaming the one you want to change.


