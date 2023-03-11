<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>

                  <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
              </div>
              <div class="card-body">
                  <div class="table-responsive">
                      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                          <thead>
                          <tr>
                              <th>Id</th>
                              <th>Nazwa użytkownika</th>
                              <th>E-mail</th>
                              <th>Akcja</th>
                          </tr>
                          </thead>
                          <tbody>
                            <c:forEach var="user" items="${users}">
                                <tr>
                                    <td>${user.id}</td>
                                    <td>${user.username}</td>
                                    <td>${user.email}</td>
                                    <td>
                                        <a href="/DeleteUserAsk?id=${user.id}">Usuń</a>
                                        <a href="/EditUser?id=${user.id}"> Edit</a>
                                        <a href="/ShowUser?id=${user.id}"> Pokaż</a>
                                    </td>
                                </tr>
                            </c:forEach>
                          </tbody>
                      </table>
                  </div>
              </div>
          </div>

        <!-- Content Row -->


        <!-- Content Row -->



        <!-- Content Row -->


      </div>
      <!-- /.container-fluid -->

<%@ include file="/footer.jsp" %>