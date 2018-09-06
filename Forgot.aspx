<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Forgot.aspx.cs" Inherits="Forgot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        .style10
        { 
            width: 100%;
            height: 508px;
            border-color:#9e9e9e;
            position: relative;
        }
        .style7
        {
            height: 34px;
            text-decoration: underline;
            font-size: x-large;
        }
        .style14
        {
            height: 36px;
            color: #000000;
        }
        .style15
        {
            height: 26px;
        }
        .style16
        {
            height: 39px;
        }
        .style17
        {
            height: 25px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style10" border="1px">
        <tr>
            <td style="background-color: #FFFFFF">
                <table align="left" class="style5" 
                    
                    
                    
                    style="width: 595px; z-index: 1; left: 72px; top: 46px; position: absolute; height: 311px">
                    <tr>
                        <td class="style7">
                            <strong class="psc">Can&#39;t login? Forget your password?</strong></td>
                    </tr>
                    <tr>
                        <td class="style14">
                            Enter your username &amp; email address below which is registered in your account and we&#39;ll show your password.</td>
                    </tr>
                    <tr>
                        <td class="style15">
                            <strong style="color: #000000">Enter your Username</strong></td>
                    </tr>
                    <tr>
                        <td class="style16">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBoxUN" ErrorMessage="Enter Your Username" 
                                style="z-index: 1; left: 219px; top: 117px; position: absolute; color: #FF0000"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style17">
                            <asp:TextBox ID="TextBoxUN" runat="server" 
                                style="z-index: 1; left: 3px; top: 115px; position: absolute; width: 193px; height: 25px" 
                                TabIndex="1"></asp:TextBox>
                            <strong style="color: #000000">Enter your Email Address </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" 
                                style="top: 221px; left: 3px; border-radius:15px; background-color: #FF6600; z-index: 1; position: absolute;" 
                                Text="Show Me Password" Height="37px" onclick="Button2_Click" TabIndex="3" 
                                Width="131px" />
                            <asp:Button ID="Button3" runat="server" 
                                style="z-index: 1; left: 3px; border-bottom:3px solid black; top: 261px; position: absolute; border-radius:15px; width: 347px; height: 39px; font-weight: 700; background-color: #0099FF;" 
                                Text="Click Here If you dont know your Email Address" 
                                CausesValidation="False" onclick="Button3_Click" TabIndex="4" />
                            <asp:TextBox ID="TextBoxfrgtpass" runat="server" Height="26px" Width="395px" 
                                style="z-index: 1; left: 3px; top: 179px; position: absolute" TabIndex="2"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/forgot_pass.jpg" 
                    style="position: relative; top: 5px; left: 895px; height: 246px; width: 240px" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxfrgtpass" ErrorMessage="Invalid Email" 
                    style="z-index: 1; left: 508px; top: 230px; position: absolute; color: #FF0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxfrgtpass" ErrorMessage="Enter Your Email" 
                    style="z-index: 1; left: 507px; top: 230px; position: absolute; color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                <div style="width: 501px; height: 113px; position: absolute; top: 382px; left: 70px; z-index: 1;">
                <asp:Label ID="Labelpass" runat="server" 
                    style="color: #000000; font-weight: 700; font-size: x-large; position: absolute; z-index: 1; left: 11px; top: 7px" 
                    Text="Your Current PlanMyLeave Password:-" Visible="False"></asp:Label>
                    <asp:TextBox ID="TextBoxnewpass" runat="server" 
                        
                        
                        style="position: absolute; top: 44px; left: 14px; height: 22px; width: 174px; z-index: 1; text-align: center;" 
                        Visible="False"></asp:TextBox>
                </div>
                <asp:Label ID="Labelmessage" runat="server" 
                    style="z-index: 1; left: 79px; top: 467px; position: absolute; font-weight: 700; color: #006600" 
                    Text="Your Password Has Been Sent To Your Mail" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

