<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Director.aspx.cs" Inherits="Director" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 38px; width: 1280px; position: absolute; top: 169px; left: 26px; z-index: 1">
        <asp:Label ID="Label7" runat="server" 
            style="font-size: xx-large; font-weight: 700; color: #FFFFFF; z-index: 1; left: 0px; top: 0px; position: absolute; width: 1278px; text-align: center; background-color: #000066" 
            Text="Director Approval"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" 
            
            style="z-index: 1; left: 13px; top: 42px; position: absolute; height: 133px; width: 1260px; text-align: center;" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" 
            BorderStyle="None" BorderWidth="1px" CellPadding="0" 
            DataSourceID="SqlDataSource1" GridLines="Horizontal" DataKeyNames="UID">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="UID" HeaderText="UID" 
                    SortExpression="UID" ReadOnly="True" />
                <asp:BoundField DataField="Username" HeaderText="Username" 
                    SortExpression="Username" />
                <asp:BoundField DataField="RDate" HeaderText="RDate" 
                    SortExpression="RDate" />
                <asp:BoundField DataField="Department" HeaderText="Department" 
                    SortExpression="Department" />
                <asp:BoundField DataField="Name" HeaderText="Name" 
                    SortExpression="Name" />
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
                <asp:BoundField DataField="DirectorCurrent" HeaderText="Director" 
                    SortExpression="DirectorCurrent" />
                <asp:TemplateField HeaderText="Change" SortExpression="Director">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Director") %>'></asp:TextBox>
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
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" 
            style="z-index: 1; left: 568px; top: 456px; position: absolute; color: #FFFFFF; font-weight: 700; width: 91px; height: 32px; background-color: #000066" 
            Text="Submit" onclick="Button1_Click" />
        <div style="z-index: 1; left: 900px; top: 63px; position: absolute; height: 131px; width: 233px">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:UserDataConnectionString %>" 
                
                 SelectCommand="SELECT LeaveRequest.UID, LeaveRequest.Username, LeaveRequest.RDate, LoginDetail.Department, LoginDetail.Name, LeaveRequest.Designation, LeaveRequest.LeaveType, LeaveRequest.DateFrom, LeaveRequest.DateTo, LeaveRequest.Reason, LeaveRequest.TotalDay, LeaveRequest.NofLabo, LeaveRequest.NofLec, LeaveRequest.StationLP, LeaveRequest.Director, LeaveRequest.DirectorCurrent FROM LeaveRequest INNER JOIN LoginDetail ON LeaveRequest.Username = LoginDetail.Username WHERE LeaveRequest.Principal = @Principal AND Director = @Director">
                <SelectParameters>
                    <asp:Parameter DefaultValue="-" Name="Principal" Type="String" />
                    <asp:Parameter DefaultValue="NULL" Name="Director" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

