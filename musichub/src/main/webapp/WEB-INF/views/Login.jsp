<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<c:url var="img" value="/resources/images"/>
<title>Insert title here</title>
</head>
<body>
<form action=""> 

<div class="form-group">
<label for="username">Enter your name here:</label>
<input type="text" class="form-group" id="name"/>
</div>




<div class="form-group">
<label for="pass">Password:</label>
<input type="password" class="form-group" id="pass"/>
</div>
<div class="form-group">
<label for="butt">Go Back</label>
<input type="submit" class="form-group" id="but"/>
</div>




</form>
</body>
</html>
