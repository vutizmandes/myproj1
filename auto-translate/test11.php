<html>
<head>
<script>
/* Written by Amit Agarwal */
function doGet(sourceText) {
  var temp;
  var mojaper;
  //var sourceText = 'i am try to do something.'
  var sourceLang = 'auto';
  var targetLang = 'lv';
  var url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl="
            + sourceLang + "&tl=" + targetLang + "&dt=t&q=" + encodeURI(sourceText);
			
	fetch(url)
  .then((response) => {
    return response.json();
  })
  .then((data) => {
   var translatedText = data[0][0][0]; // if text has more paragraph? then in result array is [0][0][0],[0][0][1]
   // var temp = console.log(translatedText);
   //return temp;
   console.log(translatedText);
   document.getElementById("myText").value = translatedText;
  });
  //.then((translatedText) => mojaper);
 // document.getElementById("myText").value = mojaper;
  // JSON.parse
  var myRes = (document.getElementById("myText").value);
  
  //alert (myRes);
  
  return myRes;
  }  //end doget
  </script>
  <script>
  function doGet2() {
	  var param = doGet('let the big dog eat');
	  alert(param);
  }
  function emulateClick(){
	  
	  document.getElementById('theSubmitButton').click();
	 // alert('trigerred');
	 // window.stop();
  }
  </script>
  </head>
  <body>
  <button onclick="doGet()">Click me</button>
  
  <button onclick="doGet2()">Click me2</button>
  <p id="demo">Click me.</p>
  
  <?php
  
  $test = 1;
 
 echo 'asdfj;lsadjkf;sldkj;f';
 echo $test;
 $teststr = "hello Maksim, how are you";

 if(($test == 1)){
     echo "<script> window.onload = function() {
     doGet(".json_encode($teststr).");
	 setTimeout(emulateClick, 3000);
	
 }; </script>";
 $test = 2;
// $test_pro =  "<script> window.onload = function() {
 //    doGet(".json_encode($teststr).");
// }; </script>"; 
 
 //$test_pro = "<script>(document.getElementById('demo').innerHTML)</script>";
 //echo "for some reasons >>>" .$test_pro;
 }
// header("Location: test11.php?data=".$test_pro);
// $test_pro = $_GET['demo']; 
// echo "for some reasons >>>" .$test_pro;
?>
 <form method="get" name="form" action="test11.php" > 
   <?php

$result = $_GET['data']; 
echo "переменная" .$result; 
// $result2 = $_POST['ttt'];;
// $test = NULL;
 ?>
        <input type="text"  id="myText" name="data"  > 
        <input type="submit" value="Submit" id="theSubmitButton"> 
    </form> 
	<?php
	
?>
 
  </body>
  </html>