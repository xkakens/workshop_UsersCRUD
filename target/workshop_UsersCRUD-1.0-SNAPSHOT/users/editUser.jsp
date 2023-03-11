<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>


      <h6 class="m-0 font-weight-bold text-primary">Edytujesz dane poniższego użytkownika:</h6>
    </div>
    <div class="card-body">
      <div class="table-responsive">
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
  <!-- Page Heading -->
  <br>
  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
    <thead>
    <tr>
      <th>Id</th>
      <th>Nazwa użytkownika</th>
      <th>E-mail</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td>${user.id}</td>
      <td>${user.username}</td>
      <td>${user.email}</td>
    </tr>
    </tbody>
  </table>

  </div>
        <form action="/EditUserFinal" method="post">
          <input type="hidden" value="${user.id}" name="id">
          <input type="text" name="username" id="username" placeholder="Pseudonim" value="${user.username}"> Pseudonim<br><br>
          <input type="text" name="email" id="email" placeholder="Adres e-mail" value="${user.email}"> E-mail<br><br>
          <input type="password" name="password" id="password" placeholder="Hasło"> Hasło<br><br>
          <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" style="float: right; background: green; border: 0;" type="submit" value="Zapisz">
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