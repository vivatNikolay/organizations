<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-info">
    <div>
        <form>
            <div class="form-group">
                <table width="20%" cellspacing="10" cellpadding="5">
                <tr>
                    <td width="300" valign="top">
                <label for="staticId" class="col-md-2 col-form-label">Id</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticId" value="${show.id}">
                </div>
                <label for="staticType" class="col-md-2 col-form-label">Тип</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticType" value="${show.type}">
                </div>
                <label for="staticFull" class="col-md-2 col-form-label">Полное наименование</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticFull" value="${show.fullName}">
                </div>
                <label for="staticShort" class="col-md-2 col-form-label">Сокращенное наименование</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticShort" value="${show.shortName}">
                </div>
                <label for="staticFullHead" class="col-md-2 col-form-label">Полное наименование главы</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticFullHead" value="${show.fullNameOfTheHead}">
                </div>
                <label for="staticAddress" class="col-md-2 col-form-label">Адрес</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticAddress" value="${show.address}">
                </div>
                <label for="staticRegion" class="col-md-2 col-form-label">Регион</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticRegion" value="${show.region}">
                </div>
                    </td>
                    <td width="300" valign="top">
                <label for="staticFax" class="col-md-2 col-form-label">Факс</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticFax" value="${show.fax}">
                </div>
                <label for="staticEmail" class="col-md-2 col-form-label">E-mail</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticEmail" value="${show.email}">
                </div>
                <label for="staticUNP" class="col-md-2 col-form-label">УНП</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticUNP" value="${show.UNP}">
                </div>
                <label for="staticStatus" class="col-md-2 col-form-label">Статус</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticStatus" value="${show.status}">
                </div>
                <label for="staticUPNF" class="col-md-2 col-form-label">УНПФ</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticUPNF" value="${show.UNPF}">
                </div>
                <label for="staticUPNF" class="col-md-2 col-form-label">ОКОГУ</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticOKOGU" value="${show.OKOGU}">
                </div>
                <label for="staticSubordination" class="col-md-2 col-form-label">Ведомственная подчиненность</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticSubordination" value="${show.subordination}">
                </div>
                <label for="staticСodeOKFS" class="col-md-2 col-form-label">Код ОКФС</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticСodeOKFS" value="${show.codeOKFS}">
                </div>
                    </td>
                    <td width="300" valign="top">
                <label for="staticTypeOfOwnership" class="col-md-2 col-form-label">Форма собственности</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticTypeOfOwnership" value="${show.typeOfOwnership}">
                </div>
                <label for="staticLegalForm" class="col-md-2 col-form-label">Организационно-правовая форма</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticLegalForm" value="${show.legalForm}">
                </div>
                <label for="staticCodeOKAD" class="col-md-2 col-form-label">Код ОКЭД</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticCodeOKAD" value="${show.codeOKAD}">
                </div>
                <label for="staticMainEconomicActivity" class="col-md-2 col-form-label">Основной вид эк. деятельности</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticMainEconomicActivity" value="${show.mainEconomicActivity}">
                </div>
                <label for="staticDateOfRegistration" class="col-md-2 col-form-label">Дата гос. регистрации</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticDateOfRegistration" value="${show.dateOfRegistration}">
                </div>
                <label for="staticNameOfTheRegisteringAuthority" class="col-md-2 col-form-label">Наименование регистрирующего органа</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticNameOfTheRegisteringAuthority" value="${show.nameOfTheRegisteringAuthority}">
                </div>
                <label for="staticLiquidationDate" class="col-md-2 col-form-label">Дата ликвидации</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticLiquidationDate" value="${show.liquidationDate}">
                </div>
                <label for="staticCodeCOATO" class="col-md-2 col-form-label">Код COATO</label>
                <div class="col-md-12">
                    <input type="text" readonly class="form-text" id="staticCodeCOATO" value="${show.codeCOATO}"/>
                </div>
                    </td>
                <tr>
                </table>
            </div>
        </form>
    </div>
</nav>
</body>