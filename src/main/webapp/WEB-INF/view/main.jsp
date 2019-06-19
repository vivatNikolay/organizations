<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>

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
<nav class="navbar navbar-expand-lg navbar-light bg-info">
    <div>
        <div class="container-fluid">
            <div class="col-md-16"><div style="text-align: center;">Организации</div>
                <table class="table">
                    <tr>
                        <div class="col-md-14">
                            <th class="col-md-2">Тип</th>
                            <th class="col-md-4">Полное наименование</th>
                            <th class="col-md-2">Сокращенное наименование</th>
                            <th class="col-md-2">Регион</th>
                            <th class="col-md-2">УНП</th>
                            <th class="col-md-2">УНПФ</th>
                            <th class="col-md-2">Создать</th>
                            <th class="col-md-2">Просмотреть</th>
                            <th class="col-md-2">Удалить</th>
                        </div>
                    </tr>
                    <script>

                    </script>
                    <c:forEach var="showAllOrg" items="${showAllOrg}" varStatus="status">
                        <tr class="info">
                                <td>${showAllOrg.type}</td>
                                <td>${showAllOrg.fullName}</td>
                                <td>${showAllOrg.shortName}</td>
                                <td>${showAllOrg.region}</td>
                                <td>${showAllOrg.UNP}</td>
                                <td>${showAllOrg.UNPF}</td>
                                <td><span class="glyphicon glyphicon-plus-sign"></span></td>
                                <td><a href="${pageContext.request.contextPath}/show?id=${showAllOrg.id}"><span class="glyphicon glyphicon-search"></span></a></td>
                                <td><span class="glyphicon glyphicon-remove-sign"></span></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</nav>
</body>