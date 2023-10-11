<%-- 
    Document   : attendanceStatus
    Created on : Sep 22, 2023, 10:01:54 AM
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
        

        <link rel="stylesheet" href="./assets/css/style-attendanceStatu--student.css" />
        <link rel="stylesheet" href="./assets/css/style.css" />
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
                                            <a href="studentHomePage.jsp"> <i class="fa-solid fa-arrow-left pe-2 ps-2"></i></a>
                                            Nghỉ Học
                                        </div>
                                    </div>

                                    <div class="app-home__body">
                                        <div class="p-5 info-container">
                                            <div class="row">
                                                <!--                    <div class="col-3">
                                                                      <div class="box-section h-100 w-75">
                                                                        <div class="app-home__heading">
                                                                          <div class="header-name">
                                                                            <i class="fa-solid fa-calendar-days pe-2 ps-2"></i>
                                                                            Lớp
                                                                          </div>
                                                                        </div>
                                                                        
                                                                          <div class="dropdown mt-5">
                                                                            <div class="drop-down--header" onclick="toggleMenu1()">
                                                                              <span class="drop-down--title">Lớp 10</span>
                                                                              <i class="fa-solid fa-caret-down dropdown--icon"></i>
                                                                            </div>
                                                                              <div class="drop-down-content" id="subMenu1">
                                                                                <ul class="drop-down-link">
                                                                                  <li><a href="#">Kỳ 1</a></li>
                                                                                  <li><a href="#">Kỳ 2</a></li>
                                                                                </ul>
                                                                              </div>
                                                                          </div>
                                                                        
                                                                    
                                                                        
                                                                          <div class="dropdown mt-5">
                                                                            <div class="drop-down--header" onclick="toggleMenu2()">
                                                                              <span class="drop-down--title">Lớp 10</span>
                                                                              <i class="fa-solid fa-caret-down dropdown--icon"></i>
                                                                            </div>
                                                                              <div class="drop-down-content" id="subMenu2">
                                                                                <ul class="drop-down-link">
                                                                                  <li><a href="#">Kỳ 1</a></li>
                                                                                  <li><a href="#">Kỳ 2</a></li>
                                                                                </ul>
                                                                              </div>
                                                                          </div>
                                                                      
                                                                       
                                                                        <div class="dropdown my-5">
                                                                          <div class="drop-down--header" onclick="toggleMenu3()">
                                                                            <span class="drop-down--title">Lớp 10</span>
                                                                            <i class="fa-solid fa-caret-down dropdown--icon"></i>
                                                                          </div>
                                                                            <div class="drop-down-content" id="subMenu3">
                                                                              <ul class="drop-down-link">
                                                                                <li><a href="#">Kỳ 1</a></li>
                                                                                <li><a href="#">Kỳ 2</a></li>
                                                                              </ul>
                                                                            </div>
                                                                        </div>
                                                                      </div>
                                                
                                                                      
                                                                    </div>-->

                                                <div class="col">
                                                    <div class="box-section">
                                                        <table class="table table-bordered text-center ">
                                                            <thead>
                                                                <tr>
                                                                    <th class="col-1" scope="col" rowspan="2">STT</th>
                                                                    <th class="col-1" scope="col" rowspan="2">Ngày</th>
                                                                    <th class="col-2" scope="col" colspan="2">Phép</th>
                                                                    <th class="col-3" scope="col" rowspan="2">Nội Dung
                                                                    </th>
                                                                </tr>
                                                                <tr>
                                                                    <th class="col-1" scope="col">Có</th>
                                                                    <th class="col-1" scope="col">Không</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <th scope="col">1</th>
                                                                    <td>10/10/2023</td>
                                                                    <td><i class="fa-solid fa-check"></i></td>
                                                                    <td></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">2</th>
                                                                    <td>11/10/2023</td>
                                                                    <td><i class="fa-solid fa-check"></i></td>
                                                                    <td></td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <th scope="row">3</th>
                                                                    <td>20/10/2023</td>
                                                                    <td></td>
                                                                    <td><i class="fa-solid fa-check"></i></td>
                                                                    <td></td>
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
            </div>
        </div>
    </div>


    <%@ include file="./includes/linkJS.jsp" %>
    <script src="assets/js/scripts.js"></script>
</body>
</html>
