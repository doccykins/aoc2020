$Trees = (Get-Content ".\input.txt")

Write-Output $Trees | Measure-Object -Character;

Write-Output $Trees.length

# Right 1, down 1
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

    $position = $position + 1;

    if($position -ge 31) {
        $position = $position - 31;    
    }


}

Write-Output "";
Write-Output ("Number of Trees: " + $blocked);
$r1d1 = $blocked;

# Right 3, down 1
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
$r3d1 = $blocked;

# Right 5, down 1
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

    $position = $position + 5;

    if($position -ge 31) {
        $position = $position - 31;    
    }


}

Write-Output "";
Write-Output ("Number of Trees: " + $blocked);
$r5d1 = $blocked;

# Right 7, down 1
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

    $position = $position + 7;

    if($position -ge 31) {
        $position = $position - 31;    
    }


}

Write-Output "";
Write-Output ("Number of Trees: " + $blocked);
$r7d1 = $blocked;

# Right 1, down 2
# 323 lines, 31 characters per line
$line = 0;
$position = 0;
$space = 0;
$blocked = 0;
$skip = 0;



foreach ($tree in $trees) {
    $line++;
    if($skip -eq '0'){
        if($tree[$position] -eq '.') {
            $space++;
            $skip++;        
            Write-Output ("Line " + $line + ", position " + $position + " is space # " + $space);
        }

        if($tree[$position] -eq '#') {
            $blocked++;
            $skip++;
            Write-Output ("Line " + $line + ", position " + $position + " is tree # " + $blocked);
        }

        $position = $position + 1;

        if($position -ge 31) {
        $position = $position - 31;    
        }
    } else {
        $skip--;
    }

}

Write-Output "";
Write-Output ("Number of Trees: " + $blocked);
$r1d2 = $blocked;

Write-Output "";
Write-Output "Trees Multiplied: " $r1d1 * $r3d1 * $r5d1 * $r7d1 * $r1d2;
$totalTrees = $r1d1 * $r3d1 * $r5d1 * $r7d1 * $r1d2;
Write-Output "";
Write-Output $totalTrees;
