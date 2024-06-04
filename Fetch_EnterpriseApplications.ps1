Looking to fetch all the enterprise application in your tenant

If you want to get the Enterprise Application, you just need to use this command shown as below:
Get-AzureADServicePrincipal -All $true

NOTE:- Application and Service principal are clearly two different things. Application is the global identity and Service principal is per Tenant/AAD

After running the command above, we can get the list of apps under the Enterprise Application in Azure Active Directory --> Enterprise applications (on azure portal).

Having said that, if you run Get-AzureADServicePrincipal -all $true to get a list of applications, it will return all application type including Microsoft apps and managed identities. If you only want a list of Enterprise Applications only
 
Get-AzureADServicePrincipal -All:$true | ? {$_.Tags -eq "WindowsAzureActiveDirectoryIntegratedApp"}
