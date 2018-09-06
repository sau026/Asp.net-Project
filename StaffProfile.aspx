<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="StaffProfile.aspx.cs" Inherits="StaffProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="Username" DataSourceID="SqlDataSource1" 
        GridLines="Vertical" 
        
        style="z-index: 1; left: 25px; top: 273px; position: absolute; height: 120px; width: 490px; right: 401px" 
        AllowPaging="True">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" >
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
    <asp:Image ID="Image2" runat="server" Height="267px" 
        ImageUrl="~/Image/profile.png" 
        
        
        style="z-index: 1; left: 1035px; top: 60px; position: relative; width: 246px" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
        DeleteCommand="DELETE FROM [LoginDetail] WHERE [Username] = @Username" 
        InsertCommand="INSERT INTO [LoginDetail] ([Username], [Name], [Email], [Mobile], [Gender], [Country], [City], [ZipCode], [Department], [Role], [Password]) VALUES (@Username, @Name, @Email, @Mobile, @Gender, @Country, @City, @ZipCode, @Department, @Role, @Password)" 
        SelectCommand="SELECT * FROM [LoginDetail] WHERE ([Username] = @Username)" 
        
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
        <SelectParameters>
            <asp:ControlParameter ControlID="LabelProfile" Name="Username" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
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
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 49px; top: 239px; position: absolute; font-size: x-large; font-weight: 700; color: #000000" 
        Text="Username"></asp:Label>
    <asp:Label ID="LabelProfile" runat="server" 
        style="z-index: 1; left: 183px; top: 243px; position: absolute; font-size: large; font-weight: 700; color: #006600" 
        Text="Label"></asp:Label>
        <div style="height: 35px; position: absolute; top: 167px; left: 26px; width: 1276px; z-index: 1">
    <asp:Label ID="Label7" runat="server" 
        style="font-size: xx-large; color: #FFFFFF; z-index: 1; left: 0px; top: 0px; position: absolute; width: 1278px; text-align: center; background-color: #000066" 
        Text="Profile"></asp:Label></div>
</asp:Content>

