<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Website_Project_2.login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Travel Experts Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/bootstraplogin.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesomelogin.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/login-icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/animatelogin.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/mainlogin.css">
    <!--===============================================================================================-->

</head>
<body>

    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <form runat="server" class="login100-form validate-form">
                    <span class="login100-form-title p-b-34">Account Login
                    </span>

                    <div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20" data-validate="Type user name">
                        <asp:TextBox runat="server" ID="FieldUsername" CssClass="input100" type="text" placeholder="Username" />
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20" data-validate="Type password">
                        <asp:TextBox runat="server" ID="FieldPassword" CssClass="input100" type="password" placeholder="Password" />
                        <span class="focus-input100"></span>
                    </div>

                    <div class="container-login100-form-btn">
                        <asp:Button runat="server" CssClass="login100-form-btn" ID="BtnSubmit" Text="Log In" OnClick="Login" />
                    </div>

                    <div class="w-full text-center p-t-27 p-b-239">
                        <span class="txt1">Forgot
                        </span>

                        <a href="#" class="txt2">User name / password?
                        </a>
                        <br />
                        <br />
                        <asp:Label ID="LblIncorrect" runat="server" CssClass="txt3" Style="color: red;" Text="Incorrect username or password. Please try again." Visible="false" />

                        <div class="w-full text-center">
                            <br />
                            <br />
                            <div class="container-login100-form-btn">
                                <a class="login100-form-btn" href="Register.aspx">Register</a> 
                                <asp:Button runat="server" CssClass="login100-form-btn" ID="btnSignup" Text="Sign Up" OnClick="btnSignup_Click" CausesValidation="False" PostBackUrl="~/Register.aspx" />
                            </div>

                        </div>
                    </div>
                </form>

                <div class="login100-more" style="background-image: url('images/plane.jpg');"></div>
            </div>
        </div>
    </div>



    <div id="dropDownSelect1"></div>

    <!--===============================================================================================-->
    <script src="js/jquerylogin-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="js/animsitionlogin.min.js"></script>
    <!--===============================================================================================-->
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <script>
        $(".selection-2").select2({
            minimumResultsForSearch: 20,
            dropdownParent: $('#dropDownSelect1')
        });
    </script>
    <!--===============================================================================================-->
    <script src="js/moment.min.js"></script>
    <script src="js//daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="js/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="js/mainlogin.js"></script>

</body>
</html>
