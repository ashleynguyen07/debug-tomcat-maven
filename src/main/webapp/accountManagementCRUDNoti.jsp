<%-- 
    Document   : accountManagementCRUDNoti
    Created on : Oct 3, 2023, 1:55:45 PM
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
        <title>MS</title>
    </head>
    <body>
        <div class="app">
            <!-- header  -->
            <%--<%@ include file="./includes/headerAccountManagement.jsp" %>--%>

            <div class="app-container m-0">
                <div class="grid d-grid">
                    <div class="section-m1">
                        <div class="row">
                            <div class="col">
                                <div class="box-section">
                                    <div class="app-home__heading">
                                        <div class="header-name">
                                            <a href="accountManagementProfile.jsp">
                                                <i class="fa-solid fa-arrow-left"></i>
                                            </a>
                                            Gửi thông báo
                                        </div>
                                    </div>

                                    <div class="app-home__body">
                                        <form action="sendNotificationFromSchool" method="post">
                                            <div class="row fs-2 p-3">
                                                <div class="col-1 p-3" style="border-right: solid 1px">
                                               Tiêu Đề
                                                </div>
                                                <input name="title" class="col w-100 p-3 border-0" type="text" placeholder="Tiêu Đề" style="outline: none"/>
                                            </div>
                                            
                                            <textarea name="content" class=" w-100 p-3 fs-2" type="text" placeholder="Nội dung" style="outline: none; height: 500px; border-right: 0; border-left: 0"></textarea>
                                            <div class="row px-5 mx-5 pt-3 pb-3">
                                                <div class="col-11  "></div>
                                                    <button type="submit" class="btn btn-primary btn-submit mb-4 float-end">Submit</button>
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
        <script src="./assets/js/mycode.js"></script>
    </script>
</body>
</html>