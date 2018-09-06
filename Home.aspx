<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            font-size: xx-large;
            text-decoration: underline;
            color: #000000;
        }
        .style7
        {
            text-align: center;
        }
        .style8
        {
            font-size: x-large;
            color: #000000;
        }
        .style9
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/homepic.jpg" 
            
    
            
    
            
            style="z-index: 2; left: 30px; top: 171px; position: absolute; width: 721px; height: 523px" />
       
<asp:Label ID="Label7" runat="server" BackColor="Maroon" BorderColor="#FFFF66" 
    style="z-index: 1; left: 820px; top: 201px; position: absolute; height: 36px; width: 405px; font-size: xx-large; color: #CCFF99; text-align: center; background-color: #800000;" 
    Text="Online Staff leave planner"></asp:Label>
       
<asp:Label ID="LabelWelcome" runat="server" 
    
            
            style="z-index: 1; left: 995px; top: 175px; position: absolute; font-weight: 700; color: #003300; text-align: right; width: 302px;"></asp:Label>
       
        <asp:Panel ID="Panel1" runat="server" 
            style="z-index: 1; left: 784px; top: 280px; position: absolute; height: 40px; width: 484px; bottom: 461px; background-color: #FFFFFF" 
            Width="484px">
            <div class="style7">
                <span class="style6">Automated Your Institute with PML</span></div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" 
            style="z-index: 1; left: 803px; top: 372px; position: absolute; height: 135px; width: 413px; color: #000000; font-size: x-large; text-align: left">
            <ul style="text-align: left">
                <li class="style9"><span class="style8">Mature Web Based Application.</span></li>
                <li class="style9">No More offline Issue.</li>
                <li class="style9">No Need Payment.</li>
                <li class="style9">Login Required.</li>
                <li class="style9">Instant Service.</li>
            </ul>
            <p>
                &nbsp;</p>
        </asp:Panel>
       
</asp:Content>

