<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Calculadora de Peso Ideal</title>
</head>
<body>
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
</html>