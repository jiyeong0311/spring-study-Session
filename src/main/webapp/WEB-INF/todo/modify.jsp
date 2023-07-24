<%--
  Created by IntelliJ IDEA.
  User: jamie
  Date: 2023-07-24
  Time: 오후 7:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modify/Remove</title>
</head>
<body>

<form id="form1" action="/todo/modify" method="post">
  <div>
    <input type="text" name="tno" value="${dto.tno}" readonly>
  </div>
  <div>
    <input type="text" name="title" value="${dto.title}">
  </div>
  <div>
    <input type="date" name="dueDate" value="${dto.dueDate}">
  </div>
  <div>
    <input type="checkbox" name="finished" value="${dto.finished ? "checked" : ""}">
  </div>

  <div>
    <button type="submit">Modify/Remove</button>
  </div>
</form>

<form id="from2" action="/todo/remove" method="post">
  <input type="hidden" name="tno" value="${dto.tno}" readonly>
  <div>
    <button type="submit">Remove</button>
  </div>
</form>
</body>
</html>
