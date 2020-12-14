<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Users</h1>
    <c:if test="${pageContext.request.isUserInRole('AdminRole')}">
         <a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/Users/Create" role="button">Add User</a>
    </c:if>
         <form method="POST" action="${pageContext.request.contextPath}/Users">
    <c:forEach var="user" items="${users}" varStatus="status">
        <div class="row">
            <div class="col-md">
                    <input type="checkbox" name="user_ids" value="${user.id}"/>
            </div>
            <div class="col-md-4">
                ${user.username}
            </div>
 
            <div class="col-md-4">
                ${user.email}
            </div>

            <div class="col-md-4">
                ${user.position}
            </div>
        </div>
    </c:forEach>
    </form>
         <c:forEach var="username" items="${invoices}" varStatus="status">
        ${username}
    </c:forEach>
</t:pageTemplate>
