<%-- 
    Document   : product
    Created on : May 10, 2023, 12:24:58 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BOOHOO | Woments and Mens</title>

        <link rel="icon" href="img/logoboohoo.png">
        <link rel="stylesheet" href="css/style-head-women.css">
        <link rel="stylesheet" href="./css/product_style.css">
        <link rel="stylesheet" href="style1.css">
        <script src="https://kit.fontawesome.com/9d9613e72c.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Saira+Extra+Condensed:wght@200&display=swap" rel="stylesheet">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    </head>

    <body>

        <header class="mt">
            <div class="row">
                <div class="adv">
                    <div class="ani">
                        <div class="ani1">
                            <a href="https://us.boohoo.com/womens/promo/flash-sale-2?home_primarysplash_flash-sale-2">
                                SPRING SAVINGS - UP TO 80% OFF!
                            </a>
                        </div>

                        <!-- <div class="ani1">
                            <a href="https://us.boohoo.com/womens/promo/flash-sale-2?home_primarysplash_flash-sale-2"> OR
                                50%
                                OFF + FREE SHIPPING!</a>
                        </div> -->
                    </div>
                    <p>*Discounts may not be based on former prices. <a id="policy"
                                                                        href="https://us.boohoo.com/page/terms-and-conditions.html#pricing-policy-anchor">See pricing
                            policy</a> </p>

                </div>
            </div>
            <div class="row">
                <div class=" row1">
                    <div class="nav-bar">
                        <a id="bartab" href="#"><span class="material-symbols-outlined">
                                density_medium
                            </span></a>
                        <div class="bartab">
                            <div id="bartab-content" class="bartab-content">
                                <div class="bartab-list">
                                    <button id="women"><a href="women">WOMENS</a></button>
                                    <button id="men"><a href="men">MENS</a></button>
                                </div>
                                <div class="menubartab">
                                    <div class="img-menu">50% OFF + FREE SHIPPING!</div>

                                    <div class="menubar-list"><a href="#"> OFFERS</a>

                                    </div>
                                    <div class="menubar-list"><a href="#">NEW IN</a>
                                        <!-- <div class="headmenu-list">
                                            <button class="menunav-list1">
                                                <span class="material-symbols-outlined">
                                                    arrow_back_ios_new
                                                </span>
                                                <p>NEW IN</p>
                                            </button>
                                            <div class="menunav-list"><a href="#"> VIEW ALL</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN CLOTHING</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN DRESSES</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN SHOES</a></div>
                                            <div class="menunav-list"><a href="#">NEW IN ACCESSORIES</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN BEAUTY</a></div>
                                            <div class="menunav-list"><a href="#"> JUST LANDED</a></div>
    
                                            <div class="menunav-list1">
                                                <p> NEW IN BY FIGURE</p>
                                            </div>
                                            <div class="menunav-list"><a href="#"> NEW IN BY FIGURE</a></div>
                                            <div class="menunav-list"><a href="#"></a>NEW IN PLUS & CURVE</div>
                                            <div class="menunav-list"><a href="#"></a> NEW IN PETITE</div>
                                            <div class="menunav-list"><a href="#"></a>NEW IN TALL</div>
                                            <div class="menunav-list"><a href="#"></a>NEW IN MATERNITY</div>
                                        </div> -->

                                    </div>
                                    <div class="menubar-list"><a href="#">ALL CLOTHING</a>
                                        <!-- <div id="headmenu-list" class="headmenu-list">
                                            <button id="menunav-list1" class="menunav-list1">
                                                <span class="material-symbols-outlined">
                                                    arrow_back_ios_new
                                                </span>
                                                <p>ALL clothong</p>
                                            </button>
                                            <div class="menunav-list"><a href="#"> VIEW ALL</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN CLOTHING</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN DRESSES</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN SHOES</a></div>
                                            <div class="menunav-list"><a href="#">NEW IN ACCESSORIES</a></div>
                                            <div class="menunav-list"><a href="#"> NEW IN BEAUTY</a></div>
                                            <div class="menunav-list"><a href="#"> JUST LANDED</a></div>
    
                                            <div class="menunav-list1">
                                                <p> NEW IN BY FIGURE</p>
                                            </div>
    
    
    
    
    
                                            <div class="menunav-list"><a href="#"> NEW IN BY FIGURE</a></div>
                                            <div class="menunav-list"><a href="#"></a>NEW IN PLUS & CURVE</div>
                                            <div class="menunav-list"><a href="#"></a> NEW IN PETITE</div>
                                            <div class="menunav-list"><a href="#"></a>NEW IN TALL</div>
                                            <div class="menunav-list"><a href="#"></a>NEW IN MATERNITY</div>
                                            <div class="emty-element"></div>
                                        </div> -->

                                    </div>
                                    <div class="menubar-list"><a href="#">PLUS SIZE CLOTHING</a></div>
                                    <div class="menubar-list"><a href="#">TOPS</a></div>
                                    <div class="menubar-list"><a href="#">SPRING</a></div>
                                    <div class="menubar-list"><a href="#">OCCASION WEAR</a></div>
                                    <div class="menubar-list"><a href="#">FESTIVAL OUTFITS</a></div>
                                    <div class="menubar-list"><a href="#">SHOP BY FIT</a></div>
                                    <div class="menubar-list"><a href="#">SALE</a></div>
                                    <!-- <div class="menubar-list"><a href="#"></a></div>
                                    <div class="menubar-list"><a href="#"></a></div>
                                    <div class="menubar-list"><a href="#"></a></div>
                                    <div class="menubar-list"><a href="#"></a></div> -->


                                    <div class="img-menu"></div>
                                    <div class="emty-element"></div> <!--tạo phần tử rỗng để không bị mất ptu cuối-->
                                </div>
                                <div class="menubartab-men">
                                    <div class="img-menu-men"></div>

                                    <div class="menubar-list"><a href="#"> OFFERS</a></div>
                                    <div class="menubar-list"><a href="#">MEN'S NEW IN</a></div>
                                    <div class="menubar-list"><a href="#">CLOTHING</a></div>
                                    <div class="menubar-list"><a href="#">PLUS & TALL</a></div>
                                    <div class="menubar-list"><a href="#">MEN'S ACTIVEWEAR</a></div>
                                    <div class="menubar-list"><a href="#">GOING OUT</a></div>
                                    <div class="menubar-list"><a href="#">MΛN</a></div>
                                    <div class="menubar-list"><a href="#">MEN'S SHOES & ACCESSORIES</a></div>
                                    <div class="menubar-list"><a href="#">MEN'S SALE</a></div>

                                    <!-- <div class="menubar-list"><a href="#">SHOP BY FIT</a></div>
                                    <div class="menubar-list"><a href="#">SHOP BY FIT</a></div>
                                    <div class="menubar-list"><a href="#">SHOP BY FIT</a></div>
                                    <div class="menubar-list"><a href="#">SHOP BY FIT</a></div> -->


                                    <div class="img-menu-men"></div>
                                    <div class="emty-element"></div> <!--tạo phần tử rỗng để không bị mất ptu cuối-->
                                </div>
                            </div>
                            <button id="close" onclick="slideOut()"><a href="#" class="fa-solid fa-xmark"></a></button>
                        </div>


                    </div>
                    <div class="logo-nav">
                        <ul class="nav">
                            <li>
                                <div class="logo">
                                    <a href="#"><img src="img/boohoo_logo_black.png" alt=""></a>
                                </div>
                            </li>
                            <li class="list1">
                                <div>
                                    <p><a href="women">WOMENS</a> </p>
                                </div>
                            </li>
                            <li class="list2">
                                <div>
                                    <p><a href="men">MENS</a></p>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div class="search1">
                        <input type="search" placeholder="What are you looking for?">
                        <button> <a href="#"><span class="material-symbols-outlined">
                                    search
                                </span></a></button>

                    </div>
                    <div class="user">
                                    	
                        <li> <a id="login-singup" class="fa-regular fa-user" href="#"></a>
               		  <c:if test = "${fname.fname == null}">
                        <div id="containerlogin" class="containerlogin">
                            
                        
                            <div class="container-log">
                           
                             <form action="login" method="post">
                                <div class="content hop1">
                                    <div class="header">
                                        <span class="text1">LOGIN</span>
                                        <a href="women"><button id="delete" onclick="slideOut2()">
                                            <div class="delete">X</div>
                                        </button>
                                        </a>
                                    </div>
                                    <div class="body body-email">
                                        <span class="text">Email</span>
                                     
                                        <input type="text" name="email" class="input input__email" placeholder="Nhập email của bạn">
                                    </div>
                                    <div class="body body-mk">
                                        <span class="text">Password</span>
                                        <div class="pw">
                                            <input type="password" name="password" class="input input__password" placeholder="Nhập mật khẩu của bạn">
                                            <div class="input__password-show">
                                                <a href="" class="input-show show">Show</a>
                                            </div>
                                        </div>
                                        <% if (request.getAttribute("error") != null) { %>
                                        <p class="error-message" style="padding-bottom: 15px; margin-top: -20px; color: red"><%= request.getAttribute("error") %></p>
											<% } %>	
                                    </div>
                                    <div class="save-password">
                                        <a href="" class="save-password__click-on">
                                            <div class="save-password__empty"></div>

                                        </a>

                                        <span class="save-password__text">Remember me</span>
                                    </div>
                                    <div class="click-login">
                                        <button type="submit" class=" click-login__login">LOG IN</button>
                                        <a href="#" class="click-login__forget">Forgot Password?</a>
                                    </div>

                            
                                </form>
                                </div>
                                <div class="content hop2">

                                    <button class=" click-login__login"><a href="dangki.jsp">REGISTER</a></button>
                                </div>
                                <div class="img-log"
                                    style="background-image: url(https://media.boohoo.com/i/boohooamplience/375x88_BANNER_NEWIN_2);">
                                </div>
                            </div>
                        </div></c:if>
                    </li>
                        <c:if test="${fname.fname != null}">        
                    <li style=" border-right:1px solid #ddd; margin-top: 0px; margin-left: -5px; padding-right: 20px">
             		
             			<a style="font-size:1.5rem" href="#"> 
                                
                                     ${fname.fname}
                              
                                 
             			</a>
             		
             		</li>  </c:if>
                        <li> <a href="#"><span class="material-symbols-outlined">
                                    favorite
                                </span></a></li>
                        <li style=" margin-top:2px"> <a href="#" id="viewcart"><span class="material-symbols-outlined">
                                    shopping_bag
                                </span></a>
                            <div class="containcart" id="containcart">
                                <div class="container-cart">
                                    <div class="viewcart">
                                        <div class="header">
                                            <div class="header__text">YOUR CART</div>
                                            <div class="header__delete"><button onclick="slideOut3()">X</button></div>
                                        </div>
                                        <div id="cart">

                                        </div>

                                        <p>Total: <span id="total">$0.00</span></p>
                                        <div class="viewcart__sale">
                                            
                                            <span class="viewcart__text">*Plus applicable taxes</span>
                                            <div class="btn__viewcart flex ">
                                                <div class="btn__1">
                                                    <button class="btn btn--1">VIEW CART</button>
                                                </div>
                                                <div class="btn__2">
                                                    <button class="btn btn--2">CHECKOUT</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="vc__img"
                                             style="background-image: url(https://media.boohoo.com/i/boohooamplience/minicart-banner-bottom-nh?qlt=default&fmt=auto);">
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </li>

                         <li> <a href="dangxuat" style=" margin-top:5px">
                    <c:if test="${fname.fname != null}">
                       <span class="material-symbols-outlined">
                        logout
                        </span>
                    </c:if>
                    </a></li>
                    </div>
                </div>


            </div>
            <div class="menu">
                <div class="menu-bar">
                    <li class="menu-bar1"><a href="#" class="menu-bar11">NEW IN</a>
                        <ul class="menu1">
                            <li class="sub-menu">
                                <p> NEW IN</p>
                                <ul>
                                    <li><a href="#">View All</a></li>
                                    <li><a href="#"> New In Clothing</a></li>
                                    <li><a href="#">New In Dresses</a></li>
                                    <li><a href="#"> New In Accessories</a></li>
                                    <li><a href="#">New In Beauty</a></li>
                                    <li><a href="#">Just Landed Today</a></li>
                                    <li><a href="#">Just Landed</a></li>
                                    <li><a href="#">Bestsellers</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> NEW IN BY FIGURE</p>
                                <ul>
                                    <li><a href="#">New In Plus & Curve</a></li>
                                    <li><a href="#">New In Petite</a></li>
                                    <li><a href="#"> New In Tall</a></li>
                                    <li><a href="#">New In Maternity</a></li>
                                </ul>
                            </li>

                            <li class="sub-menu">
                                <p>OFFERS</p>
                                <ul>
                                    <li><a href="#">
                                            <p> App Exclusive - Free Shipping Over $50!*</p>
                                        </a></li>
                                    <li><a href="#">
                                            <p>App Exclusive - Free Shipping Over $50!* </p>
                                        </a></li>
                                </ul>
                            </li>

                        </ul>
                    </li>

                    <li class="menu-bar1"><a href="#" class="menu-bar11"><a href="#">ALL CLOTHING</a>
                            <ul class="menu1">
                                <li class="sub-menu">
                                    <p> ALL CLOTHING</p>
                                    <ul>
                                        <li><a href="#">New In</a></li>
                                        <li><a href="#"> Two Piece Sets</a></li>
                                        <li><a href="#">Tops</a></li>
                                        <li><a href="#">Dresses</a></li>
                                        <li><a href="#">Knitwear</a></li>
                                        <li><a href="#">Hoodies & Sweatshirts</a></li>
                                        <li><a href="#">Athleisure</a></li>
                                        <li><a href="#">Sweatpants</a></li>
                                        <li><a href="#">Tracksuits</a></li>
                                        <li><a href="#">Loungewear</a></li>
                                        <li><a href="#">Sweaters & Cardigans</a></li>
                                        <li><a href="#">Sweatpants</a></li>
                                        <li><a href="#">Tracksuits</a></li>
                                        <li><a href="#">Loungewear</a></li>
                                        <li><a href="#">Sweaters & Cardigans</a></li>

                                    </ul>
                                </li>
                                <li class="sub-menu">
                                    <p> SHOP BY TREND</p>
                                    <ul>
                                        <li><a href="#">Resort Wear</a></li>
                                        <li><a href="#">Spring Break Outfits</a></li>
                                        <li><a href="#">Matching Sets</a></li>
                                        <li><a href="#">Office Clothes</a></li>
                                        <li><a href="#">Cargo Pants</a></li>
                                        <li><a href="#">Wide Leg Jeans</a></li>
                                        <li><a href="#">Cargos and a Corset</a></li>
                                    </ul>
                                </li>
                                <li class="sub-menu">
                                    <p> SHOP BY OCCASION</p>
                                    <ul>
                                        <li><a href="#">Date Outfits</a></li>
                                        <li><a href="#">Wedding Guest Dresses</a></li>

                                    </ul>
                                </li>
                                <li class="sub-menu">
                                    <p>OFFERS</p>
                                    <ul>
                                        <li><a href="#">
                                                <p> App Exclusive - Free Shipping Over $50!*</p>
                                            </a></li>
                                        <li><a href="#">
                                                <p>App Exclusive - Free Shipping Over $50!* </p>
                                            </a></li>
                                    </ul>
                                </li>

                            </ul>
                    </li>
                    <li class="menu-bar1"><a href="#">PLUS SIZE CLOTHING</a>
                        <ul class="menu1">
                            <li class="sub-menu">
                                <p>PLUS SIZE & CURVE</p>
                                <ul>
                                    <li><a href="#">View All</a></li>
                                    <li><a href="#"> Plus Size New In</a></li>
                                    <li><a href="#">Plus Size Coats & Jackets</a></li>
                                    <li><a href="#">Plus Size Sweaters & Cardigans</a></li>
                                    <li><a href="#">Plus Size Pants</a></li>
                                    <li><a href="#">Plus Size Jeans</a></li>
                                    <li><a href="#">Plus Size Occasionwear</a></li>
                                    <li><a href="#">Plus Size Sweatpants</a></li>
                                    <li><a href="#">Plus Size Tracksuits</a></li>
                                    <li><a href="#">Plus Size Loungewear</a></li>


                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> PLUS SIZE BY OCCASION</p>
                                <ul>
                                    <li><a href="#">Plus Size Resort Wear</a></li>
                                    <li><a href="#">Plus Size Spring Break Outfits</a></li>
                                    <li><a href="#">Plus Size Matching Sets</a></li>
                                    <li><a href="#">Plus Size Office Clothes</a></li>
                                    <li><a href="#">Plus Size Cargo Pants</a></li>
                                    <li><a href="#">Plus Size Wide Leg Jeans</a></li>
                                    <li><a href="#">Plus Size Cargos and a Corset</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> PLUS SIZE BY OCCASION</p>
                                <ul>
                                    <li><a href="#">Plus Size Date Outfits</a></li>
                                    <li><a href="#">Plus Size Going Out Outfits</a></li>
                                    <li><a href="#">All Plus Size Occasion Wear</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p>OFFERS</p>
                                <ul>
                                    <li><a href="#">
                                            <p> Refer A Friend For Exclusives Deals!</p>
                                        </a></li>
                                    <li><a href="#">
                                            <p>App Exclusive - Free Shipping Over $50!* </p>
                                        </a></li>
                                    <li><a href="#">
                                            <p>Get Exclusive Student Discount </p>
                                        </a></li>
                                    <li><a href="#">
                                            <p>App Exclusive - Free Shipping Over $50!* </p>
                                        </a></li>
                                </ul>
                            </li>

                        </ul>
                    </li>

                    <li class="menu-bar1"><a href="#">TOPS</a>
                        <ul class="menu1">
                            <li class="sub-menu">
                                <p> TOPS</p>
                                <ul>
                                    <li><a href="#">New In</a></li>
                                    <li><a href="#"> Two Piece Sets</a></li>
                                    <li><a href="#">Tops</a></li>
                                    <li><a href="#">Dresses</a></li>
                                    <li><a href="#">Knitwear</a></li>
                                    <li><a href="#">Hoodies & Sweatshirts</a></li>
                                    <li><a href="#">Athleisure</a></li>
                                    <li><a href="#">Sweatpants</a></li>
                                    <li><a href="#">Tracksuits</a></li>
                                    <li><a href="#">Loungewear</a></li>
                                    <li><a href="#">Sweaters & Cardigans</a></li>


                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> TOPS BY FIGURE</p>
                                <ul>
                                    <li><a href="#">Resort Wear</a></li>
                                    <li><a href="#">Spring Break Outfits</a></li>
                                    <li><a href="#">Matching Sets</a></li>
                                    <li><a href="#">Office Clothes</a></li>
                                    <li><a href="#">Cargo Pants</a></li>
                                    <li><a href="#">Wide Leg Jeans</a></li>
                                    <li><a href="#">Cargos and a Corset</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> TOPS BY TREND</p>
                                <ul>
                                    <li><a href="#">Date Outfits</a></li>
                                    <li><a href="#">Wedding Guest Dresses</a></li>

                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p>OFFERS</p>
                                <ul>
                                    <li><a href="#">
                                            <p> App Exclusive - Free Shipping Over $50!*</p>
                                        </a></li>
                                    <li><a href="#">
                                            <p>App Exclusive - Free Shipping Over $50!* </p>
                                        </a></li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li class="menu-bar1"><a href="#">SPRING</a>
                        <ul class="menu1">
                            <li class="sub-menu">
                                <p> ALL CLOTHING</p>
                                <ul>
                                    <li><a href="#">New In</a></li>
                                    <li><a href="#"> Two Piece Sets</a></li>
                                    <li><a href="#">Tops</a></li>
                                    <li><a href="#">Dresses</a></li>
                                    <li><a href="#">Knitwear</a></li>
                                    <li><a href="#">Hoodies & Sweatshirts</a></li>
                                    <li><a href="#">Athleisure</a></li>
                                    <li><a href="#">Sweatpants</a></li>
                                    <li><a href="#">Tracksuits</a></li>
                                    <li><a href="#">Loungewear</a></li>
                                    <li><a href="#">Sweaters & Cardigans</a></li>
                                    <li><a href="#">Sweatpants</a></li>
                                    <li><a href="#">Tracksuits</a></li>
                                    <li><a href="#">Loungewear</a></li>
                                    <li><a href="#">Sweaters & Cardigans</a></li>

                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> SHOP BY TREND</p>
                                <ul>
                                    <li><a href="#">Resort Wear</a></li>
                                    <li><a href="#">Spring Break Outfits</a></li>
                                    <li><a href="#">Matching Sets</a></li>
                                    <li><a href="#">Office Clothes</a></li>
                                    <li><a href="#">Cargo Pants</a></li>
                                    <li><a href="#">Wide Leg Jeans</a></li>
                                    <li><a href="#">Cargos and a Corset</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> SHOP BY OCCASION</p>
                                <ul>
                                    <li><a href="#">Date Outfits</a></li>
                                    <li><a href="#">Wedding Guest Dresses</a></li>

                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p>OFFERS</p>
                                <ul>
                                    <li><a href="#">
                                            <p> App Exclusive - Free Shipping Over $50!*</p>
                                        </a></li>
                                    <li><a href="#">
                                            <p>App Exclusive - Free Shipping Over $50!* </p>
                                        </a></li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li class="menu-bar1"><a href="#">OCCASION WEAR</a>
                        <ul class="menu1">
                            <li class="sub-menu">
                                <p> ALL CLOTHING</p>
                                <ul>
                                    <li><a href="#">New In</a></li>
                                    <li><a href="#"> Two Piece Sets</a></li>
                                    <li><a href="#">Tops</a></li>
                                    <li><a href="#">Dresses</a></li>
                                    <li><a href="#">Knitwear</a></li>
                                    <li><a href="#">Hoodies & Sweatshirts</a></li>
                                    <li><a href="#">Athleisure</a></li>
                                    <li><a href="#">Sweatpants</a></li>
                                    <li><a href="#">Tracksuits</a></li>
                                    <li><a href="#">Loungewear</a></li>
                                    <li><a href="#">Sweaters & Cardigans</a></li>
                                    <li><a href="#">Sweatpants</a></li>
                                    <li><a href="#">Tracksuits</a></li>
                                    <li><a href="#">Loungewear</a></li>
                                    <li><a href="#">Sweaters & Cardigans</a></li>

                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> SHOP BY TREND</p>
                                <ul>
                                    <li><a href="#">Resort Wear</a></li>
                                    <li><a href="#">Spring Break Outfits</a></li>
                                    <li><a href="#">Matching Sets</a></li>
                                    <li><a href="#">Office Clothes</a></li>
                                    <li><a href="#">Cargo Pants</a></li>
                                    <li><a href="#">Wide Leg Jeans</a></li>
                                    <li><a href="#">Cargos and a Corset</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> SHOP BY OCCASION</p>
                                <ul>
                                    <li><a href="#">Date Outfits</a></li>
                                    <li><a href="#">Wedding Guest Dresses</a></li>

                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p>OFFERS</p>
                                <ul>
                                    <li><a href="#">
                                            <p> App Exclusive - Free Shipping Over $50!*</p>
                                        </a></li>
                                    <li><a href="#">
                                            <p>App Exclusive - Free Shipping Over $50!* </p>
                                        </a></li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li class="menu-bar1"><a href="#">FESTIVAL OUTFITS</a>
                        <ul class="menu1">
                            <li class="sub-menu">
                                <p> ALL CLOTHING</p>
                                <ul>
                                    <li><a href="#">New In</a></li>
                                    <li><a href="#"> Two Piece Sets</a></li>
                                    <li><a href="#">Tops</a></li>
                                    <li><a href="#">Dresses</a></li>
                                    <li><a href="#">Knitwear</a></li>
                                    <li><a href="#">Hoodies & Sweatshirts</a></li>
                                    <li><a href="#">Athleisure</a></li>
                                    <li><a href="#">Sweatpants</a></li>
                                    <li><a href="#">Tracksuits</a></li>
                                    <li><a href="#">Loungewear</a></li>
                                    <li><a href="#">Sweaters & Cardigans</a></li>
                                    <li><a href="#">Sweatpants</a></li>
                                    <li><a href="#">Tracksuits</a></li>
                                    <li><a href="#">Loungewear</a></li>
                                    <li><a href="#">Sweaters & Cardigans</a></li>

                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> SHOP BY TREND</p>
                                <ul>
                                    <li><a href="#">Resort Wear</a></li>
                                    <li><a href="#">Spring Break Outfits</a></li>
                                    <li><a href="#">Matching Sets</a></li>
                                    <li><a href="#">Office Clothes</a></li>
                                    <li><a href="#">Cargo Pants</a></li>
                                    <li><a href="#">Wide Leg Jeans</a></li>
                                    <li><a href="#">Cargos and a Corset</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> SHOP BY OCCASION</p>
                                <ul>
                                    <li><a href="#">Date Outfits</a></li>
                                    <li><a href="#">Wedding Guest Dresses</a></li>

                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p>OFFERS</p>
                                <ul>
                                    <li><a href="#">
                                            <p> App Exclusive - Free Shipping Over $50!*</p>
                                        </a></li>
                                    <li><a href="#">
                                            <p>App Exclusive - Free Shipping Over $50!* </p>
                                        </a></li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li class="menu-bar1"><a href="#">SHOP BY FIT</a>
                        <ul class="menu1">
                            <li class="sub-menu">
                                <p> ALL CLOTHING</p>
                                <ul>
                                    <li><a href="#">New In</a></li>
                                    <li><a href="#"> Two Piece Sets</a></li>
                                    <li><a href="#">Tops</a></li>
                                    <li><a href="#">Dresses</a></li>
                                    <li><a href="#">Knitwear</a></li>
                                    <li><a href="#">Hoodies & Sweatshirts</a></li>
                                    <li><a href="#">Athleisure</a></li>
                                    <li><a href="#">Sweatpants</a></li>
                                    <li><a href="#">Tracksuits</a></li>
                                    <li><a href="#">Loungewear</a></li>
                                    <li><a href="#">Sweaters & Cardigans</a></li>
                                    <li><a href="#">Sweatpants</a></li>
                                    <li><a href="#">Tracksuits</a></li>
                                    <li><a href="#">Loungewear</a></li>
                                    <li><a href="#">Sweaters & Cardigans</a></li>

                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> SHOP BY TREND</p>
                                <ul>
                                    <li><a href="#">Resort Wear</a></li>
                                    <li><a href="#">Spring Break Outfits</a></li>
                                    <li><a href="#">Matching Sets</a></li>
                                    <li><a href="#">Office Clothes</a></li>
                                    <li><a href="#">Cargo Pants</a></li>
                                    <li><a href="#">Wide Leg Jeans</a></li>
                                    <li><a href="#">Cargos and a Corset</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> SHOP BY OCCASION</p>
                                <ul>
                                    <li><a href="#">Date Outfits</a></li>
                                    <li><a href="#">Wedding Guest Dresses</a></li>

                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p>OFFERS</p>
                                <ul>
                                    <li><a href="#">
                                            <p> App Exclusive - Free Shipping Over $50!*</p>
                                        </a></li>
                                    <li><a href="#">
                                            <p>App Exclusive - Free Shipping Over $50!* </p>
                                        </a></li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                    <li class="menu-bar1"><a href="#">SALE</a>
                        <ul class="menu1">
                            <li class="sub-menu">
                                <p> SALE</p>
                                <ul>

                                    <li><a href="#">Tops</a></li>
                                    <li><a href="#">Dresses</a></li>
                                    <li><a href="#">Knitwear</a></li>
                                    <li><a href="#">Hoodies & Sweatshirts</a></li>
                                    <li><a href="#">Athleisure</a></li>
                                    <li><a href="#">Sweatpants</a></li>
                                    <li><a href="#">Tracksuits</a></li>
                                    <li><a href="#">Loungewear</a></li>
                                    <li><a href="#">Sweaters & Cardigans</a></li>
                                    <li><a href="#">Sweatpants</a></li>

                                    <li><a href="#">Sweaters & Cardigans</a></li>

                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p>SALE BY FIGURE</p>
                                <ul>
                                    <li><a href="#">Tracksuits</a></li>
                                    <li><a href="#">Loungewear</a></li>
                                    <li><a href="#">Matching Sets</a></li>
                                    <li><a href="#">Office Clothes</a></li>
                                    <li><a href="#">Cargo Pants</a></li>
                                    <li><a href="#">Wide Leg Jeans</a></li>
                                    <li><a href="#">Cargos and a Corset</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p> SUPER SALE</p>
                                <ul>
                                    <li><a href="#">Date Outfits</a></li>
                                    <li><a href="#">Wedding Guest Dresses</a></li>
                                    <li><a href="#">Sweatpants</a></li>
                                    <li><a href="#">Tracksuits</a></li>
                                    <li><a href="#">Loungewear</a></li>
                                    <li><a href="#">Sweaters & Cardigans</a></li>
                                </ul>
                            </li>
                            <li class="sub-menu">
                                <p>OFFERS</p>
                                <ul>
                                    <li><a href="#">
                                            <p> App Exclusive - Free Shipping Over $50!*</p>
                                        </a></li>
                                    <li><a href="#">
                                            <p>App Exclusive - Free Shipping Over $50!* </p>
                                        </a></li>
                                </ul>
                            </li>

                        </ul>
                    </li>
                </div>
            </div>


        </header>
        <hr style="border: 1px solid #ddd;">
        <c:set var="p" value="${requestScope.product}"/>
        <div class="product">
            <div class="container">
                <div class="row">
                    <div class="product-content-left row">
                        <div id="img-container" class=" product-content-left-pic1 ">
                            
                            <img class=" img-content " src="${p.image}" width="360px" height="560px">

                        </div>

                        <div class="product-content-left-pic2 img-container">
                            <img class="img-content" src="${p.image2}" width="360px" height="560px">

                        </div>

                    </div>


                    <div class="product-content-right">

                        <div class="product-content-right-home">
                            <ul>
                                <li>HOME</li>
                                <li>/</li>
                                <li>MENS</li>
                                <li>/</li>
                                <li>MEN'S TOPS</li>
                                <li>/</li>
                                <li>MEN'S T-SHIRTS</li>
                                <li>/</li>
                                <li>MEN'S OVERSIZED T-SHIRTS</li>

                            </ul>
                        </div>
                        <div class=" product-content-right-img" style="display: none;">
                            
                            <img src="${p.image}" width="50px" height="50px">

                        </div>
                        <div class="product-content-right-name">
                            <h3>${p.name}</h3>
                        </div>
                        <div class="product-content-right-price row">
                            <p style="color: red;"> <strong>$${p.price}</strong> </p>
                 

                        </div>
                        <div class="product-content-right-color">
                            <p><span>Color</span>: ${p.color}</p>
                        </div>
                        <div class="product-content-right-size">
                            <span>${p.size}</span>
<!--                            <span>${p.size2}</span>
                            <span>${p.size3}</span>
                            <span>${p.size4}</span>-->

                        </div>
                        <div class="product-content-right-quantity">
                            <input type="number" min="1" value="1" id="product-quantity">
                        </div>
                        <div class="product-content-right-button row">
                            <button class="product-content-right-button-first">
                                <i class="fa-solid fa-cart-plus"></i>
                                <p>ADD TO CARD</p>
                            </button>
                            <button class="product-content-right-button-second">
                                <i class="fa-solid fa-heart"></i>

                                <p>SAVE FOR LATER</p>
                            </button>
                        </div>
                        <div class="product-content-right-detail">
                            <p class="text-detail">
                                ${p.describe}
                            </p>
                            <ul>
                                <li> Style: Printed T-Shirt</li>
                                <li> Design: Graphic</li>
                                <li> Fabric: Jersey</li>
                                <li> Length: Regular</li>
                                <li> Neckline: Crew</li>
                                <li> Sleeve Length: Short Sleeve</li>
                                <li> 100% Cotton, Model Is 6'1 And Wears Size M</li>
                            </ul>
                        </div>



                    </div>
                    <div class="product-related">
                        <div class="product-related-title">
                            <p>WE THINK YOU'LL LOVE</p>
                        </div>
                        <div class="slider-product-container">
                            <div class="product-related-slider">
                                <div class="product-related-slider-container row">
                                    <div class="product-related-item">
                                        <img src="anh suggest/pr1.webp">
                                        <p>OVERSIZED COLORADO VARSITY T-SHIRT</p>
                                        <div class="product-related-item-price row">
                                            <p style="color: red;"> <strong>$14.60</strong> </p>
                                            <p><del>$20.00</del></p>
                                        </div>

                                    </div>
                                    <div class="product-related-item">
                                        <img src="anh suggest/pr2.webp">
                                        <p>OVERSIZED CHICAGO PRINT T-SHIRT</p>
                                        <div class="product-related-item-price row">
                                            <p style="color: red;"> <strong>$17.60</strong> </p>
                                            <p><del>$22.00</del></p>
                                        </div>

                                    </div>
                                    <div class="product-related-item">
                                        <img src="anh suggest/pr3.webp">
                                        <p>OVERSIZED PHOENIX PRINT T-SHIRT</p>
                                        <div class="product-related-item-price row">
                                            <p style="color: red;"> <strong>$12.60</strong> </p>
                                            <p><del>$18.00</del></p>
                                        </div>
                                    </div>
                                    <div class="product-related-item">
                                        <img src="anh suggest/pr4.webp">
                                        <p>OVERSIZED OVERDYE WORLDWIDE FLORAL GRAPHIC T-SHIRT</p>
                                        <div class="product-related-item-price row">
                                            <p style="color: red;"> <strong>$10.60</strong> </p>
                                            <p><del>$16.00</del></p>
                                        </div>

                                    </div>
                                    <div class="product-related-item">
                                        <img src="anh suggest/pr5.webp">
                                        <p>MAN OVERSIZED EXTENDED NECK T-SHIRT</p>
                                        <div class="product-related-item-price row">
                                            <p style="color: red;"> <strong>$12.60</strong> </p>
                                            <p><del>$18.00</del></p>
                                        </div>

                                    </div>

                                </div>

                            </div>


                        </div>

                    </div>




                </div>
                <script src="./product_js.js"></script>
                <footer>

                    <div class="footerset">
                        <strong>CLASS ACTION SETTLEMENT; CHECK YOUR EMAIL FOR $10 GIFT CARDS PLUS COMPLIMENTARY SHIPPING ON
                            ANY
                            PURCHASE. CLICK HERE FOR ADDITIONAL INFORMATION:</strong><br>
                        <a href="https://www.boohoocapricingsettlement.com/" target="_blank">
                            <p>WWW.BOOHOOCAPRICINGSETTLEMENT.COM</p>
                        </a>
                    </div>
                    <div class="b-footer_top">
                        <img src="img/usa_payment_fooer_strip_mob_nozip-2111.svg" alt="">
                    </div>
                    <div class="footercontent">
                        <div class="linkk">
                            <strong>QUICK LINKS</strong>
                            <ul>
                                <li>
                                    <a href="#">Track My Order</a>
                                    <a href="#" class="fa-solid fa-chevron-up fa-rotate-90"></a>
                                </li>
                                <li>
                                    <a href="#">Help</a>
                                    <a href="#" class="fa-solid fa-chevron-up fa-rotate-90"></a>
                                </li>
                                <li>
                                    <a href="#">Returns</a>
                                    <a href="#" class="fa-solid fa-chevron-up fa-rotate-90"></a>
                                </li>
                                <li>
                                    <a href="#">Shipping Infor</a>
                                    <a href="#" class="fa-solid fa-chevron-up fa-rotate-90"></a>
                                </li>
                            </ul>
                        </div>


                        <div class="sub">
                            <div class="sub1">
                                <strong>ABOUT US & MORE</strong>
                                <a href="#">About boohoo</a>
                                <a href="#">Size Guide</a>
                                <a href="#">Get Exclusive Offers & Updates</a>
                                <a href="#">Student Discount</a>
                                <a href="#">Become an Affiliate</a>
                            </div>
                            <div class="sub1">
                                <strong>INFORMATION</strong>
                                <a href="#">Sustainability</a>
                                <a href="#">Investor Relations</a>
                                <a href="#">Boohoo Social Responsibility</a>
                                <a href="#">Klarna</a>
                                <a href="#">Careers</a>
                                <a href="#">T&Cs</a>
                                <a href="#">PayPal</a>
                                <a href="#">Afterpay</a>
                                <a href="#">Privacy Notice - Updated January 2023</a>
                                <a href="#">About Cookies</a>

                                <a href="#">Sitemap</a>

                            </div>

                        </div>
                        <div class="infor">
                            <div class="subscribe">
                                <p>SUBSCRIBE! GET AN EXTRA 10% OFF & INSIDE INFO!*</p>
                                <form onsubmit="return checkEmail()">
                                    <input type="email" id="email" name="email" placeholder="Enter your email">
                                    <div id="emailError" class="error"></div>
                                    <button type="submit">SUBSCRIBE</button>
                                </form>
                                <p>*Extra 10% discount sent via email to new subscribers only. By subscribing, you agree to
                                    receive
                                    marketing communications from boohoo by email. You can unsubscribe at any point.</p>
                            </div>
                            <div class="footer-app">
                                <h1>Download The Boohoo App</h1>
                                <p>Hear about exclusive offers, get early access to collabs & quicker checkout</p>
                                <div class="get-app">
                                    <div class="scan">
                                        <p>SCAN TO DOWNLOAD</p>
                                        <div class="qr">
                                            <img src="img/BH_app_QR.jpg" alt="">
                                        </div>
                                    </div>
                                    <div class="icon-app">
                                        <div class="chplay"><img src="img/GOOGLE_ENG.png" alt=""></div>
                                        <div class="appstore"><img src="img/APPLE_ENG.png" alt=""></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="country">
                            <strong>COUNTRY</strong>
                            <select name="country" id="countr">
                                <option value="USA"> USA $</option>
                                <option value="Canada">CAN $</option>
                                <option value="Vietnam">VIE đ</option>

                            </select>
                        </div>
                    </div>
                    <div class="footer-bottom">
                        <div class="footer-copy">
                            <div class="copy">
                                <p>COPYRIGHT © 2023 BOOHOO</p>
                            </div>
                            <ul class="nav-policy">
                                <li class="access"><a href="#">Accessibility</a></li>
                                <li class="terms"><a href="#">Terms & Conditions</a></li>
                                <li class="privacy-policy"><a href="#">Privacy Policy</a></li>
                            </ul>
                        </div>
                    </div>
                </footer>
                <script src="main.js"></script>
                <script src="cart.js"></script>
                </body>


                </html>
