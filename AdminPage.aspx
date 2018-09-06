<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AdminPage.aspx.cs" Inherits="AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label7" runat="server" 
    style="color: #FFFFFF; font-size: xx-large; z-index: 1; left: 27px; top: 171px; position: absolute; width: 1279px; text-align: center; background-color: #000066" 
    Text="All Leave Record"></asp:Label>
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 30px; top: 513px; position: absolute; height: 30px; width: 1269px; color: #FFFFFF; text-align: center; font-size: x-large; font-weight: 700; background-color: #000066" 
        Text="Leave By Day"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
        CellPadding="0" CellSpacing="1" DataSourceID="SqlDataSource2" GridLines="None" 
        
    
        
    style="z-index: 1; left: 32px; top: 545px; position: absolute; height: 154px; width: 1268px; text-align: center;" 
    AllowPaging="True" AllowSorting="True" DataKeyNames="Username" PageSize="5">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" ReadOnly="True" />
            <asp:BoundField DataField="UEL" HeaderText="Used Earned Leave" 
                SortExpression="UEL" />
            <asp:BoundField DataField="REL" HeaderText="Remaining Eearned Leave" 
                SortExpression="REL" />
            <asp:BoundField DataField="UCL" HeaderText="Used Casual Leave" 
                SortExpression="UCL" />
            <asp:BoundField DataField="RCL" HeaderText="Remaining Casual Leave" 
                SortExpression="RCL" />
            <asp:BoundField DataField="UML" HeaderText="Used Medical Leave" 
                SortExpression="UML" />
            <asp:BoundField DataField="RML" HeaderText="Remaining Medical Leave" 
                SortExpression="RML" />
            <asp:BoundField DataField="USL" HeaderText="Used Special Leave" 
                SortExpression="USL" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
    BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="0" 
        DataKeyNames="UID" DataSourceID="SqlDataSource1" 
    GridLines="None" 
    
        
        style="z-index: 1; left: 27px; top: 210px; position: absolute; height: 188px; width: 1278px; text-align: center;" 
        PageSize="6">
    <Columns>
        <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" 
            SortExpression="UID">
        </asp:BoundField>
        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username">
        </asp:BoundField>
        <asp:BoundField DataField="RDate" HeaderText="RDate" 
            SortExpression="RDate">
        </asp:BoundField>
        <asp:BoundField DataField="Department" HeaderText="Department" 
            SortExpression="Department">
        </asp:BoundField>
        <asp:BoundField DataField="Name" HeaderText="Name" 
            SortExpression="Name">
        </asp:BoundField>
        <asp:BoundField DataField="Designation" HeaderText="Designation" 
            SortExpression="Designation">
        </asp:BoundField>
        <asp:BoundField DataField="LeaveType" HeaderText="LeaveType" 
            SortExpression="LeaveType">
        </asp:BoundField>
        <asp:BoundField DataField="DateFrom" HeaderText="DateFrom" 
            SortExpression="DateFrom">
        </asp:BoundField>
        <asp:BoundField DataField="DateTo" HeaderText="DateTo" SortExpression="DateTo">
        </asp:BoundField>
        <asp:BoundField DataField="Reason" HeaderText="Reason" 
            SortExpression="Reason">
        </asp:BoundField>
        <asp:BoundField DataField="TotalDay" HeaderText="TotalDay" 
            SortExpression="TotalDay">
        </asp:BoundField>
        <asp:BoundField DataField="NofLabo" HeaderText="NofLabo" 
            SortExpression="NofLabo">
        </asp:BoundField>
        <asp:BoundField DataField="NofLec" HeaderText="NofLec" 
            SortExpression="NofLec">
        </asp:BoundField>
        <asp:BoundField DataField="StationLP" HeaderText="StationLP" 
            SortExpression="StationLP" />
        <asp:BoundField DataField="HOD" HeaderText="HOD" 
            SortExpression="HOD">
        </asp:BoundField>
        <asp:BoundField DataField="Principal" HeaderText="Principal" 
            SortExpression="Principal" />
        <asp:BoundField DataField="Director" HeaderText="Director" 
            SortExpression="Director" />
    </Columns>
    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#594B9C" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
<div style="height: 118px; width: 262px; z-index: 1; left: 1039px; top: 275px; position: absolute">
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
        SelectCommand="SELECT [Username], [UEL], [REL], [UCL], [RCL], [UML], [RML], [USL] FROM [LeaveRecord]" 
        DeleteCommand="DELETE FROM [LeaveRecord] WHERE [Username] = @Username" 
        InsertCommand="INSERT INTO [LeaveRecord] ([Username], [UEL], [REL], [UCL], [RCL], [UML], [RML], [USL]) VALUES (@Username, @UEL, @REL, @UCL, @RCL, @UML, @RML, @USL)" 
        
        UpdateCommand="UPDATE [LeaveRecord] SET [UEL] = @UEL, [REL] = @REL, [UCL] = @UCL, [RCL] = @RCL, [UML] = @UML, [RML] = @RML, [USL] = @USL WHERE [Username] = @Username">
        <DeleteParameters>
            <asp:Parameter Name="Username" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="UEL" Type="Int32" />
            <asp:Parameter Name="REL" Type="Int32" />
            <asp:Parameter Name="UCL" Type="Int32" />
            <asp:Parameter Name="RCL" Type="Int32" />
            <asp:Parameter Name="UML" Type="Int32" />
            <asp:Parameter Name="RML" Type="Int32" />
            <asp:Parameter Name="USL" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UEL" Type="Int32" />
            <asp:Parameter Name="REL" Type="Int32" />
            <asp:Parameter Name="UCL" Type="Int32" />
            <asp:Parameter Name="RCL" Type="Int32" />
            <asp:Parameter Name="UML" Type="Int32" />
            <asp:Parameter Name="RML" Type="Int32" />
            <asp:Parameter Name="USL" Type="Int32" />
            <asp:Parameter Name="Username" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
        DeleteCommand="DELETE FROM [LoginRequest] WHERE [UID] = @UID" 
        InsertCommand="INSERT INTO [LoginRequest] ([UID], [Userid], [RDate], [Department], [Name], [Designation], [LeaveType], [DateFrom], [DateTo], [Reason], [TotalDay], [NofLabo], [NofLec], [StationLP], [HOD], [Principal], [Director]) VALUES (@UID, @Userid, @RDate, @Department, @Name, @Designation, @LeaveType, @DateFrom, @DateTo, @Reason, @TotalDay, @NofLabo, @NofLec, @StationLP, @HOD, @Principal, @Director)" 
        SelectCommand="SELECT LeaveRequest.UID, LeaveRequest.Username, LeaveRequest.RDate, LoginDetail.Department, LoginDetail.Name, LeaveRequest.Designation, LeaveRequest.LeaveType, LeaveRequest.DateFrom, LeaveRequest.DateTo, LeaveRequest.Reason, LeaveRequest.TotalDay, LeaveRequest.NofLabo, LeaveRequest.NofLec, LeaveRequest.StationLP, LeaveRequest.HOD, LeaveRequest.Principal, LeaveRequest.Director FROM LeaveRequest INNER JOIN LoginDetail ON LeaveRequest.Username = LoginDetail.Username" 
        
        
        
        
        UpdateCommand="UPDATE [LoginRequest] SET [Userid] = @Userid, [RDate] = @RDate, [Department] = @Department, [Name] = @Name, [Designation] = @Designation, [LeaveType] = @LeaveType, [DateFrom] = @DateFrom, [DateTo] = @DateTo, [Reason] = @Reason, [TotalDay] = @TotalDay, [NofLabo] = @NofLabo, [NofLec] = @NofLec, [StationLP] = @StationLP, [HOD] = @HOD, [Principal] = @Principal, [Director] = @Director WHERE [UID] = @UID">
        <DeleteParameters>
            <asp:Parameter Name="UID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UID" Type="String" />
            <asp:Parameter Name="Userid" Type="String" />
            <asp:Parameter Name="RDate" DbType="Date" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="LeaveType" Type="String" />
            <asp:Parameter DbType="Date" Name="DateFrom" />
            <asp:Parameter Name="DateTo" DbType="Date" />
            <asp:Parameter Name="Reason" Type="String" />
            <asp:Parameter Name="TotalDay" Type="Int32" />
            <asp:Parameter Name="NofLabo" Type="String" />
            <asp:Parameter Name="NofLec" Type="String" />
            <asp:Parameter Name="StationLP" Type="String" />
            <asp:Parameter Name="HOD" Type="String" />
            <asp:Parameter Name="Principal" Type="String" />
            <asp:Parameter Name="Director" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Userid" Type="String" />
            <asp:Parameter Name="RDate" DbType="Date" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Designation" Type="String" />
            <asp:Parameter Name="LeaveType" Type="String" />
            <asp:Parameter DbType="Date" Name="DateFrom" />
            <asp:Parameter Name="DateTo" DbType="Date" />
            <asp:Parameter Name="Reason" Type="String" />
            <asp:Parameter Name="TotalDay" Type="Int32" />
            <asp:Parameter Name="NofLabo" Type="String" />
            <asp:Parameter Name="NofLec" Type="String" />
            <asp:Parameter Name="StationLP" Type="String" />
            <asp:Parameter Name="HOD" Type="String" />
            <asp:Parameter Name="Principal" Type="String" />
            <asp:Parameter Name="Director" Type="String" />
            <asp:Parameter Name="UID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

