<%-- 
    Document   : academicAffairStudentList
    Created on : Oct 1, 2023, 9:20:05 PM
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
                    <div class="header-name d-flex justify-content-between">
                      <span>Danh sách học sinh</span>
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
                            <label for="">Lớp:</label>
                            <select class="form-select">
                              <option value="1">10A3</option>
                              <option value="2">11A4</option>
                              <option value="3">12A5</option>
                            </select>
                          </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col">
                                    <!-- Student List details  -->
                                    <table class="table table-bordered table-striped">
                                      <thead class="background-primary">
                                          <tr class="text-color-white">
                                            <th>STT</th>
                                            <th>Mã học sinh</th>
                                            <th>Họ và Tên</th>
                                            <th>Giới tính</th>
                                            <th>Ngày sinh</th>
                                            <th>Số điện thoại</th>
                                            <th>Địa điểm</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                          <tr>
                                            <td>1</td>
                                            <td>DE170068</td>
                                            <td>Hà Trọng Tấn</td>
                                            <td>Nam</td>
                                            <td>1/1/2007</td>
                                            <td>0123456789</td>
                                            <td>FPT Arena</td>
                                          </tr>
                                          <tr>
                                            <td>1</td>
                                            <td>DE170068</td>
                                            <td>Hà Trọng Tấn</td>
                                            <td>Nam</td>
                                            <td>1/1/2007</td>
                                            <td>0123456789</td>
                                            <td>FPT Arena</td>
                                          </tr>
                                          <tr>
                                            <td>1</td>
                                            <td>DE170068</td>
                                            <td>Hà Trọng Tấn</td>
                                            <td>Nam</td>
                                            <td>1/1/2007</td>
                                            <td>0123456789</td>
                                            <td>FPT Arena</td>
                                          </tr>
                                          <tr>
                                            <td>1</td>
                                            <td>DE170068</td>
                                            <td>Hà Trọng Tấn</td>
                                            <td>Nam</td>
                                            <td>1/1/2007</td>
                                            <td>0123456789</td>
                                            <td>FPT Arena</td>
                                          </tr>
                                        </tbody>
                                    </table>
                                    <div class="row d-flex flex-row-reverse">
                                        <a href="" class="acaAff-btn">Lưu</a>
                                    </div>
                            </div>
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