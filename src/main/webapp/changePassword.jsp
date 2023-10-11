<%-- 
    Document   : studentProfile
    Created on : Sep 22, 2023, 10:03:40 AM
    Author     : htk09
--%>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
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
                                            Thay đổi mật khẩu
                                        </div>
                                    </div>
                                    <div class="app-home__body">
                                        <div class="info-container">
                                            <div class="m-5">
                                                <div class="col-3 m-2">
                                                    <form class="change-password-container" method="post" action="changepassword" >

                                                        <div class="mb-4">
                                                            <textarea name="email" class="form-control" id="currentPassword" aria-describedby="emailHelp" placeholder="Email" readonly style="font-size: 16px;">${sessionScope.account.email}</textarea>
                                                        </div>          
                                                        <div class="mb-4">
                                                            <input name="pass" type="text" class="form-control" id="currentPassword" aria-describedby="" placeholder="Mật khẩu hiện tại">
                                                        </div>

                                                        <div class="mb-4">
                                                            <input name="newpass" type="password" class="form-control" id="newPassword" placeholder="Mật khẩu mới">
                                                        </div>
                                                        <div class="mb-4">
                                                            <input name="verify" type="password" class="form-control" id="verifyPassword" placeholder="Xác nhận mật khẩu mới">
                                                        </div>
                                                        <div class="change-password-btn">
                                                            <button  type="submit" class="btn btn-me change-btn">
                                                                <i class="fa-solid fa-key ms-2 me-3"></i>
                                                                Xác nhận
                                                            </button>
                                                        </div>
                                                        <div>
                                                            <h3> ${msg}</h3>
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
                </div>
            </div>
        </div>
        <%@ include file="./includes/linkJS.jsp" %>
        <script src="./assets/js/mycode.js">
 
    </script>
</body>
</html>

