<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="Website_Project_2.Confirm" %>--%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="Website_Project_2.Confirm" MasterPageFile="~/Site.Master" %>
<asp:Content ContentPlaceHolderID="mainPlaceHolder" runat="server">

<%--<!DOCTYPE html>

<html lang="zxx" class="no-js">
<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="colorlib">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Travel Experts</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
    <!--CSS============================================= -->
    <link rel="stylesheet" href="css/linearicons.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>--%>
    <!-- start banner Area -->
    <%--<section class="banner-area" id="home">
        <!-- Start Header Area -->
        <header class="default-header">
            <nav class="navbar navbar-expand-lg  navbar-light">
                <div class="container">
                    <a class="navbar-brand" href="Main.aspx">
                        <h2 class="text-white">Travel Experts</h2>
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="text-white lnr lnr-menu"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
                        <ul class="navbar-nav">
                            <li><a href="Main.aspx">Home</a></li>
                            <li><a href="#about">Account Details</a></li>
                            <li><a href="#secvice">Packages</a></li>
                            <li><a href="#gallery">Contact</a></li>
                            <!-- Dropdown -->
                            <li class="dropdown">
                                <a class="dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Accounts
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="Register.aspx">Register</a>
                                    <a class="dropdown-item" href="login.aspx">Log In</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>--%>
        <!-- End Header Area -->
 <%--   </section>--%>
    <main>
        <form id="form1" class="form-horizontal">
            <div class="main">
                <div class="container">
                    <div class="signup-content">
                        <%--<div class="signup-img">
                            <img src="img/slider2.jpg" alt=""/>
                        </div>--%>
                        <div class="signup-form">
                            <h2>Please Confirm Your Details</h2>
                            <div class="form-row">
                                <div class="col-sm-3">
                                    <label for="FirstName"><h5>First Name:</h5></label>
                                </div>
                                <div class="col-sm-9">
                                    <h4><asp:Label ID="lblFirstName" runat="server"></asp:Label></h4>
                                </div>
                                <div class="col-sm-3">
                                    <label for="lastName"><h5>Last Name:</h5></label>
                                </div>
                                <div class="col-sm-9">
                                    <h4><asp:Label ID="lblLastName" runat="server"></asp:Label></h4>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col-sm-3">
                                    <label for="Address"><h5>Address:</h5></label>
                                </div>
                                <div class="col-sm-9">
                                    <h4><asp:Label ID="lblAddress" runat="server"></asp:Label></h4>
                                </div>
                                <div class="col-sm-3">
                                    <label for="City"><h5>City:</h5></label>
                                </div>
                                <div class="col-sm-9">
                                    <h4><asp:Label ID="lblCity" runat="server"></asp:Label></h4>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col-sm-3">
                                    <label for="Province"><h5>Province:</h5></label>
                                </div>
                                <div class="col-sm-9">
                                    <h4><asp:Label ID="lblProvince" runat="server"></asp:Label></h4>
                                </div>
                                <div class="col-sm-3">
                                    <label for="Country"><h5>Country:</h5></label>
                                </div>
                                <div class="col-sm-9">
                                    <h4><asp:Label ID="lblCountry" runat="server"></asp:Label></h4>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col-sm-3">
                                    <label for="PostalCode"><h5>Postal Code:</h5></label>
                                </div>
                                <div class="col-sm-9">
                                    <h4><asp:Label ID="lblPostal" runat="server"></asp:Label></h4>
                                </div>
                            </div>


                            <div class="form-row">
                                <div class="col-sm-3">
                                    <label for="HomePhone"><h5>Home Phone:</h5></label>
                                </div>
                                <div class="col-sm-9">
                                    <h4><asp:Label ID="lblHome" runat="server"></asp:Label></h4>
                                </div>
                                <div class="col-sm-3">
                                    <label for="BusinessPhone"><h5>Business Phone:</h5></label>
                                </div>
                                <div class="col-sm-9">
                                    <h4><asp:Label ID="lblBusiness" runat="server"></asp:Label></h4>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col-sm-3">
                                    <label for="Email"><h5>Email:</h5></label>
                                </div>
                                <div class="col-sm-9">
                                    <h4><asp:Label ID="lblEmail" runat="server"></asp:Label></h4>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col-sm-3">
                                    <label for="Username"><h5>Username:</h5></label>
                                </div>
                                <div class="col-sm-9">
                                    <h4><asp:Label ID="lblUsername" runat="server"></asp:Label></h4>
                                </div>
                                <%--<div class="col-sm-3">
                                    <label for="Password"><h5>Password:</h5></label>
                                </div>
                                <div class="col-sm-9">
                                    <h4><asp:Label ID="lblPass" runat="server"></asp:Label></h4>
                                </div>--%>
                            </div>

                            <div class="form-row">
                                <div class="col-sm-3">
                                    <asp:Button ID="btnConfirm" runat="server" Text="Confirm Request"
                                        CssClass="btn btn-primary" OnClick="btnConfirm_Click" />
                                </div>
                                <div class="col-sm-9">
                                    <asp:Button ID="btnModify" runat="server" Text="Modify Request"
                                        CssClass="btn btn-primary" PostBackUrl="~/Register.aspx" OnClick="btnModify_Click" />
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group">
                                    <div class="col-sm-9">
                                        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </main>


    <!-- start footer Area -->
   <%-- <footer class="footer-area section-gap">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6>About Us</h6>
                        <p>
                            Travel Experts.
                        </p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <p class="footer-text">
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                            All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i>by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        </p>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                </div>
                <div class="col-lg-5  col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6>Newsletter</h6>
                        <p>Stay update with our latest</p>
                        <div class="" id="mc_embed_signup">

                            <form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">

                                <div class="d-flex flex-row">

                                    <input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '" required="" type="email">


                                    <button class="click-btn btn btn-default"><img src="Images/email.png" /></button></button>
                                    <div style="position: absolute; left: -5000px;">
                                        <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
                                    </div>

                                    <!-- <div class="col-lg-4 col-md-4">
												<button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
											</div>  -->
                                </div>
                                <div class="info"></div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6 social-widget">
                    <div class="single-footer-widget">
                        <h6>Follow Us</h6>
                        <p>Let us be social</p>
                        <div class="footer-social d-flex align-items-center">
                            <a href="facebook.com"><img src="Images/facebook.png" /></a>
                            <a href="twitter.com"><img src="Images/twitter.png" /></a>
                            <a href="instagram.com"><img src="Images/gram.png" /></a>
                            <a href="youtube.com"><img src="Images/tube.png" /></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>--%>
    <!-- End footer Area -->

   <%-- <script src="js/vendor/jquery-2.2.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/slick.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/main.js"></script>

</body>
</html>--%>
</asp:Content>