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
	  "id" => $_POST['id'], 
      "jautajums" => $_POST['jautajums'],
      "pareizaAtbilde"  => $_POST['pareizaAtbilde']
      
    );

    $sql = sprintf(
      "INSERT INTO %s (%s) values (%s)",
      "test2_jautajumi",
      implode(", ", array_keys($new_user)),
      ":" . implode(", :", array_keys($new_user))
    );
    
    $statement = $connection->prepare($sql);
    $statement->execute($new_user);
  } catch(PDOException $error) {
      echo $sql . "<br>" . $error->getMessage();
  }
}
?>
<?php require "templates/header.php"; ?>

  <?php if (isset($_POST['submit']) && $statement) : ?>
    <blockquote><?php echo escape($_POST['jautajums']); ?> veiksmīgi pievienots.</blockquote>
  <?php endif; ?>

  <h2>Pievienot jautājumu</h2>

  <form method="post">
    <input name="csrf" type="hidden" value="<?php echo escape($_SESSION['csrf']); ?>">
	<label for="id">ID</label>
    <input type="text" name="id" id="id">
    <label for="jautajums">jautajums</label>
    <input type="text" name="jautajums" id="jautajums">
    <label for="pareizaAtbilde">pareizaAtbilde</label>
    <input type="text" name="pareizaAtbilde" id="pareizaAtbilde">
    
    <input type="submit" name="submit" value="Submit">
  </form>

  <a href="index.php">Back to home</a>

<?php require "templates/footer.php"; ?>
