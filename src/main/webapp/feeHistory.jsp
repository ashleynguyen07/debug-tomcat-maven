<%-- 
    Document   : feeHistory
    Created on : Sep 22, 2023, 10:02:04 AM
    Author     : htk09
--%>

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
    <link rel="stylesheet" href="./assets/css/sendApplication.css" />
    <title>MS</title>
  </head>
  <body>
    <div class="app">
      <!-- header  -->
            <%@ include file="./includes/header.jsp" %>
      <div class="app-container">
        <div class="grid d-grid">
          <div class="app-home section-m1">
            <div class="row">
              <div class="col">
                <div class="box-section">
                  <div class="app-home__heading">
                    <div class="header-name">
                        <a href="studentHomePage.jsp"><i class="fa-solid fa-arrow-left pe-2 ps-2"></i></a>
                      Học phí
                    </div>
                  </div>
                  
                  <div class="row mt-5 px-5">
                

                    <div class="col mt-5">
                      <table class="table table-bordered">
                        <thead>
                          <tr class="text-center">
                            <th class="col-1" scope="col" >Loại</th>
                            <th class="col-2"  scope="col">Số Tiền</th>
                            <th class="col-3" scope="col">Trạng Thái</th>
                            <th class="col-3" scope="col">Ngày Gửi</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr class="text-center">
                            <td>Học phí</td>
                            <td>20 000 000vnđ</td>
                            <td>Đã thanh toán</td>
                            <td>20/10/2023</td>
                          </tr>
                          <tr class="text-center">
                            <td>Phí KTX</td>
                            <td>12 000 000vnđ</td>
                            <td>Đã thanh toán</td>
                            <td>22/10/2023</td>
                          </tr>
                          
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


    <%@ include file="./includes/linkJS.jsp" %>
    <script src="assets/js/scripts.js"></script>
  </body>
</html>

