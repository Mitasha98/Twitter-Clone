<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V17</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<script>
    function avc(){
        window.location.href='signup.jsp';    }
    function abc(){
        window.location.href='login.jsp';    }
</script>
</head>
<body>
	
		<div class="container-login100">
			<div class="wrap-login100"> 
				<form class="login100-form validate-form">
                                    <img src="logo.jpeg">
                                 
					
                                    
                                    <span class="login100-form-title p-b-34">
                                         <b><br> See what's happening in the world right now<br><br></b>
					</span>
					
                                    <b>Join Twitter today.</b><br><br>
					
					<div class="container-login100-form-btn">
                                            <input type="button" class="login100-form-btn" onclick="avc()" value=" Sign Up">
                                                  
						
					</div>
                                    &nbsp;
                                        <div class="container-login100-form-btn1">
						
                                                    <input type="button" class="login100-form-btn1" onclick="abc()" value="Log in">
							
						
					</div>

				
					
				</form>

				<div class="login100-more" style="background-image: url(bgblur2.png); backgroung-size:cover; ">&nbsp;
                                   
                                <div align="center" style="vertical-align:middle" >
                                   <br><br><br><br><br><br><br><br>
                                        
                                        <img src="search1.jpg" style=" align:'absmiddle '">
                                        <font size="+1" font color="white"  face="Poppins-Regular" >Follow your interests.</font><br><br>
                                        
                                        <p> &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp; <img src="friends.png" width="50" height="50" style=" align:'absmiddle '">
            <font size="+1" font color="white"  face="Poppins-Regular" >Here what people are talking about.</font></p><br>
                                      
                                        <p>  <img src="comment1.jpg" style=" align:'absmiddle '">
                                        <font size="+1" font color="white"  face="Poppins-Regular" >Join the conversation.</font></p><br>
                                </div>
                            
				</div>
			</div>
                    &nbsp;<BR><BR></div>
	
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>