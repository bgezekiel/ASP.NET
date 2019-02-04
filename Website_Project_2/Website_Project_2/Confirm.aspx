<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="Website_Project_2.Confirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Chapter 9: Reservations</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <script src="Scripts/jquery-2.2.4.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="Content/site.css" rel="stylesheet" />
        <link href="Scripts/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
        <main>
            <form id="form1" runat="server" class="form-horizontal">
                
                <h1>Registration Confirmation</h1>
                <h3>Please confirm your reservation request</h3>
                <div class="row">
                    <div class="col-sm-3"><label>First name</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3"><label>Last name</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblLastName" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3"><label>Address</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblAddress" runat="server"></asp:Label>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-sm-3"><label>City</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblCity" runat="server"></asp:Label>
                    </div>
                </div> 
                 <div class="row">
                    <div class="col-sm-3"><label>Province</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblProvince" runat="server"></asp:Label>
                    </div>
                </div> 
                 <div class="row">
                    <div class="col-sm-3"><label>Postal</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblPostal" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3"><label>Country</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblCountry" runat="server"></asp:Label>
                    </div>
                </div>
                 <div class="row">
                    <div class="col-sm-3"><label>Home Phone</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblHome" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3"><label>Business Phone</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblBusiness" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3"><label>Email</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblEmail" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3"><label>Username</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblUsername" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3"><label>Password</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblPassword" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3"><label>Preferred method</label></div>
                    <div class="col-sm-9">
                        <asp:Label ID="lblPreferredMethod" runat="server"></asp:Label>
                    </div>
                </div>


                <!-- buttons -->
                 <div class="form-group">
                    <div class="col-sm-12">
                        <asp:Button ID="btnConfirm" runat="server" Text="Confirm Request" 
                            CssClass="btn btn-primary" OnClick="btnConfirm_Click" />
                        <asp:Button ID="btnModify" runat="server" Text="Modify Request" 
                            CssClass="btn btn-primary" PostBackUrl="~/Register.aspx" OnClick="btnModify_Click" />
                    </div>
                </div>

                <!-- message label -->
                <div class="form-group">
                    <div class="col-sm-12">
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-info"></asp:Label>
                    </div>
                </div>

            </form>
        </main>
    </body>
</html>
