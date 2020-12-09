$passports = Get-Content ".\input.txt" -Delimiter "`n`n";

$passcount = 0;

$valid = 0;

$valid_flag = 0;

foreach ($passport in $passports) {

    $byr_flag = $false;
    $iyr_flag = $false;
    $eyr_flag = $false;
    $hgt_flag = $false;
    $hcl_flag = $false;
    $ecl_flag = $false;
    $pid_flag = $false;

     $passcount++;
     Write-Output ("Passport #" + $passcount);
    
     $byr_flag = ($passport -match "byr:((19[2-9][0-9])|(200[0-2]))");
     Write-Output ("Birth Year " + $byr_flag);

     $iyr_flag = ($passport -match "iyr:20(1[0-9]|20)");
     Write-Output ("Issue Year " + $iyr_flag);

     $eyr_flag = ($passport -match "eyr:20(2[0-9]|30)");
     Write-Output ("Expiration Year " + $eyr_flag);

     $hgt_flag = ($passport -match ("hgt:((1[5-8][0-9]|19[0-3])cm|(59|6\d|7[0-6])in)"));
     Write-Output ("Height " + $hgt_flag);

     $hcl_flag = ($passport -match "hcl:#[0-9a-fA-F]{6}");
     Write-Output ("Hair Colour " + $hcl_flag);

     $ecl_flag = ($passport -match "ecl:(amb|blu|brn|gry|grn|hzl|oth)");
     Write-Output ("Eye Colour " + $ecl_flag);

     $pid_flag = ($passport -match "pid:[0-9]{9}");
     Write-Output ("Passport ID " + $pid_flag);
       

     if ($byr_flag -and $iyr_flag -and $eyr_flag -and $hgt_flag -and $hcl_flag -and $ecl_flag -and $pid_flag) { 
     
        $valid++; 

        Write-Output ("VALID Passport #" + $valid + ": " + $passport);
        Write-Output ("");

     } else {

        Write-Output ("");
        Write-Output ("Passport #" + $passcount + " invalid: " + $passport);

     }

}

Write-Output ("Valid Passports: " + $valid);