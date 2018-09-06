<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="PrincipalApprove.aspx.cs" Inherits="PrincipalApprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 198px; height: 43px; z-index: 1; left: 1061px; top: 275px; position: absolute">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
            
            
            
            SelectCommand="SELECT LeaveRequest.UID, LeaveRequest.Username, LeaveRequest.RDate, LoginDetail.Department, LoginDetail.Name, LeaveRequest.Designation, LeaveRequest.LeaveType, LeaveRequest.DateFrom, LeaveRequest.DateTo, LeaveRequest.Reason, LeaveRequest.TotalDay, LeaveRequest.NofLabo, LeaveRequest.NofLec, LeaveRequest.StationLP, LeaveRequest.Principal, LeaveRequest.PrincipalCurrent FROM LeaveRequest INNER JOIN LoginDetail ON LeaveRequest.Username = LoginDetail.Username WHERE LeaveRequest.HOD=@HOD AND LeaveRequest.Principal = @Principal">
            <SelectParameters>
                <asp:Parameter DefaultValue="Approved" Name="HOD" Type="String" />
                <asp:Parameter DefaultValue="NULL" Name="Principal" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="color: #FFFFFF; font-weight: 700; z-index: 1; left: 601px; top: 612px; position: absolute; width: 93px; height: 33px; background-color: #000066" 
        Text="Button" />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="White" 
        BorderStyle="Ridge" BorderWidth="2px" CellPadding="0" DataKeyNames="UID" 
        DataSourceID="SqlDataSource1" GridLines="None" 
        
    style="z-index: 1; left: 26px; top: 211px; position: absolute; width: 1277px; height: 70px; text-align: center;" 
    CellSpacing="1" PageSize="8">
        <Columns>
            <asp:BoundField DataField="UID" HeaderText="UID" ReadOnly="True" 
                SortExpression="UID" >
            </asp:BoundField>
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" >
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
            <asp:BoundField DataField="PrincipalCurrent" HeaderText="Principal" 
                SortExpression="PrincipalCurrent" />
            <asp:TemplateField HeaderText="Change" SortExpression="Principal">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Principal") %>'></asp:TextBox>
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
    <asp:Label ID="Label7" runat="server" 
        style="color: #FFFFFF; font-size: xx-large; z-index: 1; left: 26px; top: 173px; position: absolute; width: 1279px; text-align: center; background-color: #000066" 
        Text="Principal Approve"></asp:Label>
</asp:Content>

