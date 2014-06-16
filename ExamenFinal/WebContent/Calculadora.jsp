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
var Dato2 = document.forms["calc_form"]["Data1"].value;
if(!Dato1){
	alert("Theres no number in space 1!!!");
	return false;
}
if(!Dato2){
	alert("Theres no number in space 2!!!");
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
					<input type="submit" value="Make the operation"/>
					</td>
					</tr>
</table>
</Form>
</body>
</html>