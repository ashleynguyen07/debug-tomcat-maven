<%-- 
    Document   : academicAffairLockMarkReport
    Created on : Oct 1, 2023, 9:16:40 PM
    Author     : flywt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="./includes/headerAcademicAffair.jsp" %>
<div class="app-container mt-0 acaAff-container">
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
                    <div class="row box-lock-time">
                        <div class="box-lock-time__header">
                            Cài đặt khóa điền điểm của giáo viên
                        </div>
                        <div class="box-lock-time__body">
                            <div class="row d-flex flex-row mt-4">
                                <div class="acaAff-input-ctrl d-flex align-middle me-4">
                                  <label for="">Thời gian từ:</label>
                                  <input type="date">
                                </div>
                                <div class="acaAff-input-ctrl d-flex align-middle me-4">
                                    <label for="">Đến:</label>
                                    <input type="date">
                                  </div>
                              </div>
                              <div class="row acaAff-files d-flex flex-row-reverse m-4">
                                <a class="acaAff-btn btn-error">KHÓA</a>
                              </div>
                        </div>
                    </div>

                              <!-- TABS navigation -->
                    <div class="row mt-5">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item" role="presentation">
                              <button class="nav-link active" id="10A3-tab" data-bs-toggle="tab" data-bs-target="#A3" type="button" role="tab" aria-controls="10A3" aria-selected="true">10A3</button>
                            </li>
                            <li class="nav-item" role="presentation">
                              <button class="nav-link" id="10A4-tab" data-bs-toggle="tab" data-bs-target="#A4" type="button" role="tab" aria-controls="10A4" aria-selected="false">10A4</button>
                            </li>
                            <li class="nav-item" role="presentation">
                              <button class="nav-link" id="10A5-tab" data-bs-toggle="tab" data-bs-target="#A5" type="button" role="tab" aria-controls="contact" aria-selected="false">10A5</button>
                            </li>
                          </ul>
                          <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="A3" role="tabpanel" aria-labelledby="10A3-tab">
                                <table class="table table-bordered table-striped">
                                    <thead class="background-primary">
                                        <tr class="text-color-white">
                                          <th>STT</th>
                                          <th>Mã học sinh</th>
                                          <th>Họ và Tên</th>
                                          <th>Giới tính</th>
                                          <th>Hạnh kiểm</th>
                                          <th>HK1</th>
                                          <th>HK2</th>
                                          <th>TBM HK</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td>1</td>
                                          <td>DE170068</td>
                                          <td>Hà Trọng Tấn</td>
                                          <td>Nam</td>
                                          <td>0</td>
                                          <td>0</td>
                                          <td>0</td>
                                          <td>0</td>
                                        </tr>
                                        <tr>
                                          <td>1</td>
                                          <td>DE170068</td>
                                          <td>Hà Trọng Tấn</td>
                                          <td>Nam</td>
                                          <td>0</td>
                                          <td>0</td>
                                          <td>0</td>
                                          <td>0</td>
                                        </tr>
                                      </tbody>
                                  </table>
                            </div>
                            <div class="tab-pane fade" id="A4" role="tabpanel" aria-labelledby="10A4-tab">
                                <table class="table table-bordered table-striped">
                                    <thead class="background-primary">
                                        <tr class="text-color-white">
                                          <th>STT</th>
                                          <th>Mã học sinh</th>
                                          <th>Họ và Tên</th>
                                          <th>Giới tính</th>
                                          <th>Hạnh kiểm</th>
                                          <th>HK1</th>
                                          <th>HK2</th>
                                          <th>TBM HK</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td>2</td>
                                          <td>DE170068</td>
                                          <td>Hà Trọng Tấn</td>
                                          <td>Nam</td>
                                          <td>0</td>
                                          <td>0</td>
                                          <td>0</td>
                                          <td>0</td>
                                        </tr>
                                        <tr>
                                          <td>2</td>
                                          <td>DE170068</td>
                                          <td>Hà Trọng Tấn</td>
                                          <td>Nam</td>
                                          <td>0</td>
                                          <td>0</td>
                                          <td>0</td>
                                          <td>0</td>
                                        </tr>
                                      </tbody>
                                  </table>
                            </div>
                            <div class="tab-pane fade" id="A5" role="tabpanel" aria-labelledby="10A5-tab">
                                <table class="table table-bordered table-striped">
                                    <thead class="background-primary">
                                        <tr class="text-color-white">
                                          <th>STT</th>
                                          <th>Mã học sinh</th>
                                          <th>Họ và Tên</th>
                                          <th>Giới tính</th>
                                          <th>Hạnh kiểm</th>
                                          <th>HK1</th>
                                          <th>HK2</th>
                                          <th>TBM HK</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td>3</td>
                                          <td>DE170068</td>
                                          <td>Hà Trọng Tấn</td>
                                          <td>Nam</td>
                                          <td>0</td>
                                          <td>0</td>
                                          <td>0</td>
                                          <td>0</td>
                                        </tr>
                                        <tr>
                                          <td>3</td>
                                          <td>DE170068</td>
                                          <td>Hà Trọng Tấn</td>
                                          <td>Nam</td>
                                          <td>0</td>
                                          <td>0</td>
                                          <td>0</td>
                                          <td>0</td>
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

    <%@ include file="./includes/linkJS.jsp" %>
    <script src="./assets/js/mycode.js"></script>
    </script>
  </body>
</html>

