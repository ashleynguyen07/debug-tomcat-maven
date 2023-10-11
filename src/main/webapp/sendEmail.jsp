<%-- 
    Document   : sendEmail
    Created on : Oct 6, 2023, 12:26:52 PM
    Author     : htk09
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
            integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
            crossorigin="anonymous"
        />
        <link
            href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
            rel="stylesheet"
        />

        <link rel="stylesheet" href="assets/css/styleLogin.css" />
        <title>Ms</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div
                    class="form_background col-lg-3 m-auto position-absolute top-50 start-50 translate-middle"
                >
                    <div class="logo">
                        <img
                            src="assets/imgs/logoJPG-removebg-preview.png"
                            alt=""
                        />
                        <h3>SSMS</h3>
                    </div>
                    <form action="send-email" method="Post">
                        <div class="text-white mb-3 m-lg-4">
                            <h7>
                                Vui lòng nhập địa chỉ email của bạn để được cấp
                                lại mật khẩu
                            </h7>
                        </div>
                        <div class="input-group mb-3 m-lg-4">
                            <input
                                type="email"
                                class="form-control"
                                placeholder="Email@example.com"
                                name="email"
                                
                            />
                        </div>
                        <div class="text-white mb-3 m-lg-4">
                            <h7 class="text-center text-danger">
                                ${msg}
                            </h7>
                        </div>
                        <br />
                        <div class="d-grid mb-3">
                            <button type="submit" class="btn btn-primary">
                                Gửi
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
