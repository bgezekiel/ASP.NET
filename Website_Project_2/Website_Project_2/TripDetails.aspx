<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TripDetails.aspx.cs" Inherits="Website_Project_2.TripDetails" MasterPageFile="~/Site.Master" %>
        <%--
  Class: OOSD threaded project 2
        This is the booking details page that allows the user to view bookings and booking details. 
        All labels, div classes and buttons are named accordingly and is self explainatory. 
        No other comments are provided throughout this page.
  Author: Eugenia Chiu
  Date: Feb 2019
  Commentor: Eugenia Chiu   
        --%>

<asp:Content ContentPlaceHolderID="mainPlaceHolder" runat="server">
    <header>
        <link href="css/background.css" rel="stylesheet" />
    </header>
        <form class="divform" id="form1">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="BookingsLabel" runat="server" CssClass="labeltext" Text="Trip Bookings" />
            <asp:Label ID="LblHidden" runat="server" CssClass="labeltext" Style="margin-left: 18%; margin-right: 25%;" Text="You don't have have any trips booked !" ForeColor="White" Visible="False" />
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
            <asp:Label ID="DetailsLabel" runat="server" CssClass="labeltext" Text="Booking Details" />
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
</asp:Content>
