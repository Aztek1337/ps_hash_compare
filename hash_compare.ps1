# Script to compare file hashes
# at the moment it only does the default SHA256, need to add params to add other algos

# Author - angel.alvarez@alva.systems
# Date - 06/01/21


try {
    $file_hash = (Get-FileHash $args).Hash
    $file_hash = $file_hash.ToLower()
    $input_hash = Read-Host -Prompt "Please input file hash to compare"

    $hash_compare = $file_hash -eq $input_hash

    if($hash_compare -eq "True"){
        Write-host "`nThe hash compare is: " -NoNewline; Write-Host $hash_compare`n -f Green 
    }
    else {
        Write-host  "`nThe hash compare is: " -NoNewline; Write-Host $hash_compare`n -f Red
    }
    Write-Host "Arg file hash:   $file_hash"
    Write-Host "Input file hash: $input_hash"
}
catch {
    "Error! Did you pass in an argument? Example: <aa_hash_compare test.exe>"
}

