$passports = Get-Content ".\input.txt" -Delimiter "`n`n";

$passcount = 0;

$valid = 0;

foreach ($passport in $passports) {
    
     if (($passport -match "byr:") -and ($passport -match "iyr:") -and ($passport -match "eyr:") -and ($passport -match "hgt:") -and ($passport -match "hcl:") -and ($passport -match "ecl:") -and ($passport -match "pid:")) {
        
        $valid++;

        Write-Output ("Entry " + $passcount + " VALID (match # " + $valid + ") " + $passport);        

     } else {

     Write-Output ("Entry " + $passcount + " invalid: " + $passport);
     }


  # Write-Output ("Entry " + $passcount + " " + $passport);
  
    $passcount++;

}

Write-Output ("Valid Passports: " + $valid);