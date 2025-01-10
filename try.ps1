$password = "MyStr0ngP@$$wOrd2024"
$password = ConvertTo-SecureString -String "****" -AsPlainText -Force
New-AzADUser -DisplayName SampleName -Password $password -AccountEnabled $true -MailNickname SampleNickName -UserPrincipalName sample@hani2024zenithgmail.onmicrosoft.com