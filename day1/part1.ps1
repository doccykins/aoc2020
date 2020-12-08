foreach ($number in $numbers) {
	
	foreach ($morenumber in $numbers) {
		$x = $number.numbers;
		$z = [Int]$x + [Int]$y; 
		if ([Int]$z -eq 2020) {
			$n = [Int]$x * [Int]$y; 
			Write-Output $n ; 
			Write-Output ("x = " + $x + " y = " + $y + " z = " + $z + " Mult " + [Int]$x * [Int]$y)
			}
		$y = $morenumber.numbers; $z = 0;
	}
}