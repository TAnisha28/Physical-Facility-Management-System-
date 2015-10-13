<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PhysicalFacilityManagement.Master" AutoEventWireup="true" CodeBehind="BookHistoryByCat.aspx.cs" Inherits="PhysicalManagementSystemApp.UI.BookHistoryByCat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                Category:<asp:DropDownList ID="categoryDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="categoryDropDownList_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Name:<asp:DropDownList ID="nameDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="nameDropDownList_SelectedIndexChanged"></asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style1">
                <asp:LinkButton ID="allLinkButton" runat="server" OnClick="allLinkButton_Click"> All</asp:LinkButton>
            </td>
        </tr>
    </table>
    <br/>
     <p>
        <a href="Application.aspx">Booking History By Category</a>
        </p>
    <br/>
    <asp:GridView ID="detailsGridView" runat="server" Height="310px" Width="873px" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="BookingDate" HeaderText="Booking Date" />
            <asp:BoundField DataField="subject" HeaderText="Subject" />
             <asp:BoundField DataField="category" HeaderText="Category" Visible="False" />
            <asp:BoundField DataField="catname" HeaderText="Category Name" Visible="False" />
            <asp:BoundField DataField="startdate" HeaderText="Start Date" />
            <asp:BoundField DataField="EndDate" HeaderText="End Date" />
            <asp:BoundField DataField="TimeSlot" HeaderText="Time Slots" />
        </Columns>
</asp:GridView>
    
</asp:Content>
