<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_page.aspx.cs" Inherits="photographer_website.login_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div align="right">
                <asp:Button ID="back_to_signin" runat="server" Text="Signup" OnClick="Sign_Click" />
                <asp:Button ID="back" runat="server" Text="Back" OnClick="Back_Click"/>
            </div>
            <h1 align="center">Login</h1>
            <table align="center">
                <tr>
                    <td>Username:&nbsp;&nbsp;</td>
                    <td>
                        <asp:TextBox ID="username" runat="server" placeholder="Enter your username" /></td>
                </tr>
                <tr>
                    <td>Password:&nbsp;&nbsp;</td>
                    <td>
                        <asp:TextBox ID="password" runat="server" placeholder="Enter your password"  TextMode="Password" MaxLength="8"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <br />
                        <asp:Button ID="submit" runat="server" Text="Login" OnClick="Login_Click" />&nbsp;&nbsp;
                        <asp:Button ID="reset" runat="server" Text="clear" OnClick="Clear_Click"/>
                    </td>
                </tr>
            </table>
            <br />
            <div align="center">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" Width="120px" />
            </div>
        </div>
    </form>
</body>
</html>
