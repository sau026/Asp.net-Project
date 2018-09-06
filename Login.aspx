<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="css/StyleSheet1.css" />
    <style type="text/css">
        .style6
        {
            width: 43%;
            position: relative;
            top: -263px;
            left: 347px;
            height: 246px;
        }
        .style7
        {
            height: 52px;
        }
        .style9
        {
            height: 36px;
        }
        .style10
        {
            width: 194px;
        }
        .style13
        {
            width: 127px;
            height: 34px;
        font-weight: bold;
        color: #000000;
    }
        .style14
        {
            width: 194px;
            height: 34px;
        }
        .style15
        {
            width: 127px;
            height: 25px;
        }
        .style16
        {
            width: 194px;
            height: 25px;
        }
        .style17
        {
        width: 127px;
        font-weight: bold;
        color: #000000;
    }
        .style18
        {
            border-radius: 15px;
            height: 27px;
            width: 210px;
            background-color: #FFFFCC;
            position: relative;
            top: 2px;
            left: 1px;
        }
        .style19
        {
            color: #FF0000;
        }
    .style20
    {
        width: 127px;
        height: 33px;
        font-weight: bold;
        color: #000000;
    }
    .style21
    {
        width: 194px;
        height: 33px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p style="height: 523px; background-color: #FFFFFF; width: 1277px; margin-top: 0px;">
        <asp:Label ID="Label7" runat="server" 
            style="position: absolute; z-index: 1; left: 722px; top: 202px; font-size: x-large; width: 547px; font-weight: 700; color: #660033; background-color: #FFFFFF; text-align: center;" 
            Text="Enter The UserName And Password To Login"></asp:Label>
        <table class="style6" 
            
            
            style="background-image: url('Image/cloud-sky-background_23-2147581798.jpg'); position: absolute; top: 321px; left: 747px; width: 374px; height: 267px; z-index: 2;">
            <tr>
                <td class="style7" colspan="2" align="center">
                    <asp:Label ID="Label8" runat="server" 
                        style="font-weight: 700; font-size: xx-large; position: absolute; z-index: 1; left: 2px; top: 1px; width: 370px; color: #FFFFFF; background-color: #000066; text-align: center; height: 38px;" 
                        Text="User Login"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style17" align="center">
                    Select Department</td>
                <td class="style10">
                    <asp:DropDownList ID="DDselectdept" runat="server" CssClass="style18">
                        <asp:ListItem>&lt;--Select Department---&gt;</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>Principal</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Director</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style17" align="center">
                    Select Role</td>
                <td class="style10">
                    <asp:DropDownList ID="DDSelectRole" runat="server" CssClass="style18">
                        <asp:ListItem>&lt;--Select Role--&gt;</asp:ListItem>
                        <asp:ListItem>HOD</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Principal</asp:ListItem>
                        <asp:ListItem>Staff Member</asp:ListItem>
                        <asp:ListItem>Director</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style13" align="center">
                    Username</td>
                <td class="style14">
                    <asp:TextBox ID="txtboxUN" runat="server" CssClass="style18"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style20" align="center">
                    Password</td>
                <td class="style21">
                    <asp:TextBox ID="txtBoxPass" runat="server" CssClass="style18" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9" colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CssClass="btn" 
                        style="position: absolute; top: 206px; left: 256px; font-weight: 700;" 
                        Text="Cancel" />
                    <asp:Button ID="Button2" runat="server" CssClass="btn" 
                        style="position: absolute; top: 206px; left: 141px; font-weight: 700;" 
                        Text="Login" onclick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="style15" align="center">
                    &nbsp;</td>
                <td class="style16">
                    <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" 
                        
                        
                        style="z-index: 1; left: 227px; top: 247px; position: absolute; font-weight: 700; font-size: large" 
                        onclick="LinkButton4_Click">ForgotPassword</asp:LinkButton>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label13" runat="server" 
            style="z-index: 1; left: 864px; top: 637px; position: absolute; width: 255px; font-weight: 700; font-size: large; color: #000000; background-color: #FFFFFF; height: 22px;" 
            Text="Create A New Account"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtBoxPass" CssClass="style19" 
            ErrorMessage="*This Field is Required" 
            style="position: absolute; z-index: 1; left: 1126px; top: 494px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="DDselectdept" CssClass="style19" 
            ErrorMessage="*This Field is Required" 
            InitialValue="&lt;--Select Department---&gt;" 
            style="position: absolute; z-index: 1; left: 1127px; top: 387px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="DDSelectRole" CssClass="style19" 
            ErrorMessage="*This Field is Required" InitialValue="&lt;--Select Role--&gt;" 
            style="position: absolute; z-index: 1; left: 1127px; top: 422px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtboxUN" CssClass="style19" 
            ErrorMessage="*This Field is Required" 
            style="position: absolute; z-index: 1; left: 1126px; top: 461px"></asp:RequiredFieldValidator>
        <asp:Button ID="Button3" runat="server" CssClass="btn" 
            style="z-index: 1; left: 756px; top: 628px; position: absolute; font-weight: 700" 
            Text="Register" onclick="Button3_Click1" CausesValidation="False" />
        <asp:Image ID="Image2" runat="server" 
            ImageUrl="~/Image/leavemangt.jpg" Width="685px" 
            
            
            
            style="background-color: #800000; z-index: 1; left: 29px; top: 172px; position: absolute; height: 520px;" />
    </p>

</asp:Content>


