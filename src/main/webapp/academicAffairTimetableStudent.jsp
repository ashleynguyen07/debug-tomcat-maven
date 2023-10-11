<%-- 
    Document   : academicAffairTimetableStudent
    Created on : Oct 1, 2023, 9:11:35 PM
    Author     : flywt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="./includes/headerAcademicAffair.jsp" %>
<div class="app-container mt-0">
        <div class="grid d-grid">
          <div class="section-m1">
            <div class="row">
              <div class="col">
                <div class="box-section">
                  <div class="app-home__heading">
                    <div class="header-name">
                      Thời khóa biểu
                    </div>
                  </div>
                  <div class="app-home__body m-5">
                    <form action="">
                      <div class="row acaAff-files d-flex flex-row-reverse">
                        <a class="acaAff-btn">Import</a>
                        <a class="acaAff-btn">Export</a>
                      </div>
                      <div class="row d-flex flex-row mt-4">
                        <div class="acaAff-input-ctrl d-flex align-middle me-4">
                          <label for="">Năm:</label>
                          <select class="form-select">
                            <option value="1">2023</option>
                            <option value="2">2022</option>
                            <option value="3">2021</option>
                          </select>
                        </div>
                        <div class="acaAff-input-ctrl d-flex align-middle me-4">
                          <label for="">Học kì:</label>
                          <select class="form-select">
                            <option value="1">1</option>
                            <option value="2">2</option>
                          </select>
                        </div>
                        <div class="acaAff-input-ctrl d-flex align-middle me-4">
                          <label for="">Lớp:</label>
                          <select class="form-select">
                            <option value="1">10</option>
                            <option value="2">11</option>
                            <option value="3">12</option>
                          </select>
                        </div>
                      </div>
                      <div class="row mt-4">
                        <div class="col">
                            <!-- Timetable details  -->
                            <table class="table table-bordered">
                              <thead class="background-primary">
                                  <tr class="text-color-white">
                                    <th>Buổi</th>
                                    <th>Tiết</th>
                                    <th>Thứ 2</th>
                                    <th>Thứ 3</th>
                                    <th>Thứ 4</th>
                                    <th>Thứ 5</th>
                                    <th>Thứ 6</th>
                                    <th>Thứ 7</th>
                                    <th>Chủ Nhật</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td rowspan="5" class="align-middle">Sáng</td>
                                    <td>1</td>
                                    <td>Toán</td>
                                    <td>Toán</td>
                                    <td>Toán</td>
                                    <td>Toán</td>
                                    <td>Toán</td>
                                    <td>Toán</td>
                                    <td></td>
                                  </tr>
                                  <tr>
                                      <td>2</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td></td>
                                    </tr>
                                    <tr>
                                      <td>3</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td></td>
                                    </tr>
                                    <tr>
                                      <td>4</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td></td>
                                    </tr>
                                    <tr>
                                      <td>5</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td>Toán</td>
                                      <td></td>
                                    </tr>
                                    <tr>
                                        <td rowspan="5" class="align-middle">Chiều</td>
                                        <td>1</td>
                                        <td>Toán</td>
                                        <td>Toán</td>
                                        <td>Toán</td>
                                        <td>Toán</td>
                                        <td>Toán</td>
                                        <td>Toán</td>
                                        <td></td>
                                      </tr>
                                      <tr>
                                          <td>2</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td></td>
                                        </tr>
                                        <tr>
                                          <td>3</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td></td>
                                        </tr>
                                        <tr>
                                          <td>4</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td></td>
                                        </tr>
                                        <tr>
                                          <td>5</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td>Toán</td>
                                          <td></td>
                                        </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row d-flex flex-row-reverse">
                      <button class="acaAff-btn">Lưu</button>
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


