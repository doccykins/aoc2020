$Trees = (Get-Content ".\input.txt")

Write-Output $Trees | Measure-Object -Character;

Write-Output $Trees.length

# 323 lines, 31 characters per line

$line = 0;
$position = 0;
$space = 0;
$blocked = 0;

foreach ($tree in $trees) {
    
    $line++;
    if($tree[$position] -eq '.') {
        $space++;        
        Write-Output ("Line " + $line + ", position " + $position + " is space # " + $space);
    }

    if($tree[$position] -eq '#') {
        $blocked++;
        Write-Output ("Line " + $line + ", position " + $position + " is tree # " + $blocked);
    }

    $position = $position + 3;

    if($position -ge 31) {
        $position = $position - 31;    
    }


}

Write-Output "";
Write-Output ("Number of Trees: " + $blocked);