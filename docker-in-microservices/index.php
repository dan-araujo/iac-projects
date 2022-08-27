<!DOCTYPE html>
<html lang="en">
 <head>
   <meta charset="UTF-8">
   <title>Site with PHP</title>
 </head>
<body>
  
<?php
  ini_set("display_erros", 1);
  header('Content-Type: text/html; charset=UTF-8');

  echo 'Current version of PHP: ' . phpVersion() . '<br>';

  $servername = "54.234.153.24";
  $username = "root";
  $password = "Senha123";
  $database "mydatabase";

  // Create connection
  $link = new mysqli($servername, $username, $password, $database);

  // Check the connection
  if(mysqli_connect_errno()) {
      printf("Connect faied: %s\n", mysqli_connect-error());
      exit();
  }

$random_value1 = rand(1, 999);
$random_value2 = strtoupper(substr(bin2hex(random_bytes(4)), 1));
$host_name = gethostname();

$query = "INSERT INTO aluno (AlunoId, Nome, Sobrenome, Endereco, Cidade, Host) VALUES ('$random_value1', '$random_value2', '$random_value2', '$randomvalue2', '$random_value2', '$host_name')";

  if($link->query($query) === TRUE) {
      echo "New record created successfully!";
  } else {
      echo "Error: " . $link->error;
  }
 
?>

</body>
</html>
