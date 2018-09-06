<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Receipt.aspx.cs" Inherits="Receipt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function printDiv(divName) {
            var printContents = document.getElementById(divName).innerHTML;
            var originalContents = document.body.innerHTML;

            document.body.innerHTML = printContents;

            window.print();

            document.body.innerHTML = originalContents;
        }</script>
    <style type="text/css">
        .style1
        {
            background-color: #C0C0C0;
        }
    </style>
</head>
<body style="height: 884px">
    <form id="form1" runat="server">
    <div style="height: 844px; text-align: center" >
    
        <div style="width: 973px; left:208px; position:relative; top: 0px; height:700px; width:900px; background-color: #FFFFFF; text-align: left; border:2px solid black" 
            id="printableArea" >
    
            <div style="position: relative; top: 4px; left: 5px; height: 91px; text-align: center; width: 890px; background-color: #C0C0C0">
                <asp:Label ID="Label2" runat="server" 
                    style="font-size: xx-large; font-weight: 700; z-index: 1; left: 404px; top: 25px; position: absolute" 
                    Text="Leave Approval Receipt"></asp:Label>
                <asp:Image ID="Image1" runat="server" 
                    ImageUrl="~/Image/fef05ccd-a392-4cb2-aade-4eef1bc22961.png" 
                    style="position: relative; top: 4px; left: -355px; height: 83px; width: 87px" />
            </div>
            <div style="position: relative; top: 561px; left: 5px; width:890px; height: 43px; background-color: #C0C0C0;">
                <asp:Label ID="Label3" runat="server" 
                    style="font-size: x-large; font-weight: 700; z-index: 1; left: 761px; top: 8px; position: absolute" 
                    Text="Thank You"></asp:Label>
            </div>
            <div style="width: 344px; height: 26px; position: relative; top: -183px; left: 555px">
                <asp:Label ID="Label5" runat="server" 
                    
                    style="font-size: large; font-weight: 700; z-index: 1; left: 0px; top: 3px; position: absolute;" 
                    Text="Requested Date:-"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" 
                    style="z-index: 1; left: 142px; top: 3px; position: absolute; width: 180px; height: px"></asp:TextBox>
            </div>
            <p style="font-weight: 700; width: 845px; z-index: 1; left: 51px; top: 217px; position: absolute; height: 40px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                In Accordance With Institute Rule, We have Evaluated Your Requested Leave of 
                Absence and I am Happy To Grant Your Approval&nbsp;. &nbsp;<br />
                <br /></p>
                <p style="z-index: 1; left: 51px; top: 286px; position: absolute; height: 21px; width: 846px; font-weight: 700">
                You Are Hereby Granted Leave Between The Following Date:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelDFrom" runat="server" 
                        
                        style="z-index: 1; left: 439px; top: 0px; position: absolute; font-style: italic; background-color: #C0C0C0;" 
                        Text="Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
                    To&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    .&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelDTo" runat="server" 
                        
                        style="z-index: 1; left: 644px; top: 0px; position: absolute; font-style: italic; background-color: #C0C0C0;" 
                        Text="Date"></asp:Label>
            </p>
            <p style="z-index: 1; left: 8px; top: 332px; position: absolute; height: 145px; width: 883px; border:1px solid black">
                <asp:Label ID="Label13" runat="server" 
                    style="font-weight: 700; font-size: large; z-index: 1; left: 80px; top: 23px; position: absolute" 
                    Text="Department:-"></asp:Label>
                <asp:TextBox ID="TextBoxDept" runat="server" 
                    
                    style="z-index: 1; left: 193px; top: 19px; position: absolute; height: 22px; width: 170px; text-align: center;"></asp:TextBox>
                <asp:Label ID="Label14" runat="server" 
                    style="font-size: large; font-weight: 700; z-index: 1; left: 527px; top: 21px; position: absolute; right: 270px" 
                    Text="Designation:-"></asp:Label>
                <asp:Label ID="Label15" runat="server" 
                    style="font-weight: 700; z-index: 1; left: 542px; top: 60px; position: absolute; font-size: large" 
                    Text="Total Day:-"></asp:Label>
                <asp:TextBox ID="TextBoxDesi" runat="server" ontextchanged="TextBox5_TextChanged" 
                    
                    style="z-index: 1; left: 643px; top: 18px; position: absolute; height: 22px; width: 170px; text-align: center;"></asp:TextBox>
                <asp:Label ID="Label16" runat="server" 
                    style="font-weight: 700; z-index: 1; left: 83px; top: 62px; position: absolute; font-size: large" 
                    Text="Leave Type:-"></asp:Label>
                <asp:TextBox ID="TextBoxStatus" runat="server" ontextchanged="TextBox6_TextChanged" 
                    
                    style="z-index: 1; left: 192px; top: 103px; position: absolute; height: 22px; width: 170px; text-align: center;"></asp:TextBox>
                <asp:TextBox ID="TextBoxTD" runat="server" ontextchanged="TextBox5_TextChanged" 
                    
                    style="z-index: 1; left: 643px; top: 59px; position: absolute; height: 22px; width: 170px; text-align: center;"></asp:TextBox>
                <asp:Label ID="Label17" runat="server" 
                    style="font-weight: 700; z-index: 1; left: 125px; top: 106px; position: absolute; font-size: large" 
                    Text="Status:-"></asp:Label>
                <asp:TextBox ID="TextBoxLT" runat="server" 
                    style="z-index: 1; left: 192px; top: 59px; position: absolute; width: 170px; height: 22px; text-align: center"></asp:TextBox>
            </p>
            <asp:Label ID="Label11" runat="server" 
                style="font-weight: 700; font-size: large; z-index: 1; left: 557px; top: 107px; position: absolute" 
                Text="Requested Date:-"></asp:Label>
            <asp:TextBox ID="TextBoxRD" runat="server" 
                
                style="z-index: 1; left: 698px; top: 104px; position: absolute; height: 23px; width: 188px"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Dear&nbsp;
            <asp:Label ID="LabelName" runat="server" Text="Label"></asp:Label>
            ,</strong>
            <p style="z-index: 1; left: -1px; top: 537px; position: absolute; height: 72px; width: 900px; font-weight: 700">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                If There Are Any Changes To This Situation Please Get In Touch Immediately.&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; If You Have 
                Any Further Queries Regarding This Request Please Email Me on
                <span class="style1"><em>SaurabhAgr@gmail.com</em></span>
            </p>
           &nbsp;</div>
    
        <div style="width: 138px; height: 35px; position: relative; top: 23px; left: 602px">
           <input type="button" value="Print" onclick="printDiv('printableArea')" 
                
                style="position: absolute; top: 3px; left: 27px; width: 80px; color: #FFFFFF; font-weight: 700; z-index: 1; height: 28px; background-color: #000066;" /></div>
    
    </div>
    </form>
</body>
</html>
