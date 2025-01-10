azure cmds for 104 and Learning important stuff

AD Sync : 
Steps for Immediate Replication of User Creation (Most Common Scenario):

1. Create the user in on-premises Active Directory.

2. Open PowerShell on the Azure AD Connect server as an administrator.

3. Run the following commands:

PowerShell

Import-Module ADSync
Start-ADSyncSyncCycle -PolicyType Delta
Wait a few minutes (usually 1-5 minutes, but can vary).

Check Azure AD to confirm the user has been synchronized.

Example with Error Handling:

PowerShell

try {
    Import-Module ADSync
    Start-ADSyncSyncCycle -PolicyType Delta
    Write-Host "Delta synchronization initiated."
}
catch {
    Write-Error "Error initiating delta synchronization: $($_.Exception.Message)"
}


--------------------------

full sync

How to Perform a Full Sync:

Using PowerShell:

PowerShell

Import-Module ADSync
Start-ADSyncSyncCycle -PolicyType Initial



-------- 
NetLogon Service

The NetLogon service is a crucial component of Windows Server operating systems in a domain environment. It's responsible for locating domain controllers, authenticating users and computers, and maintaining secure communication channels within the domain.   

Here's a breakdown of its key functions:

1. Domain Controller Discovery:


2. User and Computer Authentication:

 
3. Maintaining Secure Channels:

4. Other Important Functions:

Pass-through Authentication: In scenarios where a user is trying to access a resource on a different server within the domain, the NetLogon service can facilitate pass-through authentication, allowing the user to access the resource without having to re-enter their credentials.   
Maintaining DNS Records: The NetLogon service dynamically registers and updates DNS records for domain controllers, which helps clients locate them. 
  
Why is the NetLogon Service Important?

Core Authentication Mechanism: It's fundamental to the authentication process in a Windows domain. Without the NetLogon service, users and computers wouldn't be able to log in to the domain or access domain resources.   
Security: It establishes secure communication channels, protecting authentication credentials and other sensitive information.   
Centralized Management: It enables centralized management of users and resources through Active Directory.
Troubleshooting NetLogon Issues:
-----------------

/Users/mac/Applications/azure104Learning/azuredeploy.json  - template path

---------------------------

Entra ID powershell cmds

# Create a new security group named "IT Admins"
New-AzRoleAssignment -RoleDefinitionName "Contributor" -Scope "/subscriptions/<your_subscription_id>" -Assignee "<user_principal_name>" 

# Example with user principal name
New-AzRoleAssignment -RoleDefinitionName "Contributor" -Scope "/subscriptions/<your_subscription_id>" -Assignee "user@example.com" 

# Example with service principal
New-AzRoleAssignment -RoleDefinitionName "Contributor" -Scope "/subscriptions/<your_subscription_id>" -Assignee "<service_principal_id>"
