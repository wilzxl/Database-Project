<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.css" rel="stylesheet"/>
</head>
  <body>
        <div align="center"> <font size=" 2" color="#FF6633">Login</font>
    </div>
    <form id="form1" name="form1" method="post" action="loginServlet">
    <table width="357" border="0" align="center">
        <tr>
          <td width="128">username:</td>
          <td width="219"><label>
            <input name="user" type="text" id="user" />
          </label></td>
        </tr>
        <tr>
          <td>password:</td>
          <td><label>
            <input name="pwd" type="password" id="pwd" />
          </label></td>
        </tr>
        <tr>
          <td><label>
            <input type="submit" name="Submit" value="login" />
          </label></td>
          
        </tr>
    </table>
    <p>&nbsp;</p>
    </form>
</body>
</html>