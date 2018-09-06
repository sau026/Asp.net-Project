<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="LeaveRequest.aspx.cs" Inherits="LeaveRequest" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/StyleSheetLeaveReq.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 476px; width: 1277px; z-index: 1; left: 3px; top: 50px; position: relative; background-image: url('Image/2ddd.jpg'); background-color: #CCCCFF; font-weight: 700;">
        <asp:Label ID="Label8" runat="server" 
            style="z-index: 1; left: 693px; top: 84px; position: absolute; font-weight: 700" 
            Text="Request Date" CssClass="lbl"></asp:Label>
        <asp:Label ID="Label9" runat="server" CssClass="lbl" 
            style="top: 25px; left: 61px" Text="Department"></asp:Label>
        <asp:Label ID="Label10" runat="server" CssClass="lbl" 
            style="top: 27px; left: 690px" Text="Staff Member Name"></asp:Label>
        <asp:Label ID="Label11" runat="server" CssClass="lbl" 
            style="top: 163px; left: 61px" Text="Designation"></asp:Label>
        <asp:Label ID="Label13" runat="server" CssClass="lbl" 
            style="top: 233px; left: 63px" Text="Leave Date From"></asp:Label>
        <asp:Label ID="Label14" runat="server" CssClass="lbl" 
            style="top: 163px; left: 686px" Text="Select Leave Type"></asp:Label>
        <asp:Label ID="Label15" runat="server" CssClass="lbl" 
            style="top: 236px; left: 688px" Text="Leave Date To"></asp:Label>
        <asp:Button ID="BtnCancle" runat="server" CssClass="btn" Text="Cancel" 
            CausesValidation="False" TabIndex="11" />
        <asp:Button ID="BtnSubmit" runat="server" CssClass="btn" 
            style="top: 429px; left: 272px; color: #FFFFFF; font-weight: 700" 
            Text="Submit" onclick="BtnSubmit_Click" TabIndex="10" />
        <asp:TextBox ID="TxtBoxDate" runat="server" CssClass="txt" 
            style="top: 82px; left: 895px; right: 145px;" TabIndex="1"></asp:TextBox>
        <asp:TextBox ID="TxtBoxLDF" runat="server" CssClass="txt" 
            style="top: 232px; left: 274px; right: 766px;" 
            ontextchanged="TxtBoxLDF_TextChanged" AutoPostBack="True" TabIndex="4"></asp:TextBox>
        <asp:TextBox ID="TxtBoxLDT" runat="server" CssClass="txt" 
            style="top: 235px; left: 894px" ontextchanged="TxtBoxLDT_TextChanged" 
            AutoPostBack="True" TabIndex="5"></asp:TextBox>
        <asp:TextBox ID="TxtBoxRFL" runat="server" 
            
            
            
            
            style="z-index: 1; left: 272px; top: 305px; height:20px; position: absolute; width: 325px; border-radius:10px; background-color: #FFFFCC;" 
            TabIndex="6"></asp:TextBox>
        <asp:Label ID="LabelTLD" runat="server" 
            style="font-weight: 700; color: #000000; z-index: 1; left: 1026px; top: 412px; position: absolute" 
            Text="Total Day of Leave"></asp:Label>
        <asp:DropDownList ID="DDSLT" runat="server" CssClass="txt" 
            style="top: 161px; left: 895px" 
            onselectedindexchanged="DDSLT_SelectedIndexChanged" AutoPostBack="True" 
            TabIndex="3">
            <asp:ListItem>&lt;--Select Leave Type--&gt;</asp:ListItem>
            <asp:ListItem>Casual Leave</asp:ListItem>
            <asp:ListItem>Earned Leave</asp:ListItem>
            <asp:ListItem>Special Leave</asp:ListItem>
            <asp:ListItem>Medical Leave</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DDdesignation" runat="server" CssClass="txt" 
            style="top: 160px; left: 273px" 
            onselectedindexchanged="DDdesignation_SelectedIndexChanged" TabIndex="2">
            <asp:ListItem>&lt;--Select Designation--&gt;</asp:ListItem>
            <asp:ListItem>HOD</asp:ListItem>
            <asp:ListItem>Principal</asp:ListItem>
            <asp:ListItem>Director</asp:ListItem>
            <asp:ListItem>Professor</asp:ListItem>
            <asp:ListItem>Associate Professor</asp:ListItem>
            <asp:ListItem>Assistant Professor</asp:ListItem>
            <asp:ListItem>Technical Assistant</asp:ListItem>
            <asp:ListItem>Admin Staff</asp:ListItem>
        </asp:DropDownList>
        <asp:ImageButton ID="ImgBtnCalender3" runat="server" ImageUrl="~/Image/cal.png" 
            
            style="z-index: 1; left: 1116px; top: 232px; position: absolute; height: 30px; width: 45px; right: 97px;" 
            CausesValidation="False" onclick="ImgBtnCalender3_Click" />
        <asp:ImageButton ID="imgBtnCalender1" runat="server" ImageUrl="~/Image/cal.png" 
            
            style="z-index: 1; left: 1116px; top: 77px; position: absolute; height: 30px; width: 45px; right: 97px;" 
            CausesValidation="False" onclick="imgBtnCalender1_Click" />
        <asp:ImageButton ID="ImgBtnCalender2" runat="server" ImageUrl="~/Image/cal.png" 
            
            style="z-index: 1; left: 497px; top: 228px; position: absolute; height: 30px; width: 45px; right: 716px;" 
            CausesValidation="False" onclick="ImgBtnCalender2_Click" />
        <asp:Calendar ID="CalendarDate" runat="server" BackColor="White" 
            BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
            ForeColor="#003399" onselectionchanged="Calendar1_SelectionChanged" 
            style="z-index: 1; left: 1111px; top: 107px; position: absolute; height: 133px; width: 142px" 
            Visible="False">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <asp:Calendar ID="CalendarLDF" runat="server" BackColor="White" 
            BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
            ForeColor="#003399" onselectionchanged="CalendarLDF_SelectionChanged" 
            style="z-index: 1; left: 542px; top: 228px; position: absolute; height: 118px; width: 141px" 
            Visible="False" Height="200px" Width="220px">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <asp:Calendar ID="CalendarLDT" runat="server" BackColor="White" 
            BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
            ForeColor="#003399" Height="200px" 
            onselectionchanged="CalendarLDT_SelectionChanged" 
            style="z-index: 1; left: 1110px; top: 263px; position: absolute; height: 105px; width: 149px" 
            Visible="False" Width="220px">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="DDdesignation" ErrorMessage="*Required" 
            InitialValue="&lt;--Select Designation--&gt;" 
            
            style="z-index: 1; left: 487px; top: 161px; position: absolute; color: #FF0000; right: 708px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TxtBoxDate" ErrorMessage="*Required" 
            
            
            style="z-index: 1; left: 1162px; top: 80px; position: absolute; color: #FF0000"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TxtBoxLDF" ErrorMessage="*Required" 
            
            style="z-index: 1; left: 545px; top: 235px; position: absolute; color: #FF0000; right: 650px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="DDSLT" ErrorMessage="*Required" 
            InitialValue="&lt;--Select Leave Type--&gt;" 
            
            style="z-index: 1; left: 1113px; top: 163px; position: absolute; color: #FF0000; right: 82px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TxtBoxLDT" ErrorMessage="*Required" 
            
            style="z-index: 1; left: 1169px; top: 244px; position: absolute; color: #FF0000; right: 19px; height: 19px;"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TxtBoxRFL" ErrorMessage="*Required" 
            
            style="z-index: 1; left: 613px; top: 308px; position: absolute; color: #FF0000; right: 582px"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TxtBoxLDF" ErrorMessage="Wrong Format" 
            style="color: #FF0000; z-index: 1; left: 546px; top: 235px; position: absolute" 
            ValidationExpression="^\d{1,2}\/\d{1,2}\/\d{4}$" 
            ValidationGroup="DateValidate"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TxtBoxDate" ErrorMessage="Wrong Format" 
            style="color: #FF0000; z-index: 1; left: 1165px; top: 80px; position: absolute; width: 69px;" 
            ValidationExpression="^\d{1,2}:\d{2}([ap]m)?$" 
            ValidationGroup="DateValidate"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="TxtBoxLDT" ErrorMessage="Wrong Format" 
            style="color: #FF0000; z-index: 1; left: 1164px; top: 242px; position: absolute; width: 71px;" 
            ValidationExpression="^\d{1,2}:\d{2}([ap]m)?$" 
            ValidationGroup="DateValidate"></asp:RegularExpressionValidator>
        <ajaxToolkit:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server" 
            BalloonPopupControlID="panel1" DisplayOnFocus="True" 
            TargetControlID="TxtBoxRFL">
        </ajaxToolkit:BalloonPopupExtender>
        <asp:Panel ID="Panel1" runat="server" 
            
            
            
            
            
            style="z-index: 1; left: 1076px; top: -24px; position: absolute; height: 98px; width: 164px; text-decoration: underline; background-color: #FFFF99; color: #000066;">
            <asp:Label ID="Label18" runat="server" 
                Text="Mention at least one reason for leave between 1-99 character" 
                
                style="z-index: 1; left: 8px; top: 22px; position: absolute; height: 55px; width: 145px; background-color: #FFFF99; bottom: 12px;" 
                Font-Underline="False"></asp:Label>
        </asp:Panel>
        <asp:Label ID="LblDept" runat="server" 
            style="z-index: 1; left: 278px; top: 20px; position: absolute; right: 918px; font-size: x-large; height: 26px" 
            Text="Label"></asp:Label>
        <asp:Label ID="LabelSMN" runat="server" 
            style="z-index: 1; left: 896px; top: 22px; position: absolute; font-size: x-large" 
            Text="Label"></asp:Label>
        <asp:Label ID="Label20" runat="server" CssClass="lbl" 
            style="top: 377px; left: 64px" Text="No. of Lecturer  Classes Arranged"></asp:Label>
        <asp:Label ID="Label16" runat="server" Text="Reason for Leave" 
            
            style="color: #000000; font-size: large; z-index: 1; left: 62px; top: 306px; position: absolute"></asp:Label>
        <asp:DropDownList ID="DDNLabo" runat="server" CssClass="txt" 
            style="top: 302px; left: 894px" TabIndex="7">
            <asp:ListItem>&lt;--Select--&gt;&gt;</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DDNLec" runat="server" CssClass="txt" 
            style="top: 374px; left: 271px" TabIndex="8">
            <asp:ListItem>&lt;--Select--&gt;&gt;</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DDSLP" runat="server" CssClass="txt" 
            style="top: 374px; left: 893px" TabIndex="9">
            <asp:ListItem>&lt;--Select--&gt;&gt;</asp:ListItem>
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="LabelUID" runat="server" 
            style="z-index: 1; left: 1160px; top: 445px; position: absolute" Text="L"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Label ID="LabelTLDay" runat="server" 
            
            style="z-index: 1; left: 1168px; top: 409px; position: absolute; font-size: x-large"></asp:Label>
        <asp:Label ID="LabelUserid" runat="server" 
            style="z-index: 1; left: 278px; top: 83px; position: absolute; font-size: x-large" 
            Text="Label"></asp:Label>
        <asp:Label ID="Label19" runat="server" 
            style="color: #000000; font-size: large; z-index: 1; left: 62px; top: 86px; position: absolute; right: 1152px" 
            Text="Userid"></asp:Label>
        <asp:Label ID="Label21" runat="server" CssClass="lbl" 
            Text="No. of Laboratory Classes Arranged"></asp:Label>
        <asp:Label ID="Label22" runat="server" CssClass="lbl" 
            style="z-index: 1; left: 693px; top: 376px; position: absolute; color: #000000" 
            Text="Station Leaving Permission"></asp:Label>
    </div>
    <p style="height: 39px; background-color: #FFFFFF; background-image: url('Image/green%20linear%20yellow%20gradient%20lime%20green%20lemon%20chiffon%202560x1800%20#32cd32'); width: 1281px;">
        <asp:Label ID="Label7" runat="server" 
            style="font-size: xx-large; font-weight: 700; color: #FFFFFF; z-index: 1; left: 24px; top: 173px; position: absolute; width: 1282px; text-align: center; background-color: #000066" 
            Text="Leave Details"></asp:Label>
    </p>
</asp:Content>

