# Get the current list of trusted hosts
$trustedHosts = Get-Item WSMan:\\localhost\\Client\\TrustedHosts

# Add the new host to the list
$trustedHosts.Value += ",*.internal.hp-ne.com"

# Update the trusted hosts list
Set-Item WSMan:\\localhost\\Client\\TrustedHosts -Value $trustedHosts.Value
