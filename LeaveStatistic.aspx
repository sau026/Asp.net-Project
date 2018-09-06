<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="LeaveStatistic.aspx.cs" Inherits="LeaveStatistic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <div style="width: 214px; height: 46px; position: absolute; z-index: 1; left: 1040px; top: 291px">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
            
            
            
            
            SelectCommand="SELECT LeaveRequest.UID, LeaveRequest.Username, LeaveRequest.RDate, LoginDetail.Department, LoginDetail.Name, LeaveRequest.Designation, LeaveRequest.LeaveType, LeaveRequest.DateFrom, LeaveRequest.DateTo, LeaveRequest.Reason, LeaveRequest.TotalDay, LeaveRequest.NofLabo, LeaveRequest.NofLec, LeaveRequest.StationLP, LeaveRequest.HOD, LeaveRequest.HODCurrent FROM LeaveRequest INNER JOIN LoginDetail ON LeaveRequest.Username = LoginDetail.Username WHERE LeaveRequest.HOD=@HOD">
            <SelectParameters>
                <asp:Parameter DefaultValue="Pending" Name="HOD" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click2" 
        style="z-index: 1; left: 610px; top: 621px; position: absolute; color: #FFFFFF; font-weight: 700; width: 108px; height: 32px; background-color: #000066" 
        Text="Submit" />
    <asp:Label ID="Label1" runat="server" 
        style="font-size: xx-large; color: #FFFFFF; z-index: 1; left: 27px; top: 173px; position: absolute; height: 35px; width: 1280px; text-align: center; background-color: #000066" 
        Text="HOD Approve"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="White" 
        BorderStyle="Ridge" BorderWidth="2px" CellPadding="0" DataKeyNames="UID" 
        DataSourceID="SqlDataSource1" GridLines="None" 
        
    style="z-index: 1; left: 34px; top: 210px; position: absolute; height: 88px; width: 1267px; text-align: center;" 
    CellSpacing="1">
        <Columns>
            <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" 
                SortExpression="UID" >
            </asp:BoundField>
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" >
            </asp:BoundField>
            <asp:BoundField DataField="RDate" HeaderText="RDate" 
                SortExpression="RDate" >
            </asp:BoundField>
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" >
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" >
            </asp:BoundField>
            <asp:BoundField DataField="Designation" HeaderText="Designation" 
                SortExpression="Designation" >
            </asp:BoundField>
            <asp:BoundField DataField="LeaveType" HeaderText="LeaveType" 
                SortExpression="LeaveType" >
            </asp:BoundField>
            <asp:BoundField DataField="DateFrom" HeaderText="DateFrom" 
                SortExpression="DateFrom" >
            </asp:BoundField>
            <asp:BoundField DataField="DateTo" HeaderText="DateTo" 
                SortExpression="DateTo" >
            </asp:BoundField>
            <asp:BoundField DataField="Reason" HeaderText="Reason" 
                SortExpression="Reason" >
            </asp:BoundField>
            <asp:BoundField DataField="TotalDay" HeaderText="TotalDay" 
                SortExpression="TotalDay" >
            </asp:BoundField>
            <asp:BoundField DataField="NofLabo" HeaderText="NofLabo" 
                SortExpression="NofLabo" >
            </asp:BoundField>
            <asp:BoundField DataField="NofLec" HeaderText="NofLec" 
                SortExpression="NofLec" >
            </asp:BoundField>
            <asp:BoundField DataField="StationLP" HeaderText="StationLP" 
                SortExpression="StationLP" />
            <asp:BoundField DataField="HODCurrent" HeaderText="HOD" 
                SortExpression="HODCurrent" />
            <asp:TemplateField HeaderText="Change" SortExpression="HOD">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("HOD") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Pending</asp:ListItem>
                        <asp:ListItem>Approved</asp:ListItem>
                        <asp:ListItem>Rejected</asp:ListItem>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
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
</asp:Content>


