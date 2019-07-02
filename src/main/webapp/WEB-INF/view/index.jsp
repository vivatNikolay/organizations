<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/assests/css/style.css" type="text/css">--%>
<%--    <script src="${pageContext.request.contextPath}/assests/js/utils.js" type="text/javascript">
        <jsp:text/>
    </script>--%>

</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-info">
    <div>
        <div class="container-fluid">
            <a href="${pageContext.request.contextPath}/org/create"><button type="button" class="btn btn-primary btn-lg"><b>Добавить</b></button></a>
                <table class="table">
                    <tr>
                        <div class="col-md-14">
                            <th class="col-md-2">Тип</th>
                            <th class="col-md-4">Полное наименование</th>
                            <th class="col-md-2">Сокращенное наименование</th>
                            <th class="col-md-2">Регион</th>
                            <th class="col-md-2">УНП</th>
                            <th class="col-md-2">УНПФ</th>
                            <th class="col-md-2"></th>
                            <th class="col-md-2"></th>
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
                                <td><a href="${pageContext.request.contextPath}/org/update?id=${showAllOrg.id}"><button type="button" class="btn btn-primary"><b>Обновить</b></button></a></td>
                                <td><a href="${pageContext.request.contextPath}/org/view?id=${showAllOrg.id}"><button type="button" class="btn btn-primary"><b>Посмотреть</b></button></a></td>
                                <td><a href="${pageContext.request.contextPath}/org/delete?id=${showAllOrg.id}"><button type="button" class="btn btn-primary"><b>Удалить</b></button></a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</nav>
</body>