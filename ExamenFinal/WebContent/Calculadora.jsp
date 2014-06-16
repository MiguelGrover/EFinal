<%@ page language="java" contentType="text/html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calculadora Web</title>
</head>
<body>

<%-- Script par validar si los numeros son reales --%>
<script type="text/javascript">
function validate(){
var Dato1 = document.forms["calc_form"]["Data1"].value;
var Dato2 = document.forms["calc_form"]["Data2"].value;
if(!Dato1){
	alert("Theres no number in space 1!!!");
	return false;
}
if(!Dato2){
	alert("Theres no number in space 2!!!");
	return false;
}
if (!/^([0-9])*[.]?[0-9]*$/.test(Dato1)){
	   alert("El valor " + Dato1 + " no es un número");
	   return false;
}
if (!/^([0-9])*[.]?[0-9]*$/.test(Dato2)){
	   alert("El valor " + Dato2 + " no es un número");
	   return false;
}
return true;
}


</script>

<%-- Metodo do post para la calculadora --%>
<Form name="calc_form" method="POST" action="ExaFinal" 
onsubmit="return validate()">
<table>
					<tr>
					<td>
					<img src="http://img2.wikia.nocookie.net/__cb20140201231432/sonic/es/images/4/45/PIKACHU-pikachu-29274386-861-927.jpg" width = 200>
					</td>
					</tr>
					
					<tr>
					<td>Primer numero:</td>
					<td>
					<input type="text" name="Data1">
					</td>
					</tr>
					
					<tr>
					<td>Segundo numero:</td>
					<td>
					<input type="text" name="Data2">
					</td>
					</tr>
					
					<tr>
					<td>Operacion:</td>
					<td>
					<select name="Operador">
					<option value="+">+</option>
					<option value="-">-</option>
					<option value="*">*</option>
					<option value="/">/</option>
					</select>
					</td>
					</tr>
					
					<tr>
					<td>	</td>
					<td>
					<input type="submit" value="Resultado!!!"/>
					</td>
					</tr>
</table>
</Form>
</body>
</html>