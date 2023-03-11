<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>


<h6 class="m-0 font-weight-bold text-primary">Dodawanie użytkownika</h6>
</div>
<div class="card-body">
    <div class="table-responsive">

        <form action="/AddUserFinal" method="post">
            <input type="hidden" value="${user.id}" name="id">
            <input type="text" name="username" placeholder="Pseudonim"> Pseudonim<br><br>
            <input type="text" name="email" placeholder="Adres e-mail"> Imię<br><br>
            <input type="password" name="password" placeholder="Hasło"> Hasło<br><br>
            <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" style="float: right; background: green; border: 0;" type="submit" value="Dodaj">
        </form>
        <form action="/UserList" method="">
            <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" style="float: left; background: #b60000; border: 0;" type="submit" value="Anuluj">
        </form>
    </div>
</div>
<!-- Content Row -->


<!-- Content Row -->
</div>


<!-- Content Row -->


</div>
<!-- /.container-fluid -->

<%@ include file="/footer.jsp" %>