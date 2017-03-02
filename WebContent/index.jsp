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
	<form method="post" action="index.jsp">
	<label>Altura</label>
	<input name="person_height" type="text"/><br/>
	<label>Peso</label>
	<input name="person_weight" type="text"/><br/>
	<input name="calculate_ideal_weight" type="submit" value="Enviar"/>
	</form>
	<br/>
	<% 
		String personHeightHTML = request.getParameter("person_height");
		String personWeightHTML = request.getParameter("person_weight");
		
		try{
			float personHeight = Float.parseFloat(personHeightHTML);
			float personWeight = Float.parseFloat(personWeightHTML);
			double idealWeight = ((personHeight-1.1)*(100));
			out.println("Peso ideal: " + idealWeight + "<br/>" );
			
			if(personWeight == idealWeight){
				out.println("Voce esta no peso ideal");
			} else {
				if(personWeight < idealWeight){
					out.println("Voce esta magro");
				} else {
					if(personWeight > idealWeight){
						out.println("Voce esta gordo");
					}
				}
			}
		} catch(NumberFormatException nfe){
			out.println("Um dos valores informados não correspondem ao esperado.");
		}
		
	%>
</body>
</body>
</html>