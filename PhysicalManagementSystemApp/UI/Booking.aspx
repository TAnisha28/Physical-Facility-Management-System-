<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PhysicalFacilityManagement.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="PhysicalManagementSystemApp.UI.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="preBookingGridView" runat="server" AutoGenerateColumns="False" Height="152px" Width="867px" OnSelectedIndexChanging="preBookingGridView_SelectedIndexChanging" OnSelectedIndexChanged="preBookingGridView_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField HeaderText="App ID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("AppId") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="idLabel" runat="server" Text='<%# Bind("AppId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ASubject" HeaderText="Subject" />
            <asp:BoundField DataField="OrgName" HeaderText="Organization" />
            <asp:BoundField DataField="UserName" HeaderText="User Name" />
            <asp:BoundField DataField="prrocessingTime" HeaderText="Process Date" />
            <asp:BoundField DataField="Remark" HeaderText="Remark" />
            <asp:TemplateField HeaderText="Select" ShowHeader="False">
                <ItemTemplate>
                    <asp:RadioButton ID="selectRadioButton" runat="server" AutoPostBack="True" OnCheckedChanged="selectRadioButton_CheckedChanged" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>  <br/><br/>
    <asp:Button ID="showButton" runat="server" Text="Show" Height="29px" OnClick="showButton_Click" Width="154px" />
    <asp:Label ID="IdLabel" runat="server"></asp:Label>
    
    <br/><br/>
    <asp:GridView ID="appDetailsGridView" runat="server" AutoGenerateColumns="False" Width="872px">
        <Columns>
            <asp:BoundField DataField="OrgName" HeaderText="Organization " />
            <asp:BoundField DataField="FaciId" HeaderText="Facility Id" />
            <asp:BoundField DataField="Category" HeaderText="Category" />
            <asp:BoundField DataField="CatName" HeaderText="Category Name" />
            <asp:BoundField DataField="TimeSlot" HeaderText="Timeslot" />
            <asp:BoundField DataField="StartDate" HeaderText="Start Date" />
            <asp:BoundField DataField="EndDate" HeaderText="End Date" />
            <asp:TemplateField HeaderText="Select" ShowHeader="False">
                <ItemTemplate>
                    <asp:CheckBox ID="addCheckBox" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    
    <br/>
    
    <asp:Button ID="confirmButton" runat="server" Text="Confirm" OnClick="displayButton_Click" Width="152px" />
    <br/>
    <asp:Label ID="resultLabel" runat="server" Text=""></asp:Label>
   <asp:Label ID="timLabel" runat="server" Text=""></asp:Label>
    <asp:Label ID="nullMsgLabel" runat="server" Text=""></asp:Label>

</asp:Content>
