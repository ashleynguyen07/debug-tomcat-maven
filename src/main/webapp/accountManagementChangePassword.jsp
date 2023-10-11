<%-- 
    Document   : accountManagementChangePassword
    Created on : Oct 3, 2023, 11:49:32 PM
    Author     : htk09
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="./includes/headerAccountManagement.jsp" %>
<!DOCTYPE html>
<div class="app-container mt-0">
        <div class="grid d-grid">
          <div class="section-m1">
            <div class="row">
              <div class="col">
                <div class="box-section">
                  <div class="app-home__heading">
                    <div class="header-name">
                      Thay đổi mật khẩu
                    </div>
                  </div>
                  <div class="app-home__body">
                    <div class="info-container">
                        <div class="m-5">
                            <div class="col-3 m-2">
                        <form class="change-password-container">
                          <div class="mb-4">
                            <input type="email" class="form-control" id="currentPassword" aria-describedby="emailHelp" placeholder="Mật khẩu hiện tại">
                          </div>
                          <div class="mb-4">
                            <input type="password" class="form-control" id="newPassword" placeholder="Mật khẩu mới">
                          </div>
                          <div class="mb-4">
                            <input type="password" class="form-control" id="verifyPassword" placeholder="Nhập lại mật khẩu">
                          </div>
                          <div class="change-password-btn">
                            <button class="btn btn-me change-btn">
                              <i class="fa-solid fa-key ms-2 me-3"></i>
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
    </div>
        <%@ include file="./includes/linkJS.jsp" %>
        <script src="./assets/js/mycode.js"></script>
    </script>
</body>
</html>
