

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
                                            <a href="teacherHomePage.jsp">
                                                <i class="fa-solid fa-arrow-left"></i>
                                            </a>
                                            Danh sách học sinh
                                            <form action="student-list" method="get">
                                                <div class="search">
                                                    <div class="search-btn-contain">
                                                        <select id="classid" name="classid" class="form-select" aria-label="Default select example" onchange="changeClassName()">
                                                            <option selected>Chọn Lớp</option>
                                                            <option value="1">10A1</option>
                                                            <option value="2">10A2</option>
                                                            <option value="3">10A3</option>
                                                            <option value="4">11A1</option>
                                                            <option value="5">11A2</option>
                                                            <option value="6">11A3</option>
                                                            <option value="7">12A1</option>
                                                            <option value="8">12A2</option>
                                                            <option value="9">12A3</option>                                                            
                                                        </select>                                   
                                                    </div>
                                                    <button type="submit" class="btn btn-block submit-modal-btn">
                                                        Tìm kiếm
                                                    </button>
                                                </div>
                                            </form>
                                        </div>

                                        <div class="app-home__body">
                                            <div class="row">
                                                <div class="col">
                                                    <!-- Student List details  -->
                                                    <table class="table table-bordered table-striped">
                                                        <thead class="background-primary">
                                                            <tr class="text-color-white">
                                                                <th>STT</th>
                                                                <th>Mã học sinh</th>
                                                                <th>Họ và Tên</th>                                                            
                                                                <th>Giới tính</th>
                                                                <th>Email</th>
                                                                <th>Ngày sinh</th>
                                                                <th>Số điện thoại</th>
                                                                <th>Địa chỉ</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach items="${students}" var="x" varStatus="status">
                                                                <tr>
                                                                    <td>${status.index+1}</td>
                                                                    <td>${x.studentid}</td>
                                                                    <td>${x.lastName} ${x.firstName}</td>
                                                                    <td>
                                                                        <c:choose>
                                                                            <c:when test="${x.gender}">
                                                                                Nam
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                Nữ
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                    </td>
                                                                    <td>${x.email}</td>
                                                                    <td>${x.dob}</td>
                                                                    <td>${x.phoneNumber}</td>
                                                                    <td>${x.address}</td>
                                                                </tr>  
                                                            </c:forEach>
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
            <script src="./assets/js/mycode.js"></script>
            <%@ include file="./includes/script.html" %>
    </body>
</html>
