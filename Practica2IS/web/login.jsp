<%-- 
    Document   : login
    Created on : Mar 22, 2016, 9:26:49 PM
    Author     : yoshua alfaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
    </head>
    <link rel="stylesheet" type="text/css" href="CSS/style.css">
    <body>
 
        <f:view>
            <h:form id="login_frm">
                <h2>Login Please:</h2>
                <table width="250" border="0" cellspacing="0" cellpadding="2">
                  <tr>
                      <td colspan="2">
                            <h:message for="username" styleClass="errorMsg"/><br>
                            <h:message for="password" styleClass="errorMsg"/>
                        </td>
                  </tr>
                  <tr>
                    <td><h:outputText value="Username : "/></td>
                    <td><h:inputText id="username" value="#{login_bean.username}" required="true" styleClass="input_text"/></td>
                  </tr>
                  <tr>
                    <td><h:outputText value="Password : "/></td>
                    <td><h:inputSecret id="password" value="#{login_bean.password}" required="true" styleClass="input_text"/></td>
                  </tr>
                  <tr>
                      <td colspan="2" align="center">
                          <h:commandButton action="#{login_bean.checkValidUser}" value="Login" type="submit"/></td>
                  </tr>
                </table>
            </h:form>
        </f:view>
    </body>
</html>