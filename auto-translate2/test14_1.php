<html>
<head>
<?php
function process($filename)
{
    if (!file_exists($filename)) {
        throw new \ErrorException('File not found');
    }
    $articles = simplexml_load_file($filename, SimpleXMLElement::class, LIBXML_NOXMLDECL);
    $iterator = 0;
    foreach ($articles->children() as $article) {
        // Get
        $name = $article['Name'];
		$name = '<mytag>'.$name.'</mytag>';
		$arr[$iterator] = $name;
		
        // todo: do magic
        //$name = 'NAME ATTR: ' . $name;
   //echo $name;
			if ($iterator >=2000) break;
			$iterator++;
        }     // end of foreeach_
    return $arr;
     //   echo $article->asXML(), PHP_EOL, '<br>', PHP_EOL;
    //$articles->saveXML('processedRu_' . $filename);
}    //end of process....
function processBack($filename,$back)
{
    if (!file_exists($filename)) {
        throw new \ErrorException('File not found');
    }
    $articles = simplexml_load_file($filename, SimpleXMLElement::class, LIBXML_NOXMLDECL);
    $iterator = 0;  $kindex = 0;
    foreach ($articles->children() as $article) {
        // Get
        $article['Name'] = $back[$kindex];
		
        
			if ($iterator >= 2000) break;
			$iterator++;  $kindex++;
        }     // end of foreeach_
    //return $iterator;
     //   echo $article->asXML(), PHP_EOL, '<br>', PHP_EOL;
    $articles->saveXML('processedRu_' . $filename);
	$doneF = 7;
	return $doneF;
}    //end of process....
?>
<?
$tmparr = process("bef_upd.xml");    //peremennaja kotoraja hranit rezultat viborki (atr name).


function dotheM ($vartoTranslate){
	echo "<script> window.onload = function() {
     doGet(".json_encode($vartoTranslate).");
	 setTimeout(emulateClick, 30000);   
	 
 }; </script>";	
}
function outputToArr($output) {
	$regex = '^<mytag>^';
	$res = preg_split($regex,$output);
	//var_dump($res);
	for($k =0;$k<sizeof($res)-1;$k++){  $res2[$k] = $res[$k+1]; }
	return $res2;
}

?>
<script>
/* Written by VikBel */
function doGet(sourceText) {
	
  var sourceLang = 'auto';
  var targetLang = 'ru';
  var proxyUrl = 'http://cors.sytes.net/';
  //var proxyUrl = 'https://thingproxy.freeboard.io/fetch/';
  for (i=0;i<=2000 ; i++){
	  //alert(i);
  var url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl="
            + sourceLang + "&tl=" + targetLang + "&dt=t&q=" + encodeURI(sourceText[i]);
			
	fetch(url)
  .then((response) => {
    return response.json();
  })
  .then((data) => {
	  
   var translatedText = data[0][0][0]; // if text has more paragraph? then in result array is [0][0][0],[0][0][1]
   console.log(translatedText);
   document.getElementById("myText").value += translatedText;
  });
  }
  var myRes = (document.getElementById("myText").value);
  return myRes;
  }  //end doget
  
  </script>
  <script>
  function emulateClick(){
	  document.getElementById('theSubmitButton').click();
	 // window.stop();
  }
  </script>
  </head>
  <body>
 
 <form method="post" name="form" action="test14_1.php" > 
   <?php
	dotheM ($tmparr);
	$result = $_POST['data'];
	//echo "переменная" .$result; 
	if ( $_SERVER['REQUEST_METHOD'] == 'POST' ) {  
	strip_tags($result,'<mytag>');
	$backToxml = outputToArr($result);
	//var_dump($backToxml);
	//echo $backToxml[1];  /* $toexit = 1;     */ 
	
	$toexit = processBack("bef_upd.xml",$backToxml);
	//echo $backToxml[2000];
	echo "Готово.";
	
	}
	if ($toexit == 7) {header("Location: success.php");  }
	//if(isset($toexit)){ header("Location: success.php");  }      // это условие нужно для того, чтобы переменная 
//	$result; получив значение, потом выполнение скрипта останавливалось. А не то скрипт выполняется постоянно и
// и через несколько итераций гугл блокирует функцию перевода.
	
   ?>
        <input type="text"  id="myText" name="data" style="visibility:hidden;"  > 
        <input type="submit" value="Submit" id="theSubmitButton"> 
    </form> 
 
  </body>
  </html>