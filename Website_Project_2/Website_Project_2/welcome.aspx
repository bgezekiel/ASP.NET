<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="Website_Project_2.welcome" MasterPageFile="~/Site.Master" %>
<asp:Content ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <h1>Welcome to Travel Experts</h1>
    <table>
        <tr>
            <td>
                <h3>New User Click Here </h3>
            </td>
            <td>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnNew" runat="server" Text="New User"  CssClass="btn btn-primary" OnClick="btnNew_Click" />
                    </div>
                </div> 
            </td>
        </tr>
        <tr>
            <td>
                <h3>Returning User Click Here</h3>
            </td>
            <td>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <asp:Button ID="btnLogin" runat="server" Text="Log In"  CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                    </div>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

