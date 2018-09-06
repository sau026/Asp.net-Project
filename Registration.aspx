<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="css/StyleSheet1.css" />
    <style type="text/css">
        .style10
        {
            width: 886px;
            z-index: 1;
            left: 32px;
            top: 238px;
            position: absolute;
            height: 416px;
        }
        .style11
        {
            width: 132px;
        }
        .style12
        {
            width: 147px;
            font-weight: 700;
            color: #000000;
        }
        .style15
        {
            width: 147px;
            color: #000000;
            height: 11px;
        }
        #Reset1
        {
            z-index: 1;
            left: 721px;
            top: 301px;
            position: absolute;
            font-weight: 700;
        }
        .style18
        {
            width: 293px;
        }
        .style20
        {
            width: 132px;
            height: 40px;
            font-weight: 700;
            color: #000000;
            text-align: center;
        }
        .style61
        {
            width: 132px;
            font-weight: bold;
            color: #000000;
            font-size: medium;
            height: 11px;
        }
        .style62
        {
            width: 293px;
            height: 11px;
        }
        .style63
        {
            height: 11px;
        }
        .style74
        {
            width: 147px;
            font-weight: bold;
            color: #000000;
            font-size: medium;
            height: 40px;
        }
        .style77
        {
            height: 40px;
        }
        .style78
        {
            width: 132px;
            font-weight: bold;
            color: #000000;
            font-size: medium;
            height: 40px;
        }
        .style79
        {
            width: 293px;
            height: 40px;
        }
        .style81
        {
            width: 147px;
            font-weight: 700;
            color: #000000;
            height: 40px;
        }
        .style82
        {
            width: 132px;
            height: 40px;
            font-weight: 700;
            text-align: center;
            color: #000000;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Reset1_onclick() {
       
        }

        function Reset1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 522px; width: 1278px">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Image/aaasa.png" 
            
            
            
            
            style="z-index: 1; left: 923px; top: 98px; position: relative; height: 388px; width: 351px" />
        <table class="style10" 
            style="background-image: url('Image/cloud-sky-background_23-2147581798.jpg')">
            <tr>
                <td align="center" class="style78">
                    Username</td>
                <td class="style79">
                    <asp:TextBox ID="txtUN" runat="server" CssClass="txt" AutoPostBack="True" 
                        ontextchanged="txtUN_TextChanged" TabIndex="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUN" ErrorMessage="*Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td align="center" class="style74">
                    Role</td>
                <td class="style77">
                    <asp:DropDownList ID="DDRole" runat="server" CssClass="txt" AutoPostBack="True" 
                        onselectedindexchanged="DDRole_SelectedIndexChanged" TabIndex="10">
                        <asp:ListItem>&lt;--Select Role--&gt;</asp:ListItem>
                        <asp:ListItem>Principal</asp:ListItem>
                        <asp:ListItem>HOD</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Staff Member</asp:ListItem>
                        <asp:ListItem>Director</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="DDRole" ErrorMessage="*Required" 
                        InitialValue="&lt;--Select Role--&gt;" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style78">
                    Your Name</td>
                <td class="style79">
                    <asp:TextBox ID="txtName" runat="server" CssClass="txt" TabIndex="2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="*Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td align="center" class="style74">
                    Password</td>
                <td class="style77">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="txt" TextMode="Password" 
                        TabIndex="11"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="*Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style78">
                    Your Email</td>
                <td class="style79">
                    <asp:TextBox ID="txtboxemail" runat="server" CssClass="txt" AutoPostBack="True" 
                        TabIndex="3"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="txtboxemail" ErrorMessage="*Required" 
                        
                        style="position: absolute; z-index: 1; left: 370px; top: 96px; color: #FF0000; width: 64px"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtboxemail" ErrorMessage="Incorrect" style="color: #FF0000" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td align="center" class="style74">
                    Confirm Password</td>
                <td class="style77">
                    <asp:TextBox ID="txtCPass" runat="server" CssClass="txt" TextMode="Password" 
                        TabIndex="12"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtCPass" 
                        ErrorMessage="*Pass Not Matched" 
                        
                        
                        style="color: #FF0000; z-index: 1; left: 812px; top: 90px; position: absolute; height: 35px;"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="txtCPass" ErrorMessage="*Required" 
                        
                        
                        style="z-index: 1; left: 806px; top: 91px; position: absolute; color: #FF0000; height: 19px; width: 66px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style61">
                    Mobile No.</td>
                <td class="style62">
                    <asp:TextBox ID="txtMob" runat="server" CssClass="txt" TabIndex="4"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtMob" ErrorMessage="*Required" style="color: #FF0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtMob" ErrorMessage="Only Number" 
                        style="z-index: 1; left: 370px; top: 138px; position: absolute; width: 102px; color: #FF0000" 
                        ValidationExpression="^[0-9]*$" ValidationGroup="NumericValidate"></asp:RegularExpressionValidator>
                </td>
                <td align="center" class="style15">
                    <strong>Captcha</strong></td>
                <td class="style63">
                    <cc1:CaptchaControl ID="CaptchaControl1" runat="server" Width="201px" />
                </td>
            </tr>
            <tr>
                <td align="center" class="style78">
                    Gender</td>
                <td class="style79">
                    <asp:DropDownList ID="DDGender" runat="server" CssClass="txt" TabIndex="5">
                        <asp:ListItem>&lt;--Select Sex--&gt;</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="DDGender" ErrorMessage="*Required" 
                        InitialValue="&lt;--Select Sex--&gt;" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td align="center" class="style81">
                    Enter the Captcha</td>
                <td class="style77">
                    <asp:TextBox ID="txtBoxcaptcha" runat="server" CssClass="txt" 
                        ontextchanged="txtBoxcaptcha_TextChanged" TabIndex="13"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtBoxcaptcha" ErrorMessage="*Required" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" class="style78">
                    Country</td>
                <td class="style79">
                    <asp:DropDownList ID="DDCountry" runat="server" CssClass="txt" TabIndex="6">
                        <asp:ListItem>&lt;--Select Country--&gt;</asp:ListItem>
                        <asp:ListItem>Usa</asp:ListItem>
                        <asp:ListItem>Australia</asp:ListItem>
                        <asp:ListItem>Japan</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Pakistan</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DDCountry" ErrorMessage="*Required" 
                        InitialValue="&lt;--Select Country--&gt;" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td class="style81">
                    </td>
                <td rowspan="2">
                    <asp:Button ID="Button1" runat="server" CssClass="btn" onclick="Button1_Click" 
                        style="z-index: 1; left: 599px; top: 300px; position: absolute; font-weight: 700" 
                        Text="Submit" TabIndex="14" />
                    <input id="Reset1" class="btn" type="reset" value="reset" 
                        onclick="return Reset1_onclick()" onclick="return Reset1_onclick()" 
                        tabindex="15" /><asp:Label 
                        ID="CaptchaLabel" runat="server" 
                        style="z-index: 1; left: 746px; top: 247px; position: absolute; width: 52px; font-weight: 700; font-size: large" 
                        Visible="False">Label</asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" class="style78">
                    City</td>
                <td class="style79">
                    <asp:DropDownList ID="DropDownListCity" runat="server" CssClass="txt" 
                        TabIndex="7">
                        <asp:ListItem>&lt;--Select City--&gt;</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                        <asp:ListItem>New Delhi</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Bengaluru</asp:ListItem>
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="DropDownListCity" ErrorMessage="*Required" 
                        InitialValue="&lt;--Select City--&gt;" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td class="style81">
                    </td>
            </tr>
            <tr>
                <td class="style20">
                    Zip Code</td>
                <td class="style79">
                    <asp:TextBox ID="TextBoxZip" runat="server" CssClass="txt" TabIndex="8"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldZipCode" runat="server" 
                        ControlToValidate="TextBoxZip" ErrorMessage="*Required" 
                        style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td class="style81">
                    </td>
                
            </tr>
            <tr>
                <td class="style82">
                    Department</td>
                <td class="style79">
                    <asp:DropDownList ID="DDDepartment" runat="server" CssClass="txt" TabIndex="9">
                        <asp:ListItem>&lt;--Select Department--&gt;</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>MBA</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>Principal</asp:ListItem>
                        <asp:ListItem>HOD</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Staff Member</asp:ListItem>
                        <asp:ListItem>Director</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DDDepartment" ErrorMessage="*Required" 
                        InitialValue="&lt;--Select Department--&gt;" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
                <td class="style81">
                    </td>
                <td class="style77">
                </td>
                
            </tr>
            <tr>
                <td class="style11">
                    &nbsp;</td>
                <td class="style18">
                    <ajaxToolkit:PasswordStrength ID="PasswordStrength1" runat="server" 
                        MinimumNumericCharacters="1" MinimumSymbolCharacters="1" 
                        MinimumUpperCaseCharacters="1" TargetControlID="txtPassword" />
                    <asp:Label ID="LabelEmail" runat="server" 
                        
                        style="z-index: 1; left: 908px; top: 417px; position: absolute; height: 19px; width: 327px; font-weight: 700; color: #006600"></asp:Label>
                </td>
                <td class="style12">
                    &nbsp;</td>
                <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
                    &nbsp;</td>
                
            </tr>
        </table>
        <asp:Label ID="Label7" runat="server" 
            style="z-index: 1; left: 33px; top: 199px; position: absolute; font-size: xx-large; font-weight: 700; width: 887px; color: #FFFFFF; text-align: left; margin-bottom: 6px; background-color: #000066" 
            Text="SignUp"></asp:Label>
             <ajaxToolkit:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server" 
            BalloonPopupControlID="panel1" DisplayOnFocus="True" 
            TargetControlID="txtBoxcaptcha">
        </ajaxToolkit:BalloonPopupExtender>
        <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 1118px; top: 184px; position: absolute; height: 89px; width: 164px; text-decoration: underline; background-color: #FFFF99; color: #000066;">
            <asp:Label ID="Label18" runat="server" 
                Text="Enter the Above Captcha" 
                
                style="z-index: 1; left: 9px; top: 24px; position: absolute; height: 55px; width: 145px; background-color: #FFFF99; bottom: 10px; font-weight: 700;" 
                Font-Underline="False"></asp:Label>
        </asp:Panel>
    </p>
</asp:Content>

