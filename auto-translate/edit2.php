<?php

function replace_string_in_file($filename, $string_to_replace, $replace_with){
    $content=file_get_contents($filename);
    $content_chunks=explode($string_to_replace, $content);
    $content=implode($replace_with, $content_chunks);
    file_put_contents($filename, $content);
}
$filename="bef_upd.xml";
//$oldMessage = 'XP_ADIDAS';
//$newMessage = 'Adidas';
//replace_string_in_file($filename, $oldMessage, $newMessage);
//echo "Success";

//photo1part
$oldMessage = '<photo Link="';
$newMessage = '<image count="1"><![CDATA[ ';
replace_string_in_file($filename, $oldMessage, $newMessage);
echo "Success photo1";

//photo2part
$oldMessage = '.jpg" />';
$newMessage = '.jpg ]]></image>';
replace_string_in_file($filename, $oldMessage, $newMessage);
echo "Success photo2";

//features1
$oldMessage = '<feature Feature="" EAN="" AvailQuantity="0.0000" />';
$newMessage = ' ';
replace_string_in_file($filename, $oldMessage, $newMessage);
echo "Success Features";

//features2 rename Feature=
$oldMessage = 'Feature=';
$newMessage = 'Size=';
replace_string_in_file($filename, $oldMessage, $newMessage);
echo "Success Features name";

//features3 nosize add Feature=""
$oldMessage = 'Size=""';
$newMessage = 'Size="sizeNotDef"';
replace_string_in_file($filename, $oldMessage, $newMessage);
echo "Success sizeNotDef update";

//features sizeopt define
$oldMessage = '<feature ';
$newMessage = '<feature MOption="Size" ';
replace_string_in_file($filename, $oldMessage, $newMessage);
echo "Success opt define.";

//features rename to Value define
$oldMessage = 'Size="';
$newMessage = 'Value="';
replace_string_in_file($filename, $oldMessage, $newMessage);
echo "Success Value define.";




?>