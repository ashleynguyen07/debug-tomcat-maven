<%-- 
    Document   : teacherMarkReport
    Created on : Sep 22, 2023, 11:19:02 AM
    Author     : flywt
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
                                            <a href="teacherHomePage.jsp">
                                                <i class="fa-solid fa-arrow-left"></i>
                                            </a>
                                            Sổ Điểm
                                            <div class="search-btn-contain">
                                                <a
                                                    role="button"
                                                    class="btn btn-block nav-link"
                                                    data-bs-toggle="modal" 
                                                    data-bs-target="#infoModal"
                                                    >Tìm kiếm</a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="app-home__body">
                                        <div class="row">
                                            <div class="col">
                                                <form action="updatemark" method="post">
                                                    <!-- Student List details -->
                                                    <table class="table table-bordered table-striped">
                                                        <thead class="background-primary">
                                                            <tr class="text-color-white">
                                                                <th class="align-middle">STT</th>
                                                                <th class="align-middle">Mã học sinh</th>
                                                                <th class="align-middle">Họ và Tên</th>
                                                                <th class="align-middle">KTTX</th>
                                                                <th class="align-middle">KTGK</th>
                                                                <th class="align-middle">KTCK</th>
                                                                <th class="align-middle">TBM HK</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                        <td> <textarea name="teacherid" class="form-control" id="currentPassword" aria-describedby="emailHelp" placeholder="Email" readonly style="font-size: 16px; display: none;">${sessionScope.teacher.teacherid}</textarea> </td>    
                                                        <textarea name="totalstudent" class="form-control" id="currentPassword" aria-describedby="emailHelp" placeholder="Email" readonly style="font-size: 16px; display: none;">${requestScope.marklist.size()}</textarea>
                                                        <c:forEach var="m" items="${requestScope.marklist}" varStatus="loopStatus">
                                                            <tr>
                                                                <td>${loopStatus.index + 1}</td>
                                                                <td>${m.studentid}</td>
                                                                <td>${m.lastname} ${m.firstname}</td>
                                                                <td><input class="input-mark-student" type="text" name="progress_mark_${loopStatus.index}" value="${m.progress_mark}" oninput="validateInput(this)" /></td>
                                                                <td><input class="input-mark-student" type="text" name="middle_mark_${loopStatus.index}" value="${m.middle_mark}" oninput="validateInput(this)" /></td>
                                                                <td><input class="input-mark-student" type="text" name="final_mark_${loopStatus.index}" value="${m.final_mark}" oninput="validateInput(this)" /></td>
                                                                <td><input class="input-mark-student" type="text" name="total_mark_${loopStatus.index}" value="${m.total_mark}" readonly /></td>
                                                                <td> 
                                                                    <textarea name="studentid_${loopStatus.index}" class="form-control" id="currentPassword" aria-describedby="emailHelp" placeholder="Email" readonly style="font-size: 16px; display: none;">${m.studentid}</textarea>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>
                                                    <div class="change-password-btn m-4">
                                                        <button class="btn btn-me change-btn">
                                                            <i class="fa-solid fa-circle-check ms-2 me-3"></i>
                                                            Xác nhận
                                                        </button>
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
        <!--Modal-->
        <div id="infoModal" class="modal fade" tabindex="-1" aria-labelledby="infoModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header background-primary text-color-white">
                        <h4 class="modal-title">Thông tin tìm kiếm</h4>
                        <button type="button" class="btn-close text-color-white" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-4">
                        <form action="crudmark" method="post">
                            <div class="row mb-5">
                                <!--                                <div class="col-6">
                                                                    <label class="col-3 col-form-label"
                                                                           >Khối</label
                                                                    >
                                                                    <div class="col-8 d-flex justify-content-around">
                                                                        <select class="form-select" aria-label="Default select example">
                                                                            <option value="10">Khối 10</option>
                                                                            <option value="11">Khối 11</option>
                                                                            <option value="12">Khối 12</option>
                                                                        </select>
                                                                    </div>
                                                                </div>-->
                                <div class="col-6">
                                    <label class="col-3 col-form-label"
                                           >Lớp</label
                                    >
                                    <div class="col-8 d-flex justify-content-around">
                                        <select id="classid" name="classid" class="form-select" aria-label="Default select example" onchange="changeClassName()">
                                            <!--                                            <option value="A3">Lớp A3</option>
                                                                                        <option value="A4">Lớp A4</option>
                                                                                        <option value="A5">Lớp A5</option>-->
                                            
                                            
                                            <c:forEach var ="x" items="${classes}">
                                                <option  value="${x.classid}">${x.classname}</option>
<!--                                                <option value="A5">${classid}</option>-->
                                            </c:forEach>
                                        </select>
                                        <textarea name="teacherid" class="form-control" id="currentPassword" aria-describedby="emailHelp" placeholder="Email" readonly style="font-size: 16px; display: none;">${sessionScope.teacher.teacherid}</textarea>


                                    </div>
                                </div>

                            </div>

                            <div class="form-group row">
                                <div class="col-12">
                                    <button type="submit" class="btn btn-block submit-modal-btn">
                                        Tìm kiếm
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <%@ include file="./includes/linkJS.jsp" %>
        <script src="./assets/js/mycode.js">

        </script>
        <script>
            function validateInput(inputElement) {
                var value = inputElement.value;

                if (value.trim() === "") {
                    return;
                }

                // Check if the input matches the pattern for a valid decimal number
                var regex = /^(\d+(\.\d*)?|\.\d+)$/; // Allows "0.0" format
                if (!regex.test(value)) {
                    alert("Vui nhập điểm theo đúng định dạng (0.0-10.0)");
                    inputElement.value = ""; // Clear the input field
                } else {
                    var numericValue = parseFloat(value);
                    // Check if the numeric value is within the allowed range
                    if (isNaN(numericValue) || numericValue < 0.0 || numericValue > 10.0) {
                        alert("Vui nhập điểm theo đúng định dạng (0.0-10.0)");
                        inputElement.value = ""; // Clear the input field
                    }
                }
            }
            
            
            function changeClassName() {
                                                                var select = document.getElementById('classid');
                                                                var selectedValue = select.options[select.selectedIndex].value;
                                                                var selectedText = select.options[select.selectedIndex].text;
                                                                console.log(selectedValue);
                                                                console.log(selectedText);
                                                                select.options[0].text = selectedText;

                                                                // Lưu giá trị đã chọn vào sessionStorage
                                                                sessionStorage.setItem('selectedClassId', selectedValue);

                                                            }
                                                            // Khi trang tải xong, lấy giá trị đã chọn từ sessionStorage và đặt nó cho thẻ select
                                                            window.onload = function () {
                                                                var selectedClassId = sessionStorage.getItem('selectedClassId');
                                                                if (selectedClassId) {
                                                                    document.getElementById('classid').value = selectedClassId;
                                                                }
                                                            }

        </script>
        
    

    </body>
</html>

