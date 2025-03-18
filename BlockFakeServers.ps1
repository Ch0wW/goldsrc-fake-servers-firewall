#Requires -RunAsAdministrator

$fw_rulename = "GoldSRC Fake IP Blocklist"

Write-Host ("===== GoldSRC Fake IP Blocklister =====")
Write-Host ("- Main GitHub project: https://github.com/Ch0wW/goldsrc-fake-servers-firewall")
Write-Host ("- Fork by Nambona890")
Write-Host ("")
Write-Host ("")

# Check if rule is disabled

Write-Host ("Checking for an existing firewall rule named '$fw_rulename'...")
Write-Host ("")
Write-Host ("")

if (Get-NetFirewallRule -DisplayName $fw_rulename) {
    Write-Host ("Found firewall rule '$fw_rulename', removing it!")
    Remove-NetFirewallRule -DisplayName $fw_rulename
} else {
    Write-Host ("Firewall Rule '$fw_rulename' not found! ")
}

# Getting the list of all IPs 

$jsonPath = 'https://raw.githubusercontent.com/nambona890/goldsrc-fake-servers-firewall/main/blacklisted_iplist.json'
$json = (New-Object System.Net.WebClient).DownloadString($jsonPath) | ConvertFrom-Json

$iplist = @()

foreach ($server in $json.list)
{
    Write-Host("Blocking "+$server.name+" : "+$server.reason)

    foreach ($gameip in $server.ip) {
        $iplist = $iplist + $gameip
        Write-Host ("  - $gameip")
    }
    Write-Host ("")
}

Write-Host("Total of blocked IPs :"+$iplist.Length)
Write-Host ("")
Write-Host ("")

# ==== Create the firewall rule

Write-Host ("Creating firewall rule '$fw_rulename'...")
Write-Host ("")
if (New-NetFirewallRule -DisplayName $fw_rulename -Direction Outbound -Action Block -RemoteAddress $iplist) {
    Write-Host("Firewall rule created! Have fun!")
}
