<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Website_Project_2.Default" MasterPageFile="~/Site.Master" %>
    <%--
  Class: OOSD threaded project 2
        This is the register form page that allows the user to register. 
        All labels, div classes and buttons are named accordingly and is self explainatory. 
        No other comments are provided throughout this page.
  Author: Mark Wessley
  CoAuthor: Brandon Ezekiel
  Date: Feb 2019
  Commentor: Eugenia Chiu   
        --%>
<asp:Content ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="* means that the field is required" CssClass="text-danger" />
    <%--<h1>Customer Registration</h1>

    <h3>Contact information</h3>--%>
    <main >
        <form id="form1" class="form-horizontal">
            <div class="main">
                <div class="container">
                    <h1>Customer Registration</h1>

                    <div class="signup-content">
                        <div class="signup-form">
                            <h2>Enter Your Information!</h2>
                            <br />
                            <!--First Name string-->
                            <div class="form-row">
                                <label class="col-sm-3 control-label">
                                    <h5>First Name</h5>
                                </label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                        ControlToValidate="txtFirstName" Text="Please Enter First Name." CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />
                            <!--Last Name string-->
                            <div class="form-row">
                                <label class="col-sm-3 control-label">
                                    <h5>Last Name</h5>
                                </label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                        ControlToValidate="txtLastName" Text="Please Enter Last Name." CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />
                            <!--Address string-->
                            <div class="form-row">
                                <label class="col-sm-3 control-label">
                                    <h5>Address</h5>
                                </label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                        ControlToValidate="txtAddress" Text="Please Enter an Address." CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <!--City string-->
                            <br />
                            <div class="form-row">
                                <label class="col-sm-3 control-label">
                                    <h5>City</h5>
                                </label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                        ControlToValidate="txtCity" Text="Please Enter a City." CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <!--Province-->
                            <br />
                            <div class="form-row">
                                <label class="col-sm-3 control-label">
                                    <h5>Province</h5>
                                </label>
                                <div class="col-sm-3">
                                    <asp:DropDownList ID="ddlProvince" runat="server" CssClass="form-control">
                                        <asp:ListItem>AB</asp:ListItem>
                                        <asp:ListItem>BC</asp:ListItem>
                                        <asp:ListItem>MB</asp:ListItem>
                                        <asp:ListItem>NB</asp:ListItem>
                                        <asp:ListItem>NL</asp:ListItem>
                                        <asp:ListItem>NS</asp:ListItem>
                                        <asp:ListItem>ON</asp:ListItem>
                                        <asp:ListItem>PE</asp:ListItem>
                                        <asp:ListItem>QC</asp:ListItem>
                                        <asp:ListItem>SK</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <!--Postal Code-->
                            <br />
                            <div class="form-row">
                                <label class="col-sm-3 control-label">
                                    <h5>Postal Code</h5>
                                </label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="txtPostalCode" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                        ControlToValidate="txtPostalCode" Text="Please Enter a Potal Code." CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                                        ControlToValidate="txtPostalCode" Text="Must be valid postal code"
                                        Display="Dynamic" CssClass="text-danger"
                                        ValidationExpression="^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <!--Country string-->
                            <br />
                            <div class="form-row">
                                <label class="col-sm-3 control-label">
                                    <h5>Country</h5>
                                </label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                        ControlToValidate="txtCountry" Text="Please Enter a Country." CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <!--email adress-->
                            <br />
                            <div class="form-row">
                                <label class="col-sm-3 control-label">
                                    <h5>Email address</h5>
                                </label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"
                                        CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                        ControlToValidate="txtEmail" Text="Please Enter an Email." CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                        ControlToValidate="txtEmail" Text="Must be valid email address. email@email.com"
                                        Display="Dynamic" CssClass="text-danger"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <!--Phone Number-->
                            <br />
                            <div class="form-row">
                                <label class="col-sm-3 control-label">
                                    <h5>Telephone number</h5>
                                </label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"
                                        CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                                        ControlToValidate="txtPhone" Text="Please Enter a Home Phone." CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                                        ControlToValidate="txtPhone" Text="Use this format: 999-999-9999"
                                        Display="Dynamic" CssClass="text-danger"
                                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <br />
                            <!--Busines Number-->
                            <div class="form-row">
                                <label class="col-sm-3 control-label">
                                    <h5>Business Number</h5>
                                </label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="txtBusinessPhone" runat="server" TextMode="Phone"
                                        CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-sm-5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                        ControlToValidate="txtBusinessPhone" Text="Please Enter a Home Phone." CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                        ControlToValidate="txtBusinessPhone" Text="Use this format: 999-999-9999"
                                        Display="Dynamic" CssClass="text-danger"
                                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <br />
                            <!--User Login -->
                            <div class="form-row">
                                <label class="col-sm-3 control-label">
                                    <h5>Username</h5>
                                </label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="txtUsername" runat="server"
                                        CssClass="form-control"></asp:TextBox>
                                </div>

                                <div class="col-sm-5">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                                        ControlToValidate="txtUsername" Text="Please enter a username." CssClass="text-danger" Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <br />
                            <div class="form-row">
                                <label class="col-sm-3 control-label">
                                    <h5>Password</h5>
                                </label>
                                <div class="col-sm-3">
                                    <asp:TextBox ID="txtPass" runat="server"
                                        CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <!-- Button -->
                            <div class="form-row">
                                <div class="col-sm-3">
                                    <asp:Button ID="Button1" runat="server" Text="Submit"
                                        CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                                </div>
                                <div class="col-sm-9">
                                    <asp:Button ID="Button2" runat="server" Text="Clear"
                                        CssClass="btn btn-primary" OnClick="btnClear_Click" CausesValidation="false" />
                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </main>
  <%--  <script>
        
        
            var x = document.querySelectorAll(".form-control");

        for (i = 0; i < x.length; i++)
            {
                x[i].value = "";
            }
        
        
    </script>--%>
</asp:Content>
