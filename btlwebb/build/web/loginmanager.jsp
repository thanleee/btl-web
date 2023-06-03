<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
     <link rel="icon" href="./imgages/logoboohoo.png">
    <link rel="stylesheet" href="style-loginmn.css">
    
    <script src="https://kit.fontawesome.com/9d9613e72c.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Saira+Extra+Condensed:wght@200&display=swap" rel="stylesheet">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="login.css">
</head>
<body >


    
    
  
   	<div class="login" style="margin-top:110px; height: auto">
            <div class="container" style="height: 460px;">
    <form action="loginmn" method="post" >
        <div class="content hop1">
            <div class="header">
                <span class="text1" style="font-size: 22px">Đăng Nhập quản lí cửa hàng</span>
                
                
            </div>
            <div class="body body-email">
                <span class="text">Email</span>
                <input type="text" name="email" class="input input__email" placeholder=" Nhập email của bạn">
            </div>
            <div class="body body-mk">
                <span class="text">Password</span>
                <div class="pw">
                    <input style="width: 100%" type="password" name="password" class="input input__password" placeholder=" Nhập mật khẩu của bạn">
                    
                </div>
         
					<div id="error-message" style="display: none; color: red;"></div>
            </div>
            
            <div class="click-login">
                <button type="submit" class=" click-login__login ">Đăng nhập</button>
               
            </div>
            
        </div>
    </form>
        
        <div class="img" style="background-image: url(https://media.boohoo.com/i/boohooamplience/375x88_BANNER_NEWIN_2);"></div>
    </div>
		</div>

   
    <script src="https://code.jquery.com/jquery-2.2.4.js"></script>
    	<script>
		console.log("Xoá");
		$(".dangnhap").click(function(event){
			event.preventDefault();
            
			if(confirm("Bạn đã nhập sai mật khẩu! Vui lòng thử lại.")){
//				var link = $(this).attr('href');
//				window.location = link;
                                var currentURL = window.location.href;
                                window.location.href = currentURL;
			}else{
				console.log("Huỷ");
			}
		});
	</script>
     </body>
</html>