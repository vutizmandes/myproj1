<?php

/**
 * List all users with a link to edit
 */

require "../config.php";
require "../common.php";

try {
  $connection = new PDO($dsn, $username, $password, $options);
  
  $opt = $_GET['SelectedTest'];
  $goNext = $_GET['goN'];
  $opt2 = NULL;
  $optJaut = NULL;
 
  if ($opt == 1) {
     	  $opt2 = "test1_atbildes" ;
		  $optJaut = "test1_jautajumi";
		 // echo $opt2;
		  }
  else if ($opt == 2) {
	  $opt2 = "test2_atbildes" ;
	  $optJaut = "test2_jautajumi";
	//  echo $opt2;
	  }
  else if ($opt == 3) { 
		$opt2 = "test3_atbildes"; 
		$optJaut = "test3_jautajumi";
	//	echo $opt2;
		}
	

  $sql = "SELECT * FROM $opt2";
  $sql2 = "SELECT * FROM $optJaut";
  $statement = $connection->prepare($sql);
  $statement->execute();
  $result = $statement->fetchAll();
  
  $statement2 = $connection->prepare($sql2);
  $statement2->execute();
  $result2 = $statement2->fetchAll();
  
} catch(PDOException $error) {
  echo $sql . "<br>" . $error->getMessage();
}
?>
<div id="" style="position:absolute; left:30%; top:10px;">
<?php require "templates/header.php"; ?>

        



        
   
  <?php  function loadQuestion($index,$result,$end){
		
		foreach ($result as $row ){
		if (!isset($compjaut)){ goto st; }
		//$compjaut =  escape($row["jautajums"]) ;
		if ($compjaut != $row["jaut_num"]) {    }
		if (( $compjaut > $end)){ break;}
		st:
		$compare = escape($row["atbilde"]);
		echo "Atbildes variants:".$compare;
		$compjaut =  escape($row["jaut_num"]) ;
		
		//echo $compjaut.":: ";
		//echo $compare;
		//echo "jaut. ";
		echo "<br>";	
			
		}   
		
  }
  echo "<h2>Jautājums nr.::".$goNext."</h2><br>";
  loadQuestion($goNext,$result,$goNext);
  $goNext = $goNext + 1;
  //echo "nuznoe::".$goNext;
  
  
 
   ?>
  
  
	<a href="test-quiz.php?SelectedTest=<?php echo $opt ?>&goN=<?php echo $goNext ?>">Nakošais jautājums</a><br>
       

	
	

<a href="index.php">Back to home</a>
</div>
<?php require "templates/footer.php"; ?>