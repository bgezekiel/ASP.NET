<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TripDetails.aspx.cs" Inherits="Website_Project_2.TripDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

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
    <!--
			CSS
			============================================= -->
    <link rel="stylesheet" href="css/linearicons.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/main.css">
    <link href="Scripts/TripView.css" rel="stylesheet" />

            <!-- Start Header Area -->
        <header class="default-header">
            <nav class=" navsetting navbar navbar-expand-lg  navbar-light">
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
        </header>
        <!-- End Header Area -->
</head>
<body style="background: url(Images/clouds.jpg);
    background-size: cover;
    background-repeat:no-repeat;">
        <form class="divform" id="form1" runat="server">
            <div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="BookingsLabel" runat="server" CssClass="labeltext" Text="Trip Bookings"/>
                <asp:Label ID="LblHidden" runat="server" CssClass="labeltext" style="margin-left:18%;margin-right:25%;" Text="Please log in to view your bookings!" ForeColor="White" Visible="False"/>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="BookingDestinations" DataTextField="BookingNo" DataValueField="BookingId">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="BookingDestinations" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetNewBookings" TypeName="Website_Project_2.App_Code.PackageDB">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="-1" Name="custid" SessionField="LoggedInId" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
                <br />
                <asp:Label ID="DetailsLabel" runat="server" CssClass="labeltext" Text="Booking Details"/>
                <br />
                <asp:GridView ID="GridView2" runat="server" Height="162px" Width="728px" DataSourceID="BookingDetailsSource" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="5" AutoGenerateColumns="False" OnDataBound="GridLoaded">
                    <Columns>
                        <asp:BoundField DataField="BookingDetailId" HeaderText="BookingDetailId" SortExpression="BookingDetailId" />
                        <asp:BoundField DataField="ItineraryNo" HeaderText="ItineraryNo" SortExpression="ItineraryNo" />
                        <asp:BoundField DataField="TripStart" DataFormatString="{0:d}" HeaderText="TripStart" SortExpression="TripStart" />
                        <asp:BoundField DataField="TripEnd" DataFormatString="{0:d}" HeaderText="TripEnd" SortExpression="TripEnd" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                        <asp:BoundField DataField="BasePrice" DataFormatString="{0:c}" HeaderText="BasePrice" SortExpression="BasePrice" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:ObjectDataSource ID="BookingDetailsSource" runat="server" SelectMethod="GetBookingDetails" TypeName="Website_Project_2.App_Code.PackageDB" OldValuesParameterFormatString="original_{0}">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" DefaultValue="-1" Name="packageid" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
                &nbsp;<asp:Label class="labeltext" ID="Label1" runat="server" Text="Total Cost : "></asp:Label>
                <asp:TextBox ID="txtTotal" runat="server" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <asp:Label class="labeltext" ID="Label2" runat="server" Text="Payment Received : "></asp:Label>
                <asp:TextBox ID="txtPaymentReceieved" runat="server" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                <asp:Label class="labeltext" ID="Label3" runat="server" Text="Payment Outstanding : "></asp:Label>
                <asp:TextBox ID="txtPaymentOutstanding" runat="server" ReadOnly="True"></asp:TextBox>
                <br />
            </div>
        </form>
</body>
</html>
