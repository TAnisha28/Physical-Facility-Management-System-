<%@ Page Title="" Language="C#" MasterPageFile="~/UI/PhysicalFacilityManagement.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="PhysicalManagementSystemApp.UI.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 299px;
        }
        .auto-style2 {
            color: #000000;
            font-size: medium;
        }
        .auto-style3 {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="preBookingGridView" runat="server" AutoGenerateColumns="False" Height="152px" Width="867px" OnSelectedIndexChanging="preBookingGridView_SelectedIndexChanging" OnSelectedIndexChanged="preBookingGridView_SelectedIndexChanged" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
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
            <asp:TemplateField HeaderText="Process Date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("prrocessingTime") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("prrocessingTime") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="Remark" Visible="False" />
            <asp:TemplateField HeaderText="Select" ShowHeader="False">
                <ItemTemplate>
                    <asp:RadioButton ID="selectRadioButton" runat="server" AutoPostBack="True" OnCheckedChanged="selectRadioButton_CheckedChanged" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>  <br/><br/>
    <asp:Label ID="IdLabel" runat="server"></asp:Label>
    
    <br/><br/>
    <asp:GridView ID="appDetailsGridView" runat="server" AutoGenerateColumns="False" Width="872px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
        <Columns>
            <asp:TemplateField HeaderText="Facility Id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("FaciId") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("FaciId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Category" HeaderText="Category" />
            <asp:BoundField DataField="CatName" HeaderText="Category Name" />
            <asp:BoundField DataField="TimeSlot" HeaderText="Timeslot" />
            <asp:TemplateField HeaderText="Start Date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StartDate") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("StartDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="End Date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("EndDate") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("EndDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Select" ShowHeader="False">
                <ItemTemplate>
                    <asp:CheckBox ID="addCheckBox" runat="server" Checked="True" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ratetype" HeaderText="Rate Type" />
            <asp:TemplateField HeaderText="Rate">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    
    <br />
    <table style="width: 100%; height: 193px;">
        <tr>
            <td class="auto-style1"><strong>

                    <asp:GridView ID="GridView6" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" Width="99px" Height="16px" BorderStyle="None" style="height: 153px; width: 247px">
                        <Columns>
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox21" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="name" HeaderText="Name" />
                            <asp:TemplateField HeaderText="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("details") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("details") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle Font-Size="Smaller" />
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#000066" HorizontalAlign="Left" BackColor="White" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" ForeColor="White" Font-Bold="True" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>

                </strong></td>
            <td><span class="auto-style3"><strong>Subject </strong></span><strong>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style3" Height="17px" Width="507px"></asp:TextBox>
                <br class="auto-style3" />
                </strong><span class="auto-style3"><strong>Body&nbsp; </strong></span><strong>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style2" Height="139px" TextMode="MultiLine" Width="572px"></asp:TextBox>
                </strong><span class="auto-style3"><strong>
                <br />
                <br />
                Attachment </strong></span><strong>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style3" Height="24px" Width="351px" />
                </strong><span class="auto-style3"><strong>&nbsp; </strong></span><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style3" Height="23px" Text="Upload" Width="59px" />
                </strong><span class="auto-style3"><strong>&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </strong></span></td>
        </tr>
        <tr>
            <td class="auto-style1"><strong>
    
    <asp:Button ID="confirmButton" runat="server" Text="Confirm" OnClick="displayButton_Click" Width="169px" Visible="False" Height="36px" />
                </strong></td>
            <td>&nbsp; Generator Rate
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp; Admn Liasion Service&nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <strong>&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
    
    <br/>
    
    <br/>
    <asp:Label ID="resultLabel" runat="server" Text=""></asp:Label>
   <asp:Label ID="timLabel" runat="server" Text=""></asp:Label>
    <asp:Label ID="nullMsgLabel" runat="server" Text=""></asp:Label>

</asp:Content>
