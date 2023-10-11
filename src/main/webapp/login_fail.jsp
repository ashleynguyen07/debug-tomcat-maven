<%-- 
    Document   : login_fail
    Created on : Sep 22, 2023, 10:02:28 AM
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
            <div class="row" style="z-index: -1">
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
                    <form action="#">

                        <div class="text-danger text-center mb-3">
                            <h5>Tên đăng nhập hoặc mật khẩu sai</h5>
                        </div>

                        <div class="input-group mb-3 m-lg-4">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="Tên đăng nhập"
                                />
                        </div>
                        <div class="input-group mb-3 m-lg-4">
                            <input
                                type="password"
                                value="FakePSW"
                                class="form-control"
                                id="myInput"
                                placeholder="Mật khẩu"
                                />
                        </div>
                        <div class="form-check col-12 col-lg-5 float-end">
                            <input
                                class="form-check-input"
                                type="checkbox"
                                onclick="myFunction()"

                                />
                            <label
                                class="form-check-lab333el bs-light"
                                style="color: white"
                                >
                                Hiển thị mật khẩu
                            </label>
                        </div>
                        <br />
                        <div class="d-grid m-3">
                            <button type="button" class="btn btn-primary">
                                Đăng nhập
                            </button>
                        </div>
                        <div class="text-center">
                            <button
                                type="button"
                                class="btn btn-block text-white"
                                data-bs-toggle="modal"
                                data-bs-target="#myModal"
                                >
                                Quên mật khẩu?
                            </button>
                        </div>
                    </form>
                </div>
                <div class="modal" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <!-- Modal Header -->
                            <div class="modal-header">
                                <div class="row">
                                    <h4 class="modal-title col-lg-8">Nhập thông tin</h4>
                                    <p class="text-danger">Mật khẩu mới sẽ được gửi vào email của bạn</p>
                                </div>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body text-center">
                                <div class="row">
                                    <dt class="col-12 col-lg-4">
                                        <h6>Nhập gmail</h6>

                                    </dt>
                                    <dd class="col-12 col-lg-6">
                                        <input type="email" name="" id="" placeholder="Gmail"required>
                                    </dd>
                                </div>
                            </div>

                            <!-- Modal footer -->
                            <div class="modal-footer">

                                <button
                                    type="button"
                                    class="btn btn-success"
                                    data-bs-dismiss="modal"
                                    >
                                    Gửi
                                </button>
                                <button
                                    type="button"
                                    class="btn btn-danger"
                                    data-bs-dismiss="modal"
                                    >
                                    Hủy
                                </button>
                            </div>
                        </div>
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
            <script>
                var myModal = new bootstrap.Modal(
                        document.getElementById("myModal"),
                        options
                        );
            </script>
            <script
                src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"
            ></script>
            <script
                src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
                crossorigin="anonymous"
            ></script>
            <script
                src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
                crossorigin="anonymous"
            ></script>
    </body>
</html>
