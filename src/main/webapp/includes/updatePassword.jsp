<%-- 
    Document   : updatePassword
    Created on : Oct 1, 2023, 8:07:20 AM
    Author     : tramy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="tab-pane">
                      <div class="col-3 m-5">
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
