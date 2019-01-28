<?php

/**
 * List all users with a link to edit
 */

require "../config.php";
require "../common.php";

try {
  $connection = new PDO($dsn, $username, $password, $options);

  $sql = "SELECT * FROM test3_pareizas_atbildes";

  $statement = $connection->prepare($sql);
  $statement->execute();

  $result = $statement->fetchAll();
} catch(PDOException $error) {
  echo $sql . "<br>" . $error->getMessage();
}
?>
<?php require "templates/header.php"; ?>
        
<h2>Atbilzu saraksts</h2>

<table>
    <thead>
        <tr>
            <th>jaut_id#</th>
            <th>Pareiza atbilde</th>
            <th>ParAtbID</th>
            
			
        </tr>
    </thead>
    <tbody>
    <?php foreach ($result as $row) : ?>
        <tr>
            <td><?php echo escape($row["jaut_id"]); ?></td>
            <td><?php echo escape($row["pareizaAtbilde"]); ?></td>
            <td><?php echo escape($row["pareizaAtbilde_id"]); ?></td>
            
			
			
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>

<a href="index.php">Back to home</a>

<?php require "templates/footer.php"; ?>