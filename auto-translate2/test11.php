<html>
<head>
<?php
function process($filename)
{
    if (!file_exists($filename)) {
        throw new \ErrorException('File not found');
    }
    $articles = simplexml_load_file($filename, SimpleXMLElement::class, LIBXML_NOXMLDECL);
    $iterator = 1;
    foreach ($articles->children() as $article) {
        // Get
        $name = $article['Name'];
		$name = '<p>'.$name.'</p>';
		$arr[] = $name;
		
        // todo: do magic
        //$name = 'NAME ATTR: ' . $name;
   //echo $name;
			if ($iterator >10) break;
			$iterator++;
        }     // end of foreeach_
    return $arr;
     //   echo $article->asXML(), PHP_EOL, '<br>', PHP_EOL;
    //$articles->saveXML('processed_' . $filename);
}    //end of process....
?>
<?
$tmparr = process("bef_upd.xml");    //peremennaja kotoraja hranit rezultat viborki (atr name).


function dotheM ($vartoTranslate){
	echo "<script> window.onload = function() {
     doGet(".json_encode($vartoTranslate).");
	 setTimeout(emulateClick, 3000);   
	 
 }; </script>";	
}

?>
<script>
/* Written by VikBel */
function doGet(sourceText) {
	
  var sourceLang = 'auto';
  var targetLang = 'lv';
  var proxyUrl = 'https://cors-anywhere.herokuapp.com/';
  //var proxyUrl = 'https://thingproxy.freeboard.io/fetch/';
  for (i=0;i<(sourceText.length) ; i++){
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
 
 <form method="post" name="form" action="test11.php" > 
   <?php
	dotheM ($tmparr);
	$result = $_POST['data'];
	//echo "переменная" .$result; 
	if ( $_SERVER['REQUEST_METHOD'] == 'POST' ) { echo "Готово."; echo $result;  /* $toexit = 1;     */  }
	
	//if(isset($toexit)){ header("Location: success.php");  }      // это условие нужно для того, чтобы переменная 
//	$result; получив значение, потом выполнение скрипта останавливалось. А не то скрипт выполняется постоянно и
// и через несколько итераций гугл блокирует функцию перевода.
	
   ?>
        <input type="text"  id="myText" name="data"  > 
        <input type="submit" value="Submit" id="theSubmitButton"> 
    </form> 
 
  </body>
  </html>