<%-- 
    Document   : academicAffairCheckAttendance
    Created on : Oct 1, 2023, 9:13:39 PM
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
                      <span>Điểm danh</span>
                      <button 
                      role="button"
                      data-bs-toggle="modal" 
                      data-bs-target="#infoModal" class="acaAff-btn">
                        Tìm kiếm lớp
                    </button>
                    </div>
                  </div>
                  <div class="app-home__body m-5">
                    <div class="row">
                        <div class="col">
                            <form action="">
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
                                        <th>Điểm danh</th>
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
                                        <td><input type="checkbox" name="" id=""></td>
                                      </tr>
                                      <tr>
                                        <td>1</td>
                                        <td>DE170068</td>
                                        <td>Hà Trọng Tấn</td>
                                        <td>Nam</td>
                                        <td>1/1/2007</td>
                                        <td>0123456789</td>
                                        <td><input type="checkbox" name="" id=""></td>
                                      </tr>
                                      <tr>
                                        <td>1</td>
                                        <td>DE170068</td>
                                        <td>Hà Trọng Tấn</td>
                                        <td>Nam</td>
                                        <td>1/1/2007</td>
                                        <td>0123456789</td>
                                        <td><input type="checkbox" name="" id=""></td>
                                      </tr>
                                      <tr>
                                        <td>1</td>
                                        <td>DE170068</td>
                                        <td>Hà Trọng Tấn</td>
                                        <td>Nam</td>
                                        <td>1/1/2007</td>
                                        <td>0123456789</td>
                                        <td><input type="checkbox" name="" id=""></td>
                                      </tr>
                                    </tbody>
                                </table>
                                <div class="row d-flex flex-row-reverse">
                                    <a href="" class="acaAff-btn">Lưu</a>
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
    <div id="infoModal" class="modal fade" tabindex="-1" aria-labelledby="infoModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header background-primary text-color-white">
              <h4 class="modal-title">Thông tin tìm kiếm</h4>
              <button type="button" class="btn-close text-color-white" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
              <form action="">
                <div class="row mb-5">
                    <div class="col-6">
                      <label class="col-3 col-form-label modal__label"
                        >Khối</label
                      >
                      <div class="col-8 d-flex justify-content-around">
                        <select class="form-select" aria-label="Default select example">
                            <option value="10">Khối 10</option>
                            <option value="11">Khối 11</option>
                            <option value="12">Khối 12</option>
                          </select>
                      </div>
                    </div>
                    <div class="col-6">
                        <label class="col-3 col-form-label"
                          >Lớp</label
                        >
                        <div class="col-8 d-flex justify-content-around">
                          <select class="form-select" aria-label="Default select example">
                              <option value="A3">Lớp A3</option>
                              <option value="A4">Lớp A4</option>
                              <option value="A5">Lớp A5</option>
                            </select>
                        </div>
                      </div>

                </div>
  
                <div class="form-group row">
                  <div class="col-12">
                    <button type="submit" class="acaAff-btn">
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
    <script src="./assets/js/mycode.js"></script>
    </script>
  </body>
</html>
