<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="auth" uri="http://yunshan.com/authority"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>欢迎你！！！</h1>  
<auth:permission requestPath="/test"><h2>删除</h2>  </auth:permission>
 <table>
    <tr>
        <td>id</td><td>name</td>
    </tr>
     <c:forEach items="${page.result}" var="item">
    <tr>
        <td>${item.id}</td><td>${item.name}</td>
    </tr>
   
    </c:forEach>
     <tr>页码：${page.pageNum}每页：${page.pageSize}条 ，总页数${page.pages}</tr>
</table> 
测试枚举常量便利
<table>
    <tr>
        <td>code</td><td>name</td>
    </tr>
     <c:forEach items="${carConstant}" var="item">
    <tr>
        <td>${item.code}</td><td>${item.name}</td>
    </tr>
   
    </c:forEach>
     <tr>页码：${page.pageNum}每页：${page.pageSize}条 ，总页数${page.pages}</tr>
</table> 
</body>
</html>