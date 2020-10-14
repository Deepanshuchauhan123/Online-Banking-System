<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<SCRIPT LANGUAGE="JavaScript">
		function dil(form)
		{
			for(var i=0;i<form.elements.length;i++)
			{
				if(form.elements[i].value =="")
				{
					alert("All Fields are Compulsory")
					document.F1.accountno.focus()
					return false
				}
			}
			
			
		}
	</SCRIPT>
	
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>

</body>
</html>