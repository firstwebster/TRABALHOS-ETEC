<?php
$nome=$_POST["nome"];
$senha=$_POST['senha'];
echo $op=$_POST['op'];
//@ esconde o erro de valor em branco//
//&& significa E
// || ou or significa OU

if(($nome=="ituano"))&&($senha=="6x7");
{
	switch ($op) {
		case "1": header("location:ds.php");
			# code...
			break;
		case "": header("location.inf.php")
			# code...
			break;
		default: echo "valor incorreto" ;
			# code...
			break;
	}
}

else 
{
	header(("location:form.php"));
}

?>
