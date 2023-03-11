<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>


      <h6 class="m-0 font-weight-bold text-primary">Szczegóły wybranego użytkownika</h6>
    </div>
    <div class="card-body">
      <div class="table-responsive">
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
        <form action="/UserList" method="">
          <input class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" style="float: left;" type="submit" value="Wróć">
        </form>
      </div>
    </div>
  </div>
  <br>


  <!-- Content Row -->


  <!-- Content Row -->



  <!-- Content Row -->


</div>
<!-- /.container-fluid -->

<%@ include file="/footer.jsp" %>