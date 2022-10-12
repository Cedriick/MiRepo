<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sx" uri="/struts-dojo-tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUD</title>
</head>


<body>
<sx:tabbedpanel id="formRegister">
	<sx:div label="FORMULARIO CRUD - REGISTER">
		<s:form action="alta.action" method="post">
			<s:push value="register">
				<s:hidden key="id" />
				<s:textfield key="nombre" label="NOMBRE"/>
				<s:radio key="genero" label="GENERO" list="#{'M':'MASCULINO','F':'FEMENINO'}"/>
				<s:select key="ciudad" label="CIUDAD" list="#{'PUE':'PUEBLA','VER':'VERACRUZ','OAX':'OAXACA',
				 'TLAX':'TLAXCALA'}" headerKey="1" headerValue="Selecciona Ciudad"/>
				 <s:textarea key="descripcion" label="DESCRIPCION"/>
				 <s:checkbox name="desarrollador" label="¿HA MANEJADO SIABEL?" />
				 <s:submit value="Aceptar"/>
				 <s:reset value="Limpiar Datos"/>
			</s:push>
		</s:form>
	</sx:div>

</sx:tabbedpanel>

<h1>LISTADO DE REGISTER</h1>
<br>
<table>
	<tr>
		<th> ID </th>
		<th> NOMBRE </th>
		<th> GENERO </th>
		<th> CIUDAD </th>
		<th> DESCRIPCION </th>
		<th> DESARROLLADOR </th>
		<th> EDITAR </th>
		<th> ELIMINAR </th>
	</tr>
<s:iterator value="listRegister">
	<tr>
		<td><s:property value="id"/></td>
		<td><s:property value="nombre"/></td>
		<td><s:property value="genero"/></td>
		<td><s:property value="ciudad"/></td>
		<td><s:property value="descripcion"/></td>
		<td><s:property value="desarrollador"/></td>
		<td>
		<s:url id="modificaURL" action="modifica">
			<s:param name="id" value="%{id}"/>
		</s:url>
		<s:a href="%{modificaURL}">Modifica</s:a>
	</td>
	<td>
	<s:url id="bajaURL" action="baja">
		<s:param name="id" value="%{id}"/>
	</s:url>
	<s:a href="%{bajaURL}">Elimina</s:a>
	</td>
	
</tr>	
</s:iterator>
</table>


</body>
</html>