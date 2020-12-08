
foreach ($evenmore in $numbers) {
	foreach ($number in $numbers) {
		foreach ($morenumber in $numbers) {
			$x = $number.numbers;
			$z = [Int]$x + [Int]$y + [Int]$c;
			if ([Int]$z -eq 2020) {
				$n = [Int]$x * [Int]$y * [Int]$c; 
				Write-Output $n; 
				Write-Output ("x = " + $x + " y = " + $y + " z = " + $z + " c = " + $c + " Mult " + [Int]$x * [Int]$y * [Int]$c)
			}
			$y = $morenumber.numbers; 
			$c = $evenmore.numbers; 
			$z = 0;
		}
	}
}