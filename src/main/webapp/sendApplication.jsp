<%-- 
    Document   : sendApplication
    Created on : Sep 22, 2023, 10:02:52 AM
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
                        <a href="studentHomePage.jsp">
                      <i class="fa-solid fa-arrow-left pe-2 ps-2"></i></a>
                      Gửi đơn                   
                    </div>
                  </div>
                  
                    <form>
                        <div class="row py-5 px-5 mx-5 mt-5">
                    <h1 class="mb-4 text-secondary fw-bolder">
                      Gửi đơn cho thầy cô giáo chủ nhiệm
                    </h1>
                  </div>

                  <div class="row px-5 mx-5 mb-5 pb-5 ">
                    <div class="col-2">
                      <h1 class="mb-4 text-secondary fw-bolder">
                        Loại đơn
                      </h1>
                    </div>
                    <div class="col-5">
                      <div class="dropdown w-50">
                          <div class="drop-down--content" id="subMenu2">
                            <select id="application" class="fs-3">
                              <option value="Đơn xin nghỉ học">Đơn xin nghỉ học</option>
                              <option value="Đơn rút hồ sơ">Đơn rút hồ sơ</option>
                            </select>
                          </div>
                      </div>
                    </div>
                  </div>

                  <div class="row px-5 mx-5 my-5">
                    <div class="col-2">
                      <h1 class="mb-4 text-secondary fw-bolder">
                        Mục đích
                      </h1>
                    </div>
                    <div class="col-9">
                      <div class="form-group">
                        <textarea class="form-control-lg w-100
                        h-100" id="exampleFormControlTextarea1" rows="3"></textarea>
                      </div>
                    </div>
                  </div>

<!--                  <div class="row px-5 mx-5">
                    <div class="col-2">
                      <h1 class="mb-4 text-secondary fw-bolder">
                        Tải Đơn
                      </h1>
                    </div>
                    <div class="col-7">
                      <form>
                        <div class="form-group fs-3">
                          <label for="exampleFormControlFile1"></label>
                          <input type="file" class="form-control-file" id="exampleFormControlFile1">
                        </div>
                      </form>
                    </div>
                  </div>-->
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

