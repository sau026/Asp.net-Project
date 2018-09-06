<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="RequestStatus.aspx.cs" Inherits="RequestStatus" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 218px; top: 218px; position: absolute; color: #000000; font-weight: 700; font-size: x-large; background-color: #FFFFFF" 
        Text="Track Your Status"></asp:Label>
    <asp:GridView ID="GridViewTrack" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" CellPadding="1" DataKeyNames="UID" 
        DataSourceID="SqlDataSource1" GridLines="None" 
        
        
        style="z-index: 1; left: 21px; top: 253px; position: absolute; height: 170px; width: 1282px; text-align: center;" 
        EmptyDataText="No Record Found For This Userid or Username" 
        Font-Bold="False" ForeColor="Black" PageSize="6" CellSpacing="1" >
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
            <asp:BoundField DataField="HOD" HeaderText="HOD" 
                SortExpression="HOD" />
            <asp:BoundField DataField="Principal" HeaderText="Principal" 
                SortExpression="Principal" />
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
    <asp:Label ID="LabelUID" runat="server" 
        style="z-index: 1; left: 1004px; top: 219px; position: absolute; font-weight: 700; color: #006600" 
        Text="Enter UID"></asp:Label>
    <asp:TextBox ID="TextBoxUID" runat="server" 
        style="z-index: 1; left: 1094px; top: 217px; position: absolute"></asp:TextBox>
    <asp:Label ID="Label22" runat="server" 
    style="font-size: x-large; font-weight: 700; color: #FFFFFF; z-index: 1; left: 26px; top: 535px; position: absolute; width: 1275px; height: 28px; background-color: #000066; text-align: center;" 
    Text="Leave Statistics"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="0" DataSourceID="SqlDataSource2" ForeColor="Black" 
        GridLines="None" PageSize="2" 
        
        style="z-index: 1; left: 26px; top: 568px; position: absolute; height: 110px; width: 1275px" 
        CellSpacing="1" 
        EmptyDataText="No Any Leave Has Been Taken">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="UEL" HeaderText="Used Earned Leave" 
                SortExpression="UEL" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="REL" HeaderText="Remaining Earned Leave" 
                SortExpression="REL" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="UCL" HeaderText="Used Casual Leave" 
                SortExpression="UCL" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="RCL" HeaderText="Remaining Casual Leave" 
                SortExpression="RCL" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="UML" HeaderText="Used Medical Leave" 
                SortExpression="UML" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="RML" HeaderText="Remaining Medical Leave" 
                SortExpression="RML" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="USL" HeaderText="Used Special Leave" 
                SortExpression="USL">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
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
    <div style="height: 112px; width: 192px; z-index: 1; left: 1066px; top: 274px; position: absolute">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
            
            
            SelectCommand="SELECT [UEL], [REL], [UCL], [RCL], [UML], [RML], [USL] FROM [LeaveRecord] WHERE ([Username] = @Username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxTrack" Name="Username" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
            
            
            
            
            
            
            
            SelectCommand="SELECT LeaveRequest.UID, LeaveRequest.Username, LeaveRequest.RDate, LoginDetail.Department, LoginDetail.Name, LeaveRequest.Designation, LeaveRequest.LeaveType, LeaveRequest.DateFrom, LeaveRequest.DateTo, LeaveRequest.Reason, LeaveRequest.TotalDay, LeaveRequest.NofLabo, LeaveRequest.NofLec, LeaveRequest.StationLP, LeaveRequest.HOD, LeaveRequest.Principal FROM LeaveRequest INNER JOIN LoginDetail ON LeaveRequest.Username = LoginDetail.Username WHERE LeaveRequest.Username=@Username">
        <SelectParameters>
                <asp:ControlParameter ControlID="TextBoxTrack" Name="Username" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <asp:Label ID="Label7" runat="server" 
        style="color: #FFFFFF; font-size: xx-large; z-index: 1; left: 21px; top: 169px; position: absolute; width: 1281px; text-align: center; background-color: #000066" 
        Text="Request Status"></asp:Label>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
        style="position: absolute; z-index: 1; left: 1142px; top: 175px; height: 26px; width: 131px; color: #000000; font-weight: 700; background-color: #FFFF66" 
        Text="Generate Receipt" />
    <asp:TextBox ID="TextBoxTrack" runat="server" 
        
        
        
        style="z-index: 1; left: 453px; top: 218px; position: absolute; height: 24px; width: 191px; background-color: #FFFFCC" 
        ontextchanged="TextBoxTrack_TextChanged" ReadOnly="True"></asp:TextBox>
</asp:Content>

