    <%--
  Class: OOSD threaded project 2
        This is the confimation form page that allows the user to confirm their data before pressing
        the confirm button and saving info to the database. All labels, buttons, and div classes
        are named accordingly and is self explainatory. 
        No other comments are provided throughout this page.
  Author: Mark Wessley
  CoAuthor: Brandon Ezekiel
  Date: Feb 2019
  Commentor: Eugenia Chiu   
        --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="Website_Project_2.Confirm" MasterPageFile="~/Site.Master" %>
<asp:Content ContentPlaceHolderID="mainPlaceHolder" runat="server">

    <main>
        <form id="form1" class="form-horizontal">
            <div class="main">
                <div class="container">
                    <div class="signup-content">
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
</asp:Content>