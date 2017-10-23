<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background:#ccc
        }
        .formclass{
            padding:10px;
            margin:0px auto;
            background:#fff;
            width:200px;
        }
        input{
            padding:10px;
            width:180px; 
        }
    </style>

    <link href="StyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            position: relative;
            z-index: 1;
        }
        .auto-style4 {
            padding: 10px;
            margin-top: 10px;
            background: #fff;
            width: 200px;
            position: absolute;
            left: 214px;
            top: 197px;
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
            <li><a href="#" style="font-family: Arial, Helvetica, sans-serif;margin-left:auto;margin-right:auto; text-align: center;">Login</a></li>
        </ul>
    </div>
    <div class="auto-style4">
        <asp:TextBox ID="txtuser" CssClass="input" placeholder="User Name" runat="server"></asp:TextBox><br /><br />
        
        <asp:TextBox ID="txtpass" CssClass="input" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br /><br />

        <asp:Button ID="btnlogin" CssClass="input" Width="100%" runat="server" Text="login" OnClick="btnlogin_Click" />
    </div>
   
    </form>
</body>
</html>
