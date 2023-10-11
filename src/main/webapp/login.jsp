<%-- Document : login Created on : Sep 22, 2023, 10:02:14 AM Author : htk09 --%>
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
                    <form action="login" method="Post">
                        
                        <div class="text-danger text-center mb-3">
                            <h5>${msg}</h5>
                        </div>
                        <div class="input-group mb-3 m-lg-4">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="Tên đăng nhập"
                                name="email"
                            />
                        </div>
                        <div class="input-group mb-3 m-lg-4">
                            <input
                                type="password"
                                class="form-control"
                                id="myInput"
                                placeholder="Mật khẩu"
                                name="password"
                            />
                        </div>
                        <div class="form-check col-12 col-lg-5 float-end">
                            <input
                                class="form-check-input"
                                type="checkbox"
                                onclick="myFunction()"
                                
                                
                            />
                            <label
                                class="form-check-label bs-light"
                                style="color: white"
                            >
                                Hiển thị mật khẩu
                            </label>
                        </div>
                        <br />
                        <div class="d-grid m-3">
                            <button type="submit" class="btn btn-primary">
                                Đăng nhập
                            </button>
                        </div>
                        <div class="text-center pb-3">
                            <a href="sendEmail.jsp">Quên mật khẩu?</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script>
            function myFunction() {
                var x = document.getElementById("myInput");
                if (x.type === "password") {
                    x.type = "text";
                } else {
                    x.type = "password";
                }
            }
        </script>
    </body>
</html>
