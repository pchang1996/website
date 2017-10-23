﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="welcome" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: relative;
            left: 220px;
            top: 4px;
            width: 1095px;
            height: 404px;
            margin-top: 4px;
        }
        .auto-style2 {
            position: relative;
            left: 220px;
            top: 5px;
        }
        .auto-style3 {
            position: relative;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:1100px;margin: 0 auto">
        <tr style="width:1100px;height:50px">
            <td style="width:60px">
                <img src="images/logo-icon-img.e724df76013d.png" style="height: 100px; width: 100px" />
            </td>
            <td style="width:120px">ayylmao</td>
                <td style="width:900px;text-align:right">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/fb-art.png" Height="50px" Width="50px" /> &nbsp <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/twitter-logo-clipart-free-20.jpg" Height="50px" Width="50px" /> &nbsp <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/unnamed.png" Height="50px" Width="50px" /></td>
        </tr>
        
        <tr style="width:1100px;height:40px;background-color:#6e9cfc">
            <td colspan="3">
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                        <asp:MenuItem Text="Services" Value="Services"></asp:MenuItem>
                        <asp:MenuItem Text="About Us" Value="About Us"></asp:MenuItem>
                        <asp:MenuItem Text="Investor" Value="Investor"></asp:MenuItem>
                        <asp:MenuItem Text="Gallery" Value="Gallery"></asp:MenuItem>
                        <asp:MenuItem Text="Contact Us" Value="Contact Us"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#CC3300" ForeColor="White" />
                    <StaticMenuItemStyle Font-Bold="True" Font-Names="Arial" ForeColor="Black" HorizontalPadding="30px" />
                </asp:Menu>
            </td>
        </tr>
    </table>
    <div id="menu" style="z-index:1000">
        <ul class="auto-style3">
            <li><a href="Default.aspx" style="font-family: Arial, Helvetica, sans-serif; text-align: center;margin-left:auto;margin-right:auto;">Home</a></li>
            <li><a href="#" style="font-family: Arial, Helvetica, sans-serif;margin-left:auto;margin-right:auto;z-index:1000">About Us</a>
                <ul>
                    <li><a href="Background.aspx" style="z-index:1000">Background</a></li>
                </ul>
            </li>
            <li><a href="#" style="font-family: Arial, Helvetica, sans-serif;margin-left:auto;margin-right:auto;">Services</a></li>
            <li><a href="#" style="font-family: Arial, Helvetica, sans-serif;margin-left:auto;margin-right:auto;">Contact Us</a></li>
        </ul>
    </div>
    <div>
        <asp:Label ID="txtuser" runat="server" Text=""></asp:Label>
        <asp:Button ID="btnlogout" runat="server" Text="Logout" OnClick="btnlogout_Click" />
    </div>
    <section>
        <div class="row">
            <img class="auto-style1" src="Images/643905_4324769915429_546498306_n.jpg" />
        </div>
    </section>

    
    

        
  
    </form>
</body>
</html>