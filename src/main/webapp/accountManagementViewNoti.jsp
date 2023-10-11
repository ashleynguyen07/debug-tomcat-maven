<%-- 
    Document   : accountManagementViewNoti
    Created on : Oct 3, 2023, 1:26:55 PM
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
                                            Danh sách thông báo
                                            <div class="search-btn-contain"     >
                                                <a
                                                    role="button"
                                                    class="btn btn-block nav-link"
                                                    href="accountManagementCRUDNoti.jsp"
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
                                                            <th>Nội Dung</th>
                                                            <th>Sửa</th>
                                                            <th>Xóa</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="align-middle">1</td>
                                                            <td>
                                                                <div class="notificaiton-item p-4" style="text-align: left">
                                                                <div class="notifi-heading">
                                                                  <div class="notifi-header fs-1">Thông báo lịch thi cuối kỳ</div>
                                                                </div>
                                                                    <div class="ps-3 pt-2 notifi-short-content fs-3" style="font-weight: 400">Chuẩn bị thi rồi các em chăm chỉ học nhé</div>
                                                                <div class="notifi-date fs-3" style="text-align: right; font-weight: 400">17/7/2023</div>
                                                              </div>
                                                            </td>
                                                            <td class="align-middle">
                                                                <a
                                                                role="button"
                                                                class="btn btn-block nav-link"
                                                                data-bs-toggle="modal" 
                                                                data-bs-target="#ChangeNotiModal"
                                                                ><i class="fa-solid fa-square-pen"></i></a>
                                                            </td>
                                                            <td class="align-middle"><i class="fa-solid fa-x"></i></td>
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
        <div id="ChangeNotiModal" class="modal fade" tabindex="-1" aria-labelledby="infoModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <!-- Modal content-->
                      <div class="modal-content">
                        <div class="modal-header background-primary text-color-white">
                          <h4 class="modal-title">Thông tin tìm kiếm</h4>
                          <button type="button" class="btn-close text-color-white" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body p-4 pt-0">
                          <form action="">
                            <div class="row fs-4 p-3">
                                <div class="col-2 p-3" style="border-right: solid 1px">Tiêu Đề</div>
                                <input class="col w-100 p-3 border-0" type="text" style="outline: none" value="Thông báo lịch thi cuối kỳ"/>
                            </div>
                            <textarea class=" w-100 p-3 fs-4" type="text"style="outline: none; height: 300px; border-right: 0; border-left: 0">Chuẩn bị thi rồi các em chăm chỉ học nhé
                            </textarea>
                       
              
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
