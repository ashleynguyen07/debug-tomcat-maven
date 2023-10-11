    <%-- 
    Document   : payFee
    Created on : Sep 22, 2023, 10:02:36 AM
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
    <link rel="stylesheet" href="assets/css/sendApplication.css"/>
    
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
                <div class="box-section row ">
                  <div class="app-home__heading">
                    <div class="header-name">
                        <a href="studentHomePage.jsp"><i class="fa-solid fa-arrow-left pe-2 ps-2"></i></a>
                      Đóng học phí
                    </div>
                  </div>
                    <div class="col-2"></div>
                    <form class="col">
                        <div class="row py-5 px-5 mx-5 mt-5">
                            <h1 class="mb-4 text-secondary fw-bolder">
                              Lựa chọn các khoàn phí
                            </h1>
                        </div>

                        <div class="row px-5 mx-5 mb-5 pb-5 ">
                          <div class="col-3">
                            <h1 class="mt-2 text-secondary fw-bolder align-middle">
                              Học Phí theo Kỳ
                            </h1>
                          </div>
                          <div class="col-5">
                              <input class="fs-2" type="text" placeholder="Nhập số tiền" />
                          </div>
                        </div>

                        <div class="row px-5 mx-5 mb-5 pb-5 ">
                          <div class="col-3">
                            <h1 class="mt-2 text-secondary fw-bolder align-middle">
                              Các khoản phí khác
                            </h1>
                          </div>
                          <div class="col-5">
                              <input class="fs-2" type="text" placeholder="Nhập số tiền" />
                          </div>
                        </div>


                        <div class="row px-5 mx-5 pt-5 pb-5">
                            <div class="col-10"></div>
                          <button type="button" class="btn btn-primary col-1 fs-3">Submit</button>
                        </div>
                    </form>
                  
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

