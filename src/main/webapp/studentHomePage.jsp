<%-- 
    Document   : studentHomePage
    Created on : Sep 22, 2023, 10:03:10 AM
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

            <!-- home navigation -->
            <div class="app-container">
                <div class="grid d-grid">
                    <div class="section-m1">
                        <div class="row">
                            <div class="col">
                                <div class="box-section">
                                    <div class="app-home__heading">
                                        <div class="header-name">
                                            <i class="fa-solid fa-folder pe-2 ps-2"></i>
                                            Thông tin cá nhân
                                        </div>
                                    </div>
                                    <div class="app-home__body">
                                        <div class="p-4 info-container">
                                            <div class="row">
                                                <div class="col">
                                                    <div class="card-body text-center student-avatar">
                                                        <img
                                                            class="img-account-profile rounded-circle mb-4 mt-4"
                                                            src="./assets/imgs/user.png"
                                                            alt=""
                                                            />
                                                        <h1 class="mb-4 text-color-gray fw-bolder">
                                                            ${sessionScope.student.lastName} ${sessionScope.student.firstName}
                                                        </h1>
                                                        <h3 class="mb-4 text-color-gray fw-bold">
                                                            Lớp ${sessionScope.student.className}
                                                        </h3>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="card-body text-center student-list-info">
                                                        <ul class="list-info mt-4">
                                                            <li class="info-href-contain h3 ms-3 mb-4">
                                                                <a href="studentprofile?email=${sessionScope.student.email}" class="text-color-gray">

                                                                    <i class="fa-solid fa-user me-3"></i>
                                                                    <span>HỒ SƠ HỌC SINH</span>
                                                                </a>
                                                            </li>
                                                            <li class="info-href-contain h3 ms-3 mb-4">
                                                                <a href="viewmark?studentid=${sessionScope.student.studentid}" class="text-color-gray">
                                                                    <i class="fa-solid fa-book me-3"></i>
                                                                    <span>QUÁ TRÌNH HỌC TẬP</span>
                                                                </a>
                                                            </li>
                                                            <li class="info-href-contain h3 ms-3 mb-4">
                                                                <a href="#" class="text-color-gray">
                                                                    <i class="fa-solid fa-award me-3"></i>
                                                                    <span>KHEN THƯỞNG, KỶ LUẬT</span>
                                                                </a>
                                                            </li>
                                                            <li class="info-href-contain h3 ms-3 mb-4">
                                                                <a href="attendanceStatus.jsp" class="text-color-gray">
                                                                    <i class="fa-solid fa-triangle-exclamation me-3"></i>
                                                                    <span>VI PHẠM, NGHỈ HỌC</span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <!--                            <img
                                                                                      class="img-teacher-profile rounded-circle mb-4 mt-4"
                                                                                      src="./assets/imgs/user.png"
                                                                                      alt=""
                                                                                    />
                                                                                    <h3 class="mb-4 text-color-gray fw-bolder">
                                                                                      GVCN. Phan Hoàng Nhật
                                                                                    </h3>-->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <!-- timetable  -->
                                <div class="row">
                                    <div class="col">
                                        <div class="box-section">
                                            <div class="app-home__heading">
                                                <div class="header-name">
                                                    <i class="fa-solid fa-calendar-days pe-2 ps-2"></i>
                                                    Thời khoá biểu
                                                </div>
                                            </div>
                                            <div class="timetable-href">
                                                <a href="studentTimetable.jsp" class="text-color-gray fw-bold">Xem</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col">
                                        <div class="box-section">
                                            <div class="app-home__heading">
                                                <div class="header-name">
                                                    <i class="fa-solid fa-users-line"></i>
                                                    Giáo viên bộ môn
                                                </div>
                                            </div>
                                            <div class="timetable-href">
                                                <a href="teacherList.jsp" class="text-color-gray fw-bold">Xem</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col">
                                        <div class="box-section">
                                            <div class="app-home__heading">
                                                <div class="header-name">
                                                    <i class="fa-solid fa-clipboard pe-2 ps-2"></i>
                                                    Thủ tục, pháp lý
                                                </div>
                                            </div>
                                            <div class="registration-container">
                                                <div class="applicate-container">
                                                    <a href="sendApplication.jsp">
                                                        <button type="button" class="btn btn-me applicate-btn">
                                                            <i class="ps-3 pe-3 fa-solid fa-paper-plane"></i>
                                                            Gửi đơn
                                                        </button>
                                                    </a>
                                                    <a href="applicationHistory.jsp"><button type="button" class="btn btn-me applicate-view">Đơn đã gửi</button></a>
                                                </div>
                                                <div class="mt-3 paid-items-container">
                                                    <a href="payFee.jsp">
                                                        <button type="button" class="btn btn-me paid-item-btn">
                                                            <i class="ps-3 pe-3 fa-solid fa-money-bill-wave"></i>
                                                            Chọn các khoản nộp
                                                        </button>
                                                    </a>
                                                    <a href="feeHistory.jsp"><button type="button" class="btn btn-me paid-item-view">Lịch sử giao dịch</button></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col">
                                <div class="box-section">
                                    <div class="app-home__heading">
                                        <a href="notificationSchool?classid=${sessionScope.student.classid}" style="text-decoration: none">
                                            <div class="header-name">
                                                <i class="fa-solid fa-envelope pe-2 ps-2"></i>
                                                <span class="header-notice">2</span>
                                                Thông báo từ nhà trường
                                            </div>
                                        </a>
                                    </div>
                                    <div class="notification-list">
                                        <c:forEach var="x" items="${sessionScope.notification}">
                                        <div class="notificaiton-item p-4">
                                            <div class="notifi-heading">
                                                <div class="notifi-header">${x.title}</div>
                                                <div class="notifi-date">${x.date}</div>
                                            </div>
                                            <div class="ps-3 pt-2 notifi-short-content" style="text-overflow: ellipsis;overflow: hidden;white-space:nowrap; max-width: 500px">${x.content}</div>
                                        </div>
                                        </c:forEach>
                                        <div class="text-center view-all">
                                            <a href="notificationSchool?classid=${sessionScope.student.classid}" class="text-color-gray">Xem tất cả</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="box-section">
                                    <div class="app-home__heading">
                                        <a href="notificationTeacher?classid=${sessionScope.student.classid}" style="text-decoration: none">
                                            <div class="header-name">
                                                <i class="fa-solid fa-bell pe-2 ps-2"></i>
                                                <span class="header-notice">4</span>
                                                Thông báo từ giáo viên
                                            </div>
                                        </a>
                                    </div>
                                    <div class="notification-list">
                                         <c:forEach var="x" items="${sessionScope.notifications}">
                                        <div class="notificaiton-item p-4">
                                            <div class="notifi-heading">
                                                <div class="notifi-header">${x.title}</div>
                                                <div class="notifi-date">${x.date}</div>
                                            </div>
                                            <div class="ps-3 pt-2 notifi-short-content" style="text-overflow: ellipsis;overflow: hidden;white-space:nowrap; max-width: 500px">
                                                ${x.content}
                                            </div>
                                        </div>
                                        </c:forEach>
                                        <div class="text-center view-all">
                                            <a href="notificationTeacher?classid=${sessionScope.student.classid}" class="text-color-gray">Xem tất cả</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       <!--Ne-->
       <%@ include file="./includes/linkJS.jsp" %>
    </body>
</html>
