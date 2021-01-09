#$r = Regex.
Set-Location C:\Users\rapl\Documents\GitHub\MACAddress


$list = @(
    "http://standards-oui.ieee.org/oui/oui.csv",
    "http://standards-oui.ieee.org/oui28/mam.csv",
    "http://standards-oui.ieee.org/oui36/oui36.csv",
    "http://standards-oui.ieee.org/iab/iab.csv",
    "http://standards-oui.ieee.org/cid/cid.csv",
    "http://standards-oui.ieee.org/ethertype/eth.csv",
    "http://standards-oui.ieee.org/manid/manid.csv",
    "http://standards-oui.ieee.org/bopid/opid.csv"
)


foreach ($url in $list){
    #$pattern = "^http(s?)://.*/(.*\.csv)$"
    #$pattern = ".*/.*\.csv$"
    #$m = Select-String -InputObject $url -Pattern $pattern

    #$m | Format-List *

    #Write-Output "------------"
    #$m[0]
    $filename = Split-Path $url -Leaf

    if ( $url -match "^.*/[.*]\.csv$") {
        Write-Output "match" $url
    }
    Write-Output $filename
    Invoke-WebRequest $url -OutFile $filename
}

