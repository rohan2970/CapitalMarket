<html>
<head>
	<title>R Graphs</title>
	<style>
		.plot{
			border:1px solid #cacaca;
			width:400px;
		}
	</style>
</head>
<body>
	<div id='graphs'>
		<?php
			$stock = $_REQUEST['stock'];
			//Deleting Previous Session Files
			exec('del "C:\xampp\htdocs\Server\1.png"', $out, $ret);
			exec('del "C:\xampp\htdocs\Server\2.png"', $out, $ret);
			exec('del "C:\xampp\htdocs\Server\4.png"', $out, $ret);
			exec('del "C:\xampp\htdocs\Server\5.png"', $out, $ret);
			exec('del "C:\xampp\htdocs\Server\table.csv"', $out, $ret);
			
			//Downloading Data From Yahoo 
			$url = "http://ichart.finance.yahoo.com/table.csv?d=6&e=1&f=2015&g=d&a=7&b=19&c=2001%20&ignore=.csv&s=".$stock;
			//Copying to file on Server
			copy($url, 'table.csv');
			//Executing R Script
			exec('"C:\Program Files\R\R-3.2.0\bin\Rscript.exe" "C:\xampp\htdocs\Server\first.r"', $output, $return);
			//Showing Output Images
					echo "<h2>Plotting Stock Data</h2><img src='1.png' class='plot'>";
					echo "<img src='2.png' class='plot'><br>";
					echo "<h2>Moving Average</h2><img src='4.png' class='plot'>";
					echo "<h2>Exponential Moving Average</h2><img src='5.png' class='plot'>";
					
					echo "<br>";
		?>
	</div>
</body>

