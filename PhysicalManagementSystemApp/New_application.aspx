<%@ Page Title="" Language="C#" MasterPageFile="~/Main2.Master" AutoEventWireup="true" CodeBehind="New_application.aspx.cs" Inherits="phy_fac_bard.New_application" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server" style="height: 907px; text-align: center; margin-bottom: 0px;">
        <br />
        <table style="width:94%; height: 869px; clip: rect(auto, auto, auto, auto); table-layout: auto; empty-cells: hide; border-collapse: collapse; caption-side: bottom; position: relative; border-spacing: inherit; top: -6px; left: 12px; z-index: 1; margin-bottom: 0px;">
            <tr>
                <td style="width: 217px; height: 45px;">

    <asp:Label ID="Label1" runat="server" Text="Application ID" style="font-weight: 700"></asp:Label></td>
                <td style="height: 45px;"><asp:TextBox ID="TextBox1" runat="server" Enabled="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    <br />
                </td>
                <td style="height: 45px; " colspan="2"><strong>Type of Program:&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <strong>
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Internal" />
                    </strong>&nbsp;<strong><asp:RadioButton ID="RadioButton2" runat="server" GroupName="typeofprogram" Text="External" />
                    </strong>&nbsp;&nbsp;&nbsp; </td>
            </tr>
             <tr>
                <td style="width: 217px; height: 168px;"><strong>&nbsp; Start Date&nbsp;:<br />
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    &nbsp; <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="..." />
                    <br />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="125px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Visible="False" Width="154px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
                    </strong>
                 </td>
                <td style="height: 168px;">&nbsp;E<strong>nd Date :<br />
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
                    &nbsp; <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="..." />
                    <br />
        <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="79px" OnSelectionChanged="Calendar2_SelectionChanged" ShowGridLines="True" Visible="False" Width="156px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
                    </strong>
                 </td>
                <td style="height: 168px; text-align: center;" colspan="2">
                    <strong>
                    <br />
                    <br />
                    </strong>
                    <br />
        <asp:Label ID="Label7" runat="server" Text="Logistry"></asp:Label>
                    :<br />
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="Mike" />
                    <asp:CheckBox ID="CheckBox5" runat="server" OnCheckedChanged="CheckBox5_CheckedChanged" Text="Projector" />
            <asp:CheckBox ID="CheckBox6" runat="server" Text="Speaker" />
                    <asp:CheckBox ID="CheckBox7" runat="server" Text="Multiplug" />
        &nbsp;&nbsp;&nbsp;
                    <br />
        <asp:CheckBox ID="CheckBox9" runat="server" Text="Others" AutoPostBack="True" />
                    <asp:TextBox ID="TextBox7" runat="server" Visible="False" Height="26px" Width="198px"></asp:TextBox>
                    <br />
                    <br />
                 </td>
            </tr>
            <tr style="float: left; clip: rect(auto, auto, auto, auto)">
                <td style="width: 217px; height: 53px;" align="left">

                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Auditorium" Height="26px" Width="110px" />

                </td>
                <td style="height: 53px;" align="left">

                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Class" Width="80px" Height="20px" />

                &nbsp;

                </td>
                <td style="width: 124px; height: 53px" align="left">

                    <asp:Button ID="Button9" runat="server" Text="Lab" OnClick="Button9_Click1" Width="85px" Height="24px" />

                &nbsp;

                </td>
                <td style="height: 53px; width: 113px;" align="left">

                </td>
            </tr>
                
            <tr style="float: left; clip: rect(auto, auto, auto, auto)">
                <td style="width: 217px; height: 164px;" align="left">

                    <asp:DropDownList ID="DropDownList1" runat="server" Height="17px" Width="63px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Original</asp:ListItem>
                        <asp:ListItem>Disc.</asp:ListItem>
                    </asp:DropDownList>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" Width="214px" Height="129px" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                        <Columns>
                            <asp:TemplateField HeaderText="F. No">
                                <ItemTemplate>
                                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("FaciID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Morn">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox12" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Eve">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox13" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="act_price" HeaderText="A. Prc" />
                            <asp:BoundField DataField="disc_price" HeaderText="D. Prc" />
                        </Columns>
                        <EditRowStyle Font-Size="Smaller" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </td>
                <td style="height: 164px;" align="left">

                    <asp:DropDownList ID="DropDownList2" runat="server" Height="17px" Width="62px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Original</asp:ListItem>
                        <asp:ListItem>Discounted</asp:ListItem>
                    </asp:DropDownList>

                    <asp:GridView ID="GridView4" runat="server" CellPadding="4" AutoGenerateColumns="False" Height="127px" Width="211px" ForeColor="Black" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
                        <Columns>
                            <asp:TemplateField HeaderText="F. No">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("FaciID") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Bind("FaciID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Morn">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox14" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox15" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Eve">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox16" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox17" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="act_price" HeaderText="A. Prc" />
                            <asp:BoundField DataField="disc_price" HeaderText="D. Prc" />
                        </Columns>
                        <EditRowStyle Font-Size="Smaller" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
                        <RowStyle BackColor="White" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>

                </td>
                <td style="width: 124px; height: 164px" align="left">

                    <asp:DropDownList ID="DropDownList3" runat="server" Height="17px" Width="62px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Original</asp:ListItem>
                        <asp:ListItem>Discounted</asp:ListItem>
                    </asp:DropDownList>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="126px" Width="109px" GridLines="Vertical" ForeColor="Black">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="F. No">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("FaciID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label18" runat="server" Text='<%# Bind("FaciID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Morn">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox10" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Eve">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox11" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="act_price" HeaderText="A. Pr" />
                <asp:BoundField DataField="disc_price" HeaderText="D. Pr" />
            </Columns>
            <EditRowStyle Font-Size="Smaller" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

                </td>
                <td style="height: 164px; width: 113px;" align="left">
                    <br />

                    <br />

                    <br />

                </td>
            </tr>
                
            <tr>
                <td style="width: 217px; height: 235px; text-align: left;">
        <asp:Label ID="Label5" runat="server" Text="Subject"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="202px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Organization Name"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" Height="21px" Width="203px"></asp:TextBox>
                    <br />
                    <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="204px">
                    </asp:DropDownList>
       
                    <br />
                </td>
                <td style="height: 235px; text-align: left;" colspan="3">
                    <br />
                    <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Conf Hall" Width="112px" />

                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList4" runat="server" Height="17px" Width="62px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Original</asp:ListItem>
                        <asp:ListItem>Discounted</asp:ListItem>
                    </asp:DropDownList>
                    <br />

                    <asp:GridView ID="GridView5" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" Width="99px" Height="16px" BorderStyle="None" style="height: 153px; width: 247px">
                        <Columns>
                            <asp:TemplateField HeaderText="F. No">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("FaciID") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label17" runat="server" Text='<%# Bind("FaciID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Morn">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox18" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Eve">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox2" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox19" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="act_price" HeaderText="A. Pr" />
                            <asp:BoundField DataField="disc_price" HeaderText="D. Pr" />
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

                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Detail"></asp:Label>
                    s:<br />
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Height="50px" Width="621px"></asp:TextBox>
       
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
                
            <tr>
                <td style="width: 217px">
                    <br />
                </td>
                <td>Subject:<asp:Label ID="Label12" runat="server"></asp:Label>
            <br __designer:mapid="6f" />
            <asp:Label ID="Label4" runat="server" Text="Category"></asp:Label>
            :<asp:Label ID="Label9" runat="server"></asp:Label>
            <br __designer:mapid="72" />
            From:<asp:Label ID="Label10" runat="server"></asp:Label>
            <br __designer:mapid="74" />
            To:<asp:Label ID="Label11" runat="server"></asp:Label>
                </td>
                <td style="width: 124px">Selected
            <asp:Label ID="Label13" runat="server"></asp:Label>
            :<asp:Label ID="Label14" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td style="width: 113px">
                    <br />
                </td>
            </tr>
                
            <tr>
                <td style="width: 217px">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="Button5" runat="server" Text="Submit" OnClick="Button5_Click" style="height: 26px" />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Confirm" />
            <asp:Label ID="Label8" runat="server"></asp:Label>
           
                </td>
                <td style="width: 113px">
                    &nbsp;</td>
            </tr>
            </table>
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <br />
       
&nbsp;</form>
</asp:Content>
