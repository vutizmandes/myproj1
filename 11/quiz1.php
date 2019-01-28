<?php

/**
 * Use an HTML form to create a new entry in the
 * users table.
 *
 */

require "../config.php";
require "../common.php";

if (isset($_POST['submit'])) {
  if (!hash_equals($_SESSION['csrf'], $_POST['csrf'])) die();

  try  {
    $connection = new PDO($dsn, $username, $password, $options);
    
    $new_user = array(
	  "id" => rand(1,100),       // vnk, lai atrast DB
      "Name" => $_POST['Name'],
      "SelectedTest"  => $_POST['SelectedTest'],  //šobrīd ir 3 testi pieejami
	  "testResult" => 0,   // untill test is competed
      
    );

    $sql = sprintf(
      "INSERT INTO %s (%s) values (%s)",
      "klienti",
      implode(", ", array_keys($new_user)),
      ":" . implode(", :", array_keys($new_user))
    );
    
    $statement = $connection->prepare($sql);
    $statement->execute($new_user);
  } catch(PDOException $error) {
      echo $sql . "<br>" . $error->getMessage();
  }
  $test = $_POST['SelectedTest'];
  $que = 1;
  header ("Location: test-quiz.php?SelectedTest=$test&goN=$que");
}
?>
<script>
function delContent() { document.getElementById('Name').value = " "; }
</script>
<script>gotoTest() {window.location = 'http://www.yourdomain.com' } </script>
<div id="" style="position:absolute; left:30%; top:10px;">
<?php require "templates/header.php"; ?>

  <?php if (isset($_POST['submit']) && $statement) : ?>
    <blockquote><?php echo escape($_POST['Name']); ?> veiksmīgi pievienots.</blockquote>
  <?php endif; ?>

  <h2>Izvēlies savu testu..</h2>
  

  <form method="post" >
    <input name="csrf" type="hidden" value="<?php echo escape($_SESSION['csrf']); ?>">
	
					<label for="Name" >Jūsu Vārds?</label>
					<input type="text" name="Name" id="Name" onClick="delContent()" value="Vārds..."><br>
	
					<select id="SelectedTest" name="SelectedTest">
                      <option value="1">Tests 1</option>
                      <option value="2">Tests 2</option>
                      <option value="3">Tests 3</option>
                    </select><br>
					
	<!-- <label for="id">ID</label>
    <input type="text" name="id" id="id"> -->
	
    
	
    <!--<label for="SelectedTest">izvēlos testu 1 vai 2 vai 3 </label>
    <input type="text" name="SelectedTest" id="SelectedTest"> -->
    
    <input id="btn" type="submit" name="submit" value=">>> Sākt" >
  </form>
  <a href="index.php">Back to home</a>
  </div>

  

<?php require "templates/footer.php"; ?>
