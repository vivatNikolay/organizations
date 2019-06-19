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
        <form>
            <div class="form-group row">
                <label for="staticType" class="col-sm-2 col-form-label">Тип</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="staticType" value=${show.type}>
                </div>
                <label for="staticFull" class="col-sm-2 col-form-label">Полное наименование</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="staticFull" value=${show.fullName}>
                </div>
                <label for="staticShort" class="col-sm-2 col-form-label">Сокращенное наименование</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="staticShort" value=${show.shortName}>
                </div>
                <label for="staticRegion" class="col-sm-2 col-form-label">Регион</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="staticRegion" value=${show.region}>
                </div><%--
                <label for="staticUPN" class="col-sm-2 col-form-label">УНП</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control" id="staticUPN" value=${show.UPN}>
                </div>--%>
                <label for="staticUPNF" class="col-sm-2 col-form-label">УНПФ</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control" id="staticUPNF" value=${show.UNPF}>
                </div>
            </div>
        </form>
        <%--<div class="container-fluid">
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
                        </div>
                    </tr>
                        <tr class="info">
                            <td>${show.type}</td>
                            <td>${show.fullName}</td>
                            <td>${show.shortName}</td>
                            <td>${show.region}</td>
                            <td>${show.UNP}</td>
                            <td>${show.UNPF}</td>
                        </tr>
                </table>
            </div>
        </div>--%>
    </div>
</nav>
</body>