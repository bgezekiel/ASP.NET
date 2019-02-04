<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Website_Project_2.Default" MasterPageFile="~/Site.Master" %>
<asp:Content ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <h1>Welcome Page</h1>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="* means that the field is required" CssClass="text-danger" />
    <h3>Customer Registration</h3>

    <h3>Contact information</h3>
                <!--First Name string-->
                <div class="form-group">
                    <label class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                            ControlToValidate="txtFirstName" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

                <!--Last Name string-->
                <div class="form-group">
                    <label class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                            ControlToValidate="txtLastName" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <!--Address string-->
                <div class="form-group">
                    <label class="col-sm-3 control-label">Address</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="txtAddress" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

                <!--City string-->
                <div class="form-group">
                    <label class="col-sm-3 control-label">City</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtCity" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>

                <!--Province-->
                <div class="form-group">
                    <label class="col-sm-3 control-label">Province</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlProvince" runat="server" CssClass="form-control">
                            <asp:ListItem>Alberta</asp:ListItem>
                            <asp:ListItem>British Columbia</asp:ListItem>
                            <asp:ListItem>Manitoba</asp:ListItem>
                            <asp:ListItem>New Brunswick</asp:ListItem>
                            <asp:ListItem>Newfoundland and Labrador</asp:ListItem>
                            <asp:ListItem>Nova Scotia</asp:ListItem>
                            <asp:ListItem>Ontario</asp:ListItem>
                            <asp:ListItem>Prince Edward Island</asp:ListItem>
                            <asp:ListItem>Quebec</asp:ListItem>
                           <asp:ListItem>Saskatchewan</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                
                <!--Postal Code-->
                <div class="form-group">
                    <label class="col-sm-3 control-label">Postal Code</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtPostalCode" runat="server" TextMode="Email" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="txtPostalCode" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="txtPostalCode" Text="Must be valid email address" 
                            Display="Dynamic" CssClass="text-danger"
                            ValidationExpression="^\d{5}-\d{4}|\d{5}|[A-Z]\d[A-Z] \d[A-Z]\d$">
                        </asp:RegularExpressionValidator>
                    </div>
                </div>

                <!--Country string-->
                <div class="form-group">
                    <label class="col-sm-3 control-label">Country</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtCountry" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <!--email adress-->
                <div class="form-group">
                    <label class="col-sm-3 control-label">Email address</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                            ControlToValidate="txtEmail" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                            ControlToValidate="txtEmail" Text="Must be valid email address" 
                            Display="Dynamic" CssClass="text-danger"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>
                    </div>
                </div>

                <!--Phone Number-->
                <div class="form-group">
                    <label class="col-sm-3 control-label">Telephone number</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                            ControlToValidate="txtPhone" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                            ControlToValidate="txtPhone" Text="Use this format: 999-999-9999"
                            Display="Dynamic" CssClass="text-danger" 
                            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                        </asp:RegularExpressionValidator>    
                    </div>
                </div>

                <!--Busines Number-->
                <div class="form-group">
                    <label class="col-sm-3 control-label">Business Number</label>
                    <div class="col-sm-4">
                        <asp:TextBox ID="txtBusinessPhone" runat="server" TextMode="Phone" 
                            CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-sm-5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="txtFax" text="*" CssClass="text-danger" Display="Dynamic">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="txtBusinessPhone" Text="Use this format: 999-999-9999"
                            Display="Dynamic" CssClass="text-danger" 
                            ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                        </asp:RegularExpressionValidator>    
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                             CssClass="btn btn-primary" OnClick="btnSubmit_Click"  />
                        <asp:Button ID="btnClear" runat="server" Text="Clear"
                             CssClass="btn btn-primary" OnClick="btnClear_Click" CausesValidation="false"  />
                    </div>
                </div> 
                

</asp:Content>
