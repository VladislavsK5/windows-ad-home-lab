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

}
