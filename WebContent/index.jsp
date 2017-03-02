<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Peso Ideal</title>
</head>
<body>
<body>
	<h1>Qual o seu peso ideal?</h1>
	<form method="post" action="calculate.jsp">
	<label>Altura</label>
	<input name="person_height" type="text"/><br/>
	<label>Peso</label>
	<input name="person_weight" type="text"/><br/>
	<input name="calculate_ideal_weight" type="submit" value="Enviar"/>
	</form>
	<br/>
</body>
</body>
</html>