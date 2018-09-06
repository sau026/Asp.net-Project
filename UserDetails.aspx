<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="UserDetails.aspx.cs" Inherits="UserDetails" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/StyleSheetgrid.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style6
        {
            width: 96%;
            height: 129px;
            z-index: 1;
            left: 36px;
            top: 547px;
            position: absolute;
        }
        .style7
        {
            width: 362px;
            font-weight: 700;
            text-align: center;
            color: #000000;
        }
        .style8
        {
            width: 195px;
        }
        .style10
        {
            width: 197px;
            text-align: center;
        }
        .style11
        {
            width: 215px;
            font-weight: 700;
            color: #000000;
            text-align: center;
        }
        .style12
        {
            width: 252px;
            font-weight: 700;
            color: #000000;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 496px; width: 1278px; background-color: #FFFFFF;">
        <br />
        <asp:Label ID="Label7" runat="server" 
            style="color: #FFFFFF; font-size: xx-large; z-index: 1; left: 36px; top: 185px; position: absolute; width: 1273px; text-align: center; background-color: #000066" 
            Text="User Detail"></asp:Label>
        <table class="style6" 
            style="background-image: none; background-color: #3333CC;">
            <tr>
                <td class="style7">
                    Username</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="style12">
                    Mobile</td>
                <td class="style10">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="style11">
                    Department</td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Name</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="style12">
                    Gender</td>
                <td class="style10">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="style11">
                    Role</td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Email</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="style12">
                    Country</td>
                <td class="style10">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="txt"></asp:TextBox>
                </td>
                <td class="style11">
                    Password</td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
            </table>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="0px" CellPadding="0" DataKeyNames="Username" 
            DataSourceID="SqlDataSource1" GridLines="Vertical" Height="100px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged2" PageSize="3" 
            style="z-index: 1; left: 44px; top: 268px; position: absolute; height: 104px; width: 1252px" 
            Visible="False" CellSpacing="1">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" 
                    SortExpression="Username" >
                </asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                </asp:BoundField>
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                    SortExpression="Mobile" >
                </asp:BoundField>
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" >
                </asp:BoundField>
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" >
                </asp:BoundField>
                <asp:BoundField DataField="City" HeaderText="City" 
                    SortExpression="City" >
                </asp:BoundField>
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" 
                    SortExpression="ZipCode" >
                </asp:BoundField>
                <asp:BoundField DataField="Department" HeaderText="Department" 
                    SortExpression="Department" >
                </asp:BoundField>
                <asp:BoundField DataField="Role" HeaderText="Role" 
                    SortExpression="Role" >
                </asp:BoundField>
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="0px" CellPadding="0" 
            DataKeyNames="Username" DataSourceID="SqlDataSource3" GridLines="Vertical" 
            HorizontalAlign="Center" 
            onselectedindexchanged="GridView2_SelectedIndexChanged" PageSize="3" 
            style="z-index: 1; left: 38px; top: 406px; position: absolute; height: 139px; width: 453px; right: 406px;" 
            Visible="False" Width="500px" CellSpacing="1">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" 
                    SortExpression="Username" >
                </asp:BoundField>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                </asp:BoundField>
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                    SortExpression="Mobile" >
                </asp:BoundField>
                <asp:BoundField DataField="Gender" HeaderText="Gender" 
                    SortExpression="Gender" >
                </asp:BoundField>
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" >
                </asp:BoundField>
                <asp:BoundField DataField="City" HeaderText="City" 
                    SortExpression="City" >
                </asp:BoundField>
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" 
                    SortExpression="ZipCode" >
                </asp:BoundField>
                <asp:BoundField DataField="Department" HeaderText="Department" 
                    SortExpression="Department" >
                </asp:BoundField>
                <asp:BoundField DataField="Role" HeaderText="Role" 
                    SortExpression="Role" >
                </asp:BoundField>
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" 
                Width="500px" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:Label ID="Label10" runat="server" 
            style="z-index: 1; left: 36px; top: 378px; position: absolute; font-weight: 700; font-size: x-large; width: 1274px; height: 26px; text-align: center; color: #FFFF66; background-color: #800000" 
            Text="All Record"></asp:Label>
    </p>
    <div style="z-index: 1; left: 39px; top: 226px; position: absolute; height: 38px; width: 1265px; background-color: #FFFF99">
        <asp:Label ID="Label8" runat="server" 
            style="z-index: 1; left: 30px; top: 9px; position: absolute; font-weight: 700" 
            Text="Select Column"></asp:Label>
        <asp:Label ID="Label9" runat="server" 
            style="z-index: 1; left: 348px; top: 10px; position: absolute; font-weight: 700" 
            Text="Select Name"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            style="z-index: 1; left: 143px; top: 7px; position: absolute">
            <asp:ListItem>&lt;--Select--&gt;</asp:ListItem>
            <asp:ListItem>Name</asp:ListItem>
            <asp:ListItem>Username</asp:ListItem>
            <asp:ListItem>Email</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="txt" 
            DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" 
            onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
            style="z-index: 1; left: 476px; top: 7px; position: absolute">
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" CssClass="btn" onclick="Button1_Click" 
            style="z-index: 1; left: 694px; top: 3px; position: absolute; color: #FFFFFF; font-weight: 700" 
            Text="Button" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="z-index: 1; left: 1077px; top: 2px; position: absolute; font-weight: 700; width: 133px; height: 32px; background-color: #0099FF" 
            Text="Show All Record" />
    </div>
    <div style="width: 190px; z-index: 1; left: 1089px; top: 330px; position: absolute; height: 215px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
            SelectCommand="SELECT * FROM [LoginDetail] WHERE ([Name] = @Name)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Name" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
            DeleteCommand="DELETE FROM [LoginDetail] WHERE [Username] = @Username" 
            InsertCommand="INSERT INTO [LoginDetail] ([Username], [Name], [Email], [Mobile], [Gender], [Country], [City], [ZipCode], [Department], [Role], [Password]) VALUES (@Username, @Name, @Email, @Mobile, @Gender, @Country, @City, @ZipCode, @Department, @Role, @Password)" 
            SelectCommand="SELECT * FROM [LoginDetail]" 
            
            
            UpdateCommand="UPDATE [LoginDetail] SET [Name] = @Name, [Email] = @Email, [Mobile] = @Mobile, [Gender] = @Gender, [Country] = @Country, [City] = @City, [ZipCode] = @ZipCode, [Department] = @Department, [Role] = @Role, [Password] = @Password WHERE [Username] = @Username">
            <DeleteParameters>
                <asp:Parameter Name="Username" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="Int64" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="ZipCode" Type="Int32" />
                <asp:Parameter Name="Department" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="Int64" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="ZipCode" Type="Int32" />
                <asp:Parameter Name="Department" Type="String" />
                <asp:Parameter Name="Role" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
            SelectCommand="SELECT [Name] FROM [LoginDetail]"></asp:SqlDataSource>
    </div>
</asp:Content>

