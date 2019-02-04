<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TripDetails.aspx.cs" Inherits="Website_Project_2.TripDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Trip Bookings<br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="BookingDestinations" DataTextField="BookingNo" DataValueField="BookingId">
            </asp:DropDownList>
            <asp:ObjectDataSource ID="BookingDestinations" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetNewBookings" TypeName="Website_Project_2.App_Code.PackageDB"></asp:ObjectDataSource>
            <br />
            <br />
            Trip Booking Details<br />
            <br />
            <asp:GridView ID="GridView2" runat="server" Height="148px" Width="308px" DataSourceID="BookingDetailsSource">
            </asp:GridView>
            <asp:ObjectDataSource ID="BookingDetailsSource" runat="server" SelectMethod="getTripBookings" TypeName="Website_Project_2.App_Code.PackageDB">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="0" Name="packageid" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <br />
&nbsp;<asp:Label ID="Label1" runat="server" Text="Total Cost : "></asp:Label>
            <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Payment Received : "></asp:Label>
            <asp:TextBox ID="txtPaymentReceieved" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Payment Outstanding : "></asp:Label>
            <asp:TextBox ID="txtPaymentOutstanding" runat="server"></asp:TextBox>
            <br />
        </div>
    </form>
</body>
</html>
