<?php
	$dbHost = 'localhost';
	$dbUsername = 'root';
	$dbPassword = '';
	$dbName = 'vietproshop';

	//$conn = mysqli_connect('localhost','root','','vietproshop')
	//Do may em là may thuc hien code chinh ma em cai mysql workbench nen bi xung dot ve port
    //Vi sql cua Xampp va Workbench bi trung cong 3306 nen em chuyen port cua Xampp thanh 3307
	//Ma cac lenh mysqli deu co lien quan den port 3306 nen em phai them phan port vao code la
	//$conn = mysqli_connect($dbHost,$dbUsername,$dbPassword,$dbName,'3306'); dang ra trong do la 3307 ma em sua thanh vay vi da so cac thay co cac ban deu dung 3306  va de neu thay hoac quy thay co anh chi trong khoa co khoi chay thi co the chu y va doi lai port 
	$conn = mysqli_connect($dbHost,$dbUsername,$dbPassword,$dbName,'3306');
	if ($conn){
          $setLang=mysqli_query($conn, "SET NAMES 'utf8'");
		  echo " Kết nối thành công " ;
	}
	else {
		die ('Kết nối thất bại!'.mysqli_connect_error());
	}

?>