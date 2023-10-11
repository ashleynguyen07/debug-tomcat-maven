<%-- 
    Document   : teacherSendNotification
    Created on : Oct 1, 2023, 11:57:36 AM
    Author     : tramy
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
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;500;600;700;800;900&display=swap"
              rel="stylesheet" />

        <link rel="stylesheet" href="./assets/css/teacher-base.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
        <!--  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>-->
        <link rel="stylesheet" href="./assets/css/style.css" />
        <link rel="stylesheet" href="./assets/css/teacher-style.css" />
        <title>MS</title>
    </head>

    <body>
        <div class="app">
            <!-- header  -->
            <%@ include file="./includes/header.jsp" %>
            <div class="app-container d-flex justify-content-center">
                <div class="box-section w-50 mt-lg-5">
                    <div class="app-home__heading">
                        <div class="header-name d-flex">
                            <a href="teacherHomePage.jsp"><i class="fa-solid fa-arrow-left me-3"></i></a>
                            THÔNG BÁO
                            <a href="teacherSendApplication.jsp" class="btn btn-outline-primary ms-auto add-noti">+</a>
                        </div>

                    </div>
                    <div class="app-home__content">
                        <div class="grid-container grid-header">
                            <!--<div class="grid-item">STT</div>-->
                            <div class="grid-item">Đến</div>
                            <div class="grid-item">Tiêu Đề</div>
                            <div class="grid-item">Ngày Gửi</div>
                        </div>
                        <c:forEach items="${notification}" var="x">
                        <div class="grid-container">                          
                            <!--<div class="grid-item">1</div>-->
                            <div class="grid-item">${x.classid}</div>
                            <div class="grid-item">${x.title}</div>
                            <div class="grid-item">${x.date}</div>
                        </div>  
                        </c:forEach>
                    </div>
                    <div class="navigation me-5">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-end pagination-lg mt-3">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>            
        </div>
        <%@ include file="./includes/linkJS.jsp" %>
    </body>

</html>
