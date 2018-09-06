<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="RequestStatus3.aspx.cs" Inherits="RequestStatus3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="position: absolute; top: 162px; left: 19px; height: 37px; width: 1274px; z-index: 1;">
    <asp:Label ID="Label7" runat="server" 
        style="font-weight: 700; z-index: 1; left: 2px; top: 2px; position: absolute; height: 35px; width: 1283px; font-size: xx-large; color: #FFFFFF; text-align: center; background-color: #000066; right: -11px;" 
        Text="Request Status"></asp:Label>
        <asp:TextBox ID="TextBoxUID" runat="server" 
            style="z-index: 1; left: 1102px; top: 47px; position: absolute"></asp:TextBox>
        <asp:Label ID="LabelUID" runat="server" 
            style="z-index: 1; left: 1017px; top: 48px; position: absolute; font-weight: 700; color: #006600; background-color: #FFFFFF" 
            Text="Enter UID"></asp:Label>
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 221px; top: 45px; position: absolute; font-size: x-large; font-weight: 700; color: #006600; background-color: #FFFFFF" 
        Text="Track Your Status"></asp:Label>
    <asp:TextBox ID="TextBoxTrack" runat="server" 
        
            style="z-index: 1; left: 432px; top: 47px; position: absolute; height: 22px; width: 166px" 
            ReadOnly="True"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 1130px; top: 6px; position: absolute; width: 123px; font-weight: 700; height: 28px; background-color: #FFFF66" 
            Text="Generate Receipt" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" DataKeyNames="UID" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="None" 
        
            
            style="position: absolute; top: 81px; left: 1px; width: 1271px; z-index: 1; height: 103px;" 
            AllowPaging="True" PageSize="6">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" 
                SortExpression="UID" />
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:BoundField DataField="RDate" HeaderText="RDate" SortExpression="RDate" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Designation" HeaderText="Designation" 
                SortExpression="Designation" />
            <asp:BoundField DataField="LeaveType" HeaderText="LeaveType" 
                SortExpression="LeaveType" />
            <asp:BoundField DataField="DateFrom" HeaderText="DateFrom" 
                SortExpression="DateFrom" />
            <asp:BoundField DataField="DateTo" HeaderText="DateTo" 
                SortExpression="DateTo" />
            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                SortExpression="Reason" />
            <asp:BoundField DataField="TotalDay" HeaderText="TotalDay" 
                SortExpression="TotalDay" />
            <asp:BoundField DataField="NofLabo" HeaderText="NofLabo" 
                SortExpression="NofLabo" />
            <asp:BoundField DataField="NofLec" HeaderText="NofLec" 
                SortExpression="NofLec" />
            <asp:BoundField DataField="StationLP" HeaderText="StationLP" 
                SortExpression="StationLP" />
            <asp:BoundField DataField="Director" HeaderText="Director" 
                SortExpression="Director" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <div style="z-index: 1; left: 981px; top: 138px; position: absolute; height: 94px; width: 244px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
            
            
            
              SelectCommand="SELECT LeaveRequest.UID, LeaveRequest.Username, LeaveRequest.RDate, LoginDetail.Department, LoginDetail.Name, LeaveRequest.Designation, LeaveRequest.LeaveType, LeaveRequest.DateFrom, LeaveRequest.DateTo, LeaveRequest.Reason, LeaveRequest.TotalDay, LeaveRequest.NofLabo, LeaveRequest.NofLec, LeaveRequest.StationLP, LeaveRequest.HODCurrent,LeaveRequest.HOD, LeaveRequest.PrincipalCurrent, LeaveRequest.Principal, LeaveRequest.DirectorCurrent, LeaveRequest.Director FROM LeaveRequest INNER JOIN LoginDetail ON LeaveRequest.Username = LoginDetail.Username WHERE LeaveRequest.Username=@Username">
        <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxTrack" Name="Username" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
            SelectCommand="SELECT [UEL], [REL], [UCL], [RCL], [UML], [RML], [USL] FROM [LeaveRecord] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxTrack" Name="Username" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div style="position: absolute; top: 355px; left: 4px; height: 37px; z-index: 1; width: 1276px;">
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
            CellPadding="2" DataSourceID="SqlDataSource3" ForeColor="Black" 
            GridLines="None" 
            
            
            
            
            style="position: absolute; top: 39px; left: 6px; width: 1262px; z-index: 1; height: 113px; text-align: center;" 
            PageSize="2">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="UEL" HeaderText="Used Eearned Leave" 
                    SortExpression="UEL" />
                <asp:BoundField DataField="REL" HeaderText="Remaining Earned Leave" 
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
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        <asp:Label ID="Label10" runat="server" 
            style="z-index: 1; left: 4px; top: 4px; position: absolute; font-size: x-large; font-weight: 700; color: #FFFFFF; width: 1266px; height: 31px; text-align: center; background-color: #000066" 
            Text="Leave Statistics"></asp:Label>
    </div>
</div>
</asp:Content>

