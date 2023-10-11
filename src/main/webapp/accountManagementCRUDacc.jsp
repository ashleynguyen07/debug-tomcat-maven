<%-- 
    Document   : accountManagementNotification
    Created on : Oct 3, 2023, 11:18:28 AM
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
            <%@ include file="./includes/headerAccountManagement.jsp" %>

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
                                            Danh sách học sinh
                                            <div class="search-btn-contain"     >
                                                <a
                                                    role="button"
                                                    class="btn btn-block nav-link"
                                                    data-bs-toggle="modal" 
                                                    data-bs-target="#AddAccountModal"
                                                    ><i class="fa-solid fa-square-plus"></i></a>
                                            </div>
                                        </div>
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
                                                            <th>Ngày sinh</th>
                                                            <th>Số điện thoại</th>
                                                            <th>Tài khoản</th>
                                                            <th>Mật Khẩu</th>
                                                            <th>Sửa</th>
                                                            <th>Xóa</th>
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
                                                            <td>Student1@gmai.com</td>
                                                            <td>Student123</td>
                                                            <td>
                                                                <a
                                                                role="button"
                                                                class="btn btn-block nav-link"
                                                                data-bs-toggle="modal" 
                                                                data-bs-target="#ChangeAccountModal"
                                                                ><i class="fa-solid fa-square-pen"></i></a>
                                                            </td>
                                                            <td><i class="fa-solid fa-x"></i></td>
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
        
        <!--Modal-->
        <div id="ChangeAccountModal" class="modal fade" tabindex="-1" aria-labelledby="infoModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <!-- Modal content-->
                      <div class="modal-content">
                        <div class="modal-header background-primary text-color-white">
                          <h4 class="modal-title">Chỉnh sửa thông tin tài khoản</h4>
                          <button type="button" class="btn-close text-color-white" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body p-4">
                          <form action="">
                            <div class="row mb-5">
                                <h3 class="col-3 mt-1 align-middle">Mã học sinh</h3>
                                <input class="col fs-3" type="text" value="DE170068" />
                            </div>
                            <div class="row mb-5">
                                <h3 class="col-3 mt-1 align-middle">Họ và Tên</h3>
                                <input class="col fs-3" type="text" value="Hà Trọng Tấn" />
                            </div>
                            <div class="row mb-5">
                                <h3 class="col-3 mt-1 align-middle">Giới Tính</h3>
                                <input class="col fs-3" type="text" value="Nam" />
                            </div>
                            <div class="row mb-5">
                                <h3 class="col-3 mt-1 align-middle">Ngày sinh</h3>
                                <input class="col fs-3" type="date" value="2007-01-31" />
                            </div>
                            <div class="row mb-5">
                                <h3 class="col-3 mt-1 align-middle" style="font-size: 16px">Số Điện Thoại</h3>
                                <input class="col fs-3" type="tel" value="0123456789" />
                            </div>
                             <div class="row mb-5">
                                <h3 class="col-3 mt-1 align-middle">Tài Khoản</h3>
                                <input class="col fs-3" type="email" value="Student1@gmai.com" />
                            </div>
                            <div class="row mb-4">
                                <h3 class="col-3 mt-1 align-middle">Mật Khẩu</h3>
                                <input class="col fs-3" type="text" value="Student123" />
                            </div>
              
                            <div class="form-group row">
                                <div class="col-10"></div>
                                <div class="col">
                                <button type="submit" class="btn btn-outline-primary fs-4">
                                  Submit
                                </button>
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
        
        
        <div id="AddAccountModal" class="modal fade" tabindex="-1" aria-labelledby="infoModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <!-- Modal content-->
                      <div class="modal-content">
                        <div class="modal-header background-primary text-color-white">
                          <h4 class="modal-title">Tạo tài khoản</h4>
                          <button type="button" class="btn-close text-color-white" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body p-4">
                          <form action="">
                            <div class="row mb-5">
                                <h3 class="col-3 mt-1 align-middle">Mã học sinh</h3>
                                <input class="col fs-3" type="text"  />
                            </div>
                            <div class="row mb-5">
                                <h3 class="col-3 mt-1 align-middle">Họ và Tên</h3>
                                <input class="col fs-3" type="text"  />
                            </div>
                            <div class="row mb-5">
                                <h3 class="col-3 mt-1 align-middle">Giới Tính</h3>
                                <input class="col fs-3" type="text" />
                            </div>
                            <div class="row mb-5">
                                <h3 class="col-3 mt-1 align-middle">Ngày sinh</h3>
                                <input class="col fs-3" type="date"  />
                            </div>
                            <div class="row mb-5">
                                <h3 class="col-3 mt-1 align-middle" style="font-size: 16px">Số Điện Thoại</h3>
                                <input class="col fs-3" type="tel" />
                            </div>
                             <div class="row mb-5">
                                <h3 class="col-3 mt-1 align-middle">Tài Khoản</h3>
                                <input class="col fs-3" type="email"/>
                            </div>
                            <div class="row mb-4">
                                <h3 class="col-3 mt-1 align-middle">Mật Khẩu</h3>
                                <input class="col fs-3" type="text"/>
                            </div>
              
                            <div class="form-group row">
                                <div class="col-10"></div>
                                <div class="col">
                                <button type="submit" class="btn btn-outline-primary fs-4">
                                  Submit
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
