<%@ Page Title="" Language="C#" MasterPageFile="~/phfs/Main3.Master" AutoEventWireup="true" CodeBehind="Application_New1.aspx.cs" Inherits="PhysicalManagementSystemApp.Application_New1" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <script type="text/javascript">
        function loaddata() {
            if (document.getElementById("ctl00_ContentPlaceHolder2_DropDownList5").value!="Select")
            document.getElementById("ctl00_ContentPlaceHolder2_TextBox5").value = document.getElementById("ctl00_ContentPlaceHolder2_DropDownList5").value;
            return true;

        }

</script>
    <form id="form1" runat="server">
    <div>
        <table style="border-style: dotted; border-width: thin; width: 100%; height: 269px;">
            <tr>
                <td style="width: 368px" rowspan="2">

    <asp:Label ID="Label1" runat="server" Text="Application ID" style="font-weight: 700"></asp:Label>&nbsp;<asp:TextBox ID="TextBox1" runat="server" Enabled="False" OnTextChanged="TextBox1_TextChanged" Height="16px" Width="130px"></asp:TextBox>
                    <br />
                    <br />
       
                    <br />
                    <br />
                    <strong style="color: #6699FF">&nbsp; Type of Program:&nbsp;</strong><span style="color: #6699FF">&nbsp;&nbsp;&nbsp;</span><br />
                    <strong>
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Internal" GroupName="typeofprogram" OnCheckedChanged="RadioButton1_CheckedChanged" />
                    </strong>&nbsp;<strong><asp:RadioButton ID="RadioButton2" runat="server" GroupName="typeofprogram" Text="External" />
                    </strong>&nbsp;&nbsp;&nbsp; 
                    <br />
&nbsp;------------------------------------<br />
                    <span style="color: #3366FF; font-weight: 700">&nbsp; Facilites Rate Type :</span><br />
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="price_type" Text="Original" />
&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="price_type" Text="Discounted" />
                    </td>
                <td style="height: 34px; background-color: #666666;" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="Organization Name" style="font-weight: 700"></asp:Label>
                    &nbsp;:<br />
                    <asp:TextBox ID="TextBox5" runat="server" AutoCompleteType="Disabled" Height="16px" Width="356px"></asp:TextBox>
                    <br />
                    <asp:DropDownList ID="DropDownList5" onchange="return loaddata();"  runat="server" Height="37px" Width="361px" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" Font-Size="Large" style="font-size: small" Font-Bold="True">
                    </asp:DropDownList>
       
                    <br />
                 </td>
            </tr>
            <tr>
                <td style="background-color: #805600;"><strong>Start Date&nbsp;:<br />
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False" OnTextChanged="TextBox2_TextChanged" Height="19px" Width="175px" style="font-weight: 700"></asp:TextBox>
                    &nbsp; 
                    <br />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="125px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="180px">
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
                <td style="background-color: #805600;">E<strong>nd Date :<br />
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Height="17px" Width="178px" style="font-weight: 700"></asp:TextBox>
                    &nbsp; 
                    <br />
        <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="79px" OnSelectionChanged="Calendar2_SelectionChanged" ShowGridLines="True" Width="183px">
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
            </tr>
            <tr>
                <td style="border: thin dotted #000000; background-color: #993300;" colspan="3">

        <asp:Label ID="Label7" runat="server" Text="Logistry"></asp:Label>
                    &nbsp; :&nbsp;
                    &nbsp;
                    <asp:CheckBox ID="CheckBox5" runat="server" OnCheckedChanged="CheckBox5_CheckedChanged" Text="Projector" />
            &nbsp;
            <asp:CheckBox ID="CheckBox6" runat="server" Text="Speaker" />
                    &nbsp;
                    <asp:CheckBox ID="CheckBox7" runat="server" Text="Multiplug" />
                    &nbsp;
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="Mike" />
                    &nbsp;
        <asp:CheckBox ID="CheckBox9" runat="server" Text="Others" AutoPostBack="True" OnCheckedChanged="CheckBox9_CheckedChanged" />
                    &nbsp;
                    <asp:TextBox ID="TextBox7" runat="server" Visible="False" Height="21px" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border: thin dotted #000000; width: 368px; background-color: #996633;">

                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Auditorium" Height="20px" Width="99px" style="text-align: left; font-weight: 700" />

                &nbsp;&nbsp;

                    <br />
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
                <td style="border: thin dotted #000000; width: 329px; background-color: #996633;">
                    <br />

                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Class" Width="80px" Height="20px" style="font-weight: 700" />

                &nbsp;&nbsp;&nbsp;

                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />

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

                    <br />
                </td>
                <td style="border: thin dotted #000000; width: 329px; background-color: #996633;">

                    <asp:Button ID="Button9" runat="server" Text="Lab" OnClick="Button9_Click1" Width="85px" Height="24px" style="font-weight: 700" />

                &nbsp;&nbsp;&nbsp;&nbsp;

                    <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="155px" Width="212px" GridLines="Vertical" ForeColor="Black">
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

                    <br />
                </td>
            </tr>
            <tr>
                <td style="border: thin dotted #000000; width: 368px; background-color: #996633; height: 185px;" class="border: thin dotted #000000; width: 329px">
                    <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Conf Hall" Width="112px" style="font-weight: 700" />

                    &nbsp;&nbsp;

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

                    </td>
                <td style="border: thin dotted #000000; width: 329px; height: 185px;">
        <asp:Label ID="Label5" runat="server" Text="Subject" style="font-weight: 700"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="306px"></asp:TextBox>
                    <br />
       
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Detail" style="font-weight: 700"></asp:Label>
                    s:<asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Height="106px" Width="303px"></asp:TextBox>
       
                    </td>
                <td style="border: thin dotted #000000; width: 329px; background-color: #000000; height: 185px;">
                    <br />

                    </td>
            </tr>
            <tr>
                <td style="border: thin dotted #000000; background-color: #996633; height: 30px;" class="border: thin dotted #000000; width: 329px" colspan="3">
                    Subject:<asp:Label ID="Label12" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Category"></asp:Label>
            :<asp:Label ID="Label9" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            From:<asp:Label ID="Label10" runat="server"></asp:Label>
            &nbsp;
            To:<asp:Label ID="Label11" runat="server"></asp:Label>
                    &nbsp;
                    Selected
            <asp:Label ID="Label13" runat="server"></asp:Label>
            :<asp:Label ID="Label14" runat="server"></asp:Label>
                    &nbsp;&nbsp;&nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
                 <p>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="Submit" OnClick="Button5_Click" style="height: 26px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Confirm" Visible="False" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server"></asp:Label>
           
                     &nbsp;</p>
        </form>
</asp:Content>

