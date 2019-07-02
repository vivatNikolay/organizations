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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker3.standalone.min.css" />

    <script src="//ajax.aspnetcdn.com/ajax/jquery.ui/1.10.3/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.10.3/themes/sunny/jquery-ui.css">
    <style type="text/css">
        input {width: 200px; text-align: left}
    </style>
    <script type="text/javascript">
        $(function() {

            $('#datep').datepicker();

        });
    </script>

<%--<script type="text/javascript">
        $(function(){
            $('#datetimepicer3').datetimepicker();
        });
    </script>--%>

</head>
<body>
<div class="container-fluid">
    <fmt:setLocale value="RU"/>
    <fmt:setBundle basename="messages" var="i18n"/>
    <%--@elvariable id="org" type="com.practice.organizations.entities.Organization"--%>
    <form:form modelAttribute="org" action="save" method="post">
        <div class="row">
            <table width="100%" cellspacing="10" cellpadding="5">
                <tr>
            <td width="300" valign="top">
            <div class="col-6">
                <form:input path="id" cssClass="form-control" type="hidden"/>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.type"/></label>
                    <form:select path="type" cssClass="form-control">
                        <option value="Юр лицо">Юр лицо</option>
                        <option value="Индивидуальный предприниматель">Индивидуальный предприниматель</option>
                    </form:select>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.full"/></label>
                    <form:input path="fullName" cssClass="form-control"/>
                    <form:errors path="fullName" cssStyle="color: red;"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.short"/></label>
                    <form:input path="shortName" cssClass="form-control"/>
                    <form:errors path="shortName" cssStyle="color: red;"/>
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
                    <form:select path="region" cssClass="form-control">
                        <option value="Брестская область">Брестская область</option>
                        <option value="Витебская область">Витебская область</option>
                        <option value="Гомельская область">Гомельская область</option>
                        <option value="Гродненская область">Гродненская область</option>
                        <option value="Минская область">Минская область</option>
                        <option value="Могилевская область">Могилевская область</option>
                        <option value="г. Минск">г. Минск</option>
                    </form:select>
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
                    <form:errors path="UNP" cssStyle="color: red;"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.status"/></label>
                    <form:select path="status" cssClass="form-control">
                        <option value="Головная">Головная</option>
                        <option value="Филиал">Филиал</option>
                    </form:select>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.UNPF"/></label>
                    <form:input path="UNPF" cssClass="form-control"/>
                    <form:errors path="UNPF" cssStyle="color: red;"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.OKOGU"/></label>
                    <form:input path="OKOGU" cssClass="form-control"/>
                    <form:errors path="OKOGU" cssStyle="color: red;"/>
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
                    <form:errors path="codeOKFS" cssStyle="color: red;"/>
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
                    <form:errors path="codeOKAD" cssStyle="color: red;"/>
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
                    <div class="input-group date">
                    <form:input path="dateOfRegistration" placeholder="dd/mm/yyyy" cssClass="form-control"/>
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar" id='datep'></span>
                        </span>
                    </div>

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
                    <form:input path="liquidationDate" class= "date" placeholder="dd/mm/yyyy" cssClass="form-control"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.codeCOATO"/></label>
                    <form:input path="codeCOATO" cssClass="form-control"/>
                    <form:errors path="codeCOATO" cssClass="error" cssStyle="color: red;"/>
                </div>
            </div>
            <div class="col-6">
                <div class="form-group">
                    <label class="col-form-label"><fmt:message bundle="${i18n}" key="org.idHeadOrganization"/></label>
                    <form:input path="idHeadOrganization" cssClass="form-control"/>
                    <form:errors path="idHeadOrganization" cssClass="error" cssStyle="color: red;"/>
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