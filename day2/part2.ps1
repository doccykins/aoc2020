$passwords = Import-CSV .\input.csv -Delimiter " "
$entry = 0;
$correct = 0;
$lettercount = 0;
ForEach ($password in $passwords) {
    $entry++;
    Write-Output ("Entry #"+ $entry);
    Write-Output "";
    $letter = $password.letter[0];
    $range = $password.Number.Trim();
    Write-Output ("Range Length: " + $range.Length);

    if ($range.Length -eq 3) {
        $lowerrange = $range.Substring(0,1);
        $upperrange = $range.Substring(2,1);
    } 
    
    if ($range.Length -eq 4) {
        $lowerrange = $range.Substring(0,1);
        $upperrange = $range.Substring(2,2);
    } 
    
    if ($range.Length -eq 5) {
        $lowerrange = $range.Substring(0,2);
        $upperrange = $range.Substring(3,2);
    }

    Write-Output "Letter: " $letter;
    Write-Output "Range: " $range 
    Write-Output "Lower range: " $lowerrange;
    Write-Output "Upper range: " $upperrange;

    $pass = ($password.password.ToCharArray());
    

    foreach ($pas in $pass) {
        if ($pas -eq $letter) { $lettercount++;}
    }

    Write-Output "Password: " $pass;

    Write-Output "Letter Count: " $lettercount;

    Write-Output ( "If (( " + $lettercount + " -ge " + $lowerrange + " ) -and ( " + $lettercount + " -le " + $upperrange + " ))");
    if (($lettercount -ge $lowerrange) -and ($lettercount -le $upperrange)) {
        $correct+=1;
        Write-Output "CORRECT";
        Write-Output $correct; 
    }

    Write-Output "";
    $lettercount = 0;
    $lowerrange = 0;
    $upperrange = 0;
}
Write-Output "";
Write-Output "Total Correct";
Write-Output $correct;