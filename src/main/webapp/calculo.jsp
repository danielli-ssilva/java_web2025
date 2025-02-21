<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%
    int[] resultado = new int[10];
    for(int i = 1; i<=10; i++){
        resultado[i-1] = i*5;
    }
    request.setAttribute("resultado", resultado);
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Calculo</h1>
    <c:forEach var="valor" items="${resultado}">
        ${valor} <br />
    </c:forEach>
    <hr />
    <c:forEach var="num" begin="1" end="10">
        ${num * 5} <br />
    </c:forEach>
</body>
</html>