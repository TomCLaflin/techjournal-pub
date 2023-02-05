param($hostaddr, $dns)
Write-Host "DNS Resolution for $hostaddr/24"

for ($i = 1; $i -le 254; $i++) {
    $ip = "$hostaddr.$i"
    $action = Resolve-DnsName -DnsOnly $ip -Server $dns -ErrorAction Ignore
    if ($action) {
        Write-Host "$ip $($action.NameHost)"
    }
}
