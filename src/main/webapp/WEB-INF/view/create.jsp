<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<head>
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

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assests/css/style.css" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assests/js/utils.js" type="text/javascript">
        <jsp:text/>
    </script>

</head>
<body>
<div class="container-fluid">
    <fmt:setLocale value="EN"/>
    <fmt:setBundle basename="messages" var="i18n"/>
    <form:form modelAttribute="org" action="save">
        <div class="row">
            <table width="100%" cellspacing="10" cellpadding="5">
                <tr>
            <td width="300" valign="top">
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.id"/></label>
                    <form:input path="id" cssClass="form-control"/>
                </div>
            </div>
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
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.fullNameOfTheHead"/></label>
                    <form:input path="fullNameOfTheHead" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.address"/></label>
                    <form:input path="address" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.region"/></label>
                    <form:input path="region" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.fax"/></label>
                    <form:input path="fax" cssClass="form-control"/>
                </div>
            </div>
            </td>
                    <td width="20"></td>
            <td width="300" valign="top">
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.email"/></label>
                    <form:input path="email" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.UNP"/></label>
                    <form:input path="UNP" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.status"/></label>
                    <form:input path="status" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.UNPF"/></label>
                    <form:input path="UNPF" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.OKOGU"/></label>
                    <form:input path="OKOGU" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.subordination"/></label>
                    <form:input path="subordination" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.codeOKFS"/></label>
                    <form:input path="codeOKFS" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.typeOfOwnership"/></label>
                    <form:input path="typeOfOwnership" cssClass="form-control"/>
                </div>
            </div>
            </td>
                    <td width="20"></td>
            <td width="300" valign="top">
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.legalForm"/></label>
                    <form:input path="legalForm" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.codeOKAD"/></label>
                    <form:input path="codeOKAD" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.mainEconomicActivity"/></label>
                    <form:input path="mainEconomicActivity" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.dateOfRegistration"/></label>
                    <form:input path="dateOfRegistration" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.nameOfTheRegisteringAuthority"/></label>
                    <form:input path="nameOfTheRegisteringAuthority" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.liquidationDate"/></label>
                    <form:input path="liquidationDate" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.codeCOATO"/></label>
                    <form:input path="codeCOATO" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.idHeadOrganization"/></label>
                    <form:input path="idHeadOrganization" cssClass="form-control"/>
                </div>
            </div>
            </td>
                </tr>
            </table>
        </div>

        <button type="submit" class="btn btn-primary"><fmt:message bundle="${i18n}" key="org.add"/></button>
    </form:form>
</div>
</body>