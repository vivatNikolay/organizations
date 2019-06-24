<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<style>
    form {
        display: table
    }
    p {
        display: table-row;
    }
    label {
        display: table-cell;
    }
    input {
        display: table-cell;
    }
</style>
<body>
<div class="container-fluid">
    <fmt:setLocale value="EN"/>
    <fmt:setBundle basename="messages" var="i18n"/>
    <form:form modelAttribute="org" action="save">
        <div class="row">
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.type"/></label>
                    <form:input path="type" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.full"/></label>
                    <form:input path="fullName" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.short"/></label>
                    <form:input path="shortName" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.region"/></label>
                    <form:input path="region" cssClass="form-control"/>
                </div>
            </div>
        </div>

        <button type="submit" class="btn btn-primary"><fmt:message bundle="${i18n}" key="org.add"/></button>
    </form:form>
   <!-- <form action="/save" object="${org}" method="post" id="org">
        <table>
            <fmt:setLocale value="EN"/>
            <fmt:setBundle basename="messages" var="i18n"/>
            <%--<tr> <td><label><b><fmt:message bundle="${i18n}" key="org.id"/></b></label></td>
                <td> <input type="text" name="id" maxlength="20"/>
            </tr>--%>
            <tr>
                <td>  <label><b><fmt:message bundle="${i18n}" key="org.type"/></b></label></td>
                <td>  <input type="text" field="~{type}" maxlength="20"/></td>
            </tr>
            <tr>
                <td> <label><b><fmt:message bundle="${i18n}" key="org.full"/></b></label></td>
                <td>  <input type="text" field="~{fullName}" maxlength="20"/></td>
            </tr>
            <tr>
                <td> <label><b><fmt:message bundle="${i18n}" key="org.short"/></b></label></td>
                <td> <input type="text" field="~{shortName}" maxlength="20"/></td>
            </tr>
            <tr>
                <td> <label><b><fmt:message bundle="${i18n}" key="org.region"/></b></label></td>
                <td> <input type="text" field="~{region}" maxlength="20"/></td>
            </tr>
            <td> <input type="submit" class="btn btn-primary" <fmt:message bundle="${i18n}" key="org.add"/>></td>
        </table>
    </form>-->
</div>
</body>