<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link href="css/bootstrap.min.css" rel="stylesheet">
   <script src="js/jquery-2.2.3.js"></script>
    <script src="js/bootstrap.min.js"></script>
 
    

</head>
<body>
<div>
<form action="index.jsp"> 

<div class="form-group">
<label for="username">Enter your name here:</label>
<input type="text" class="form-group" id="name"/>
</div>

<div class="form-group">
<label for="dob">Enter your DOB here:</label>
<input type="date" class="form-group" id="sdate"/>
</div>
<div class="form-group">
<label for="email">Enter your EMAIL ID here:</label>
<input type="email" class="form-group" id="email"/>
</div>
<div class="form-group">
<label for="address">Enter your Address here:</label>
<input type="text" class="form-group" id="address"/>
</div>
<div class="form-group">
<label for="pass">Enter your Password here:</label>
<input type="password" class="form-group" id="pass"/>
</div>
<div class="form-group">
<label for="pass">Confirm Password:</label>
<input type="password" class="form-group" id="cpass"/>
</div>
<div class="form-group">
<label for="butt">Go Back</label>
<input type="submit" class="form-group" id="cpass"/>
</div>
</form>
</body>
</html>