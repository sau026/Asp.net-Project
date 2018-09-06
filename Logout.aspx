<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Logout" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 900px;
            height: 207px;
            background-color: #CCFFFF;
        }
        .style2
        {
            font-size: x-large;
            text-align: center;
        }
        #form1
        {
            height: 249px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                    You Are Logout From This Page
                    <asp:LinkButton ID="LinkButtonLogout" runat="server" 
                        onclick="LinkButtonLogout_Click">ClickHere</asp:LinkButton>
&nbsp;To Login Again....</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
