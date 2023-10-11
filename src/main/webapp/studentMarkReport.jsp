<%-- 
    Document   : studentMarkReport
    Created on : Sep 22, 2023, 10:03:22 AM
    Author     : htk09
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;500;600;700;800;900&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./assets/css/base.css" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="./assets/css/style.css" />
    <title>MS</title>
  </head>
  <body>
    <div class="app">
      <!-- header  -->
            <%@ include file="./includes/header.jsp" %>

      <div class="app-container">
        <div class="grid d-grid">
          <div class="section-m1">
            <div class="row">
              <div class="col">
                <div class="box-section">
                  <div class="app-home__heading">
                    <div class="header-name">
                      <a href="studentHomePage.jsp">
                        <i class="fa-solid fa-arrow-left"></i>
                      </a>
                      Báo cáo điểm
                    </div>
                  </div>
                  
                  <div class="app-home__body">
                    <div class="p-5 info-container">
                        <div class="row">
                            <div class="col">
                                <div class="box-section">
                                    <!-- Timetable details  -->
                                    <table class="table table-bordered">
                                      <thead class="background-primary">
                                          <tr class="text-color-white">
                                            <th>Môn Học</th>
                                            <th>ĐGTX</th>
                                            <th>ĐGGK</th>
                                            <th>ĐGCK</th>
                                            <th>Tổng</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="stm" items="${requestScope.studentmarks}">
                                                <tr>
                                            <td>${stm.major}</td>
                                            <td>${stm.progress_mark}</td>
                                            <td>${stm.middle_mark}</td>
                                            <td>${stm.final_mark}</td>
                                            <td>${stm.total_mark}</td>
                                          </tr>
                                            </c:forEach>    
                                          
                                          
<!--                                            <td colspan="4">Tổng kết</td>
                                            <td>10</td>
                                          </tr>-->
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                  </div>

                </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>

    <%@ include file="./includes/linkJS.jsp" %>
    <script src="./assets/js/mycode.js"></script>
    </script>
  </body>
</html>
