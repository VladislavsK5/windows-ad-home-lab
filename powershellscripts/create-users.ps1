Import-Module ActiveDirectory

$users = Import-Csv ".\users.csv"

foreach ($user in $users) {

    $password = ConvertTo-SecureString $user.Password -AsPlainText -Force

    New-ADUser `
        -Name "$($user.FirstName) $($user.LastName)" `
        -SamAccountName $user.Username `
        -AccountPassword $password `
        -Enabled $true `
        -Path "OU=$($user.Department),OU=Users,DC=homelab,DC=local"


    if ($user.Department -eq "IT") {
    Add-ADGroupMember IT_Admins $user.Username
    }

    if ($user.Department -eq "HR") {
    Add-ADGroupMember HR_Users $user.Username
    }

    if ($user.Department -eq "Sales") {
    Add-ADGroupMember Sales_Users $user.Username
    }

    if ($user.Department -eq "Management") {
    Add-ADGroupMember Management_Users $user.Username
    }

}
