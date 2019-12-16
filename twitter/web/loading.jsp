<%-- 
    Document   : loading
    Created on : Sep 30, 2019, 1:49:08 PM
    Author     : Mitasha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color:#1DA1F2; }
            </style>
            <script>
                function avc(){
                    window.location.href="index.jsp";           }
                setTimeout("avc()",3000);
            </script>
        </head>
        <body>
            <div align="center">
                <p>&nbsp;</p>  
                <p><img src="loading.gif" style=" align:'absmiddle '"></p>
        </div>
    </body>
</html>
