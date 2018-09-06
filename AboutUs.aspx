<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 95%;
            background-image: url('Image/ABOUT.jpg');
            height: 467px;
            z-index: 1;
            left: 32px;
            top: 41px;
            position: absolute;
            margin-left: 0px;
        }
        .style7
        {
            font-size: x-large;
            color: #000000;
            width: 1249px;
        }
        .style8
        {
            width: 1249px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position: relative; top: -3px; left: 0px; height: 526px; width: 1280px">
    <table class="style6">
        <tr>
            <td class="style7">
               <p style="height: 116px; width: 1142px; z-index: 1; left: 24px; top: 133px; position: absolute; bottom: 218px; text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PlanMyLeave is an HRIS and online leave management system designed to scale 
                easily from small and medium businesses to large enterprises. PlanMyLeave offers 
                fully featured flexible multi-location based settings found in enterprise class 
                applications and offers companies a quick way to implement their HR and Leave 
                Management System on the cloud. This results in time and cost savings as well as 
                a rise in productivity of the organization.<asp:Label ID="Label8" runat="server" 
                       style="font-weight: 700; z-index: 1; left: 12px; top: -80px; position: absolute; text-decoration: underline" 
                       Text="Online leave management using PlanMyLeave"></asp:Label>
                </p>
                <p style="width: 1143px; z-index: 1; left: 24px; top: 267px; position: absolute; height: 135px; text-align: justify;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Online leave management using PlanMyLeave helps you customize leave types and set 
                    up complex leave policies for any type of industry having locations in multiple 
                    countries. By automating your leave approval process you can curtail unexcused 
                    absences and contain HR overheads. PlanMyLeave’s user friendly employee self 
                    service dashboard offers a easy interface to apply and view leave request status 
                    and calendars.The online staff leave planner allows administrators to set up 
                    employee information and leave types and policies easily.</p></td>
        </tr>
        <tr>
            <td class="style8">
               <p><asp:Label ID="Label7" runat="server" 
                    style="font-size: xx-large; color: #FFFFFF; background-color: #000000; z-index: 1; left: -28px; top: -39px; position: absolute; width: 1273px; text-align: center; font-weight: 700;" 
                    Text="About"></asp:Label></p>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>

