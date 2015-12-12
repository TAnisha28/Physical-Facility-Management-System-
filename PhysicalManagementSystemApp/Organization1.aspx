<%@ Page Title="" Language="C#" MasterPageFile="Main3.Master" AutoEventWireup="true" CodeBehind="Organization1.aspx.cs" Inherits="PhysicalManagementSystemApp.Organization1" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <form id="form1" runat="server">
                 <p>
        <asp:LinkButton ID="addLinkButton" runat="server" OnClick="addLinkButton_Click">Add Name and Email ID</asp:LinkButton>
                     <br />
            <asp:Label ID="Label3" runat="server" ForeColor="#FF66FF" style="font-weight: 700"></asp:Label>
                 </p>
                 <asp:Panel ID="Panel1" runat="server" Height="98px" Visible="False">
                     <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="nameTextBox" runat="server" Height="16px" OnTextChanged="nameTextBox_TextChanged" Width="192px"></asp:TextBox>
                     <br />
                     <asp:Label ID="Label6" runat="server" Text="Email ID:"></asp:Label>
                     <asp:TextBox ID="emailTextBox" runat="server" Height="16px" Width="197px"></asp:TextBox>
                     <br />
                     <asp:Button ID="backButton" runat="server" OnClick="backButton_Click" Text="Back" />
                     &nbsp;&nbsp;&nbsp;
                     <asp:Button ID="saveButton" runat="server" OnClick="saveButton_Click" Text="Save" />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="resetButton" runat="server" OnClick="resetButton_Click" Text="Reset" Width="50px" />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cancel" />
                 </asp:Panel>
    
        <asp:GridView ID="orgGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="Black" OnRowDeleting="orgGridView_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="712px" OnRowCancelingEdit="orgGridView_RowCancelingEdit" OnRowEditing="orgGridView_RowEditing" OnRowUpdating="orgGridView_RowUpdating" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
            <Columns>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Details">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Details") %>' Height="16px" Width="230px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Details") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category Type">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                <asp:CommandField HeaderText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </form>
</asp:Content>

