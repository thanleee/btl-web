
<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style-editproduct.css">
	<title>Update User</title>
</head>
<body>
	<h1>Update User</h1>
    
    
    <form action="update" method="post" enctype="multipart/form-data">
    
    	<label for="name">Phone:</label>
        <input type="text" id="phone" name="phone" value="${um.phone}" readonly><br><br>
        
        <label for="name">Email:</label>
        <input type="text" id="email" name="email" value="${um.email}"><br><br>
        
        <label for="name">Password:</label>
        <input type="text" id="password" name="password" value="${um.password}"><br><br>
        
        <label for="name">Cfpassword:</label>
        <input type="text" id="cfpassword" name="cfpassword" value="${um.cfpassword}"><br><br>
        
        <label for="name">Fname:</label>
        <input type="text" id="fname" name="fname" value="${um.fname}"><br><br>
        
        <label for="name">Lname:</label>
        <input type="text" id="lname" name="lname" value="${um.lname}"><br><br>
        
        <label for="name">Mid:</label>
        <input type="text" id="mid" name="mid" value="${um.mid}"><br><br>
        

        <button type="submit">Update</button>
    </form>
</body>
</html>