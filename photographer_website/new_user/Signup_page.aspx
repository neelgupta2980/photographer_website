<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup_page.aspx.cs" Inherits="photographer_website.Signup_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div align="right">
                <asp:Button ID="back_to_login" runat="server" Text="Login" OnClick="Log_Click" />
                <asp:Button ID="back" runat="server" Text="Back" OnClick="Back_Click" />
                
            </div>
            <h1 align="center">SignUp</h1>
            <table align="center">

                <tr>
                    <td>Username:&nbsp;&nbsp;</td>
                    <td>
                        <asp:TextBox ID="username" runat="server" placeholder="Enter your Username" /></td>
                </tr>
                <tr>
                    <td>Email:&nbsp;&nbsp;</td>
                    <td>
                        <asp:TextBox ID="email" runat="server" placeholder="Enter your Email" Textmode="Email"/></td>
                </tr>
                <tr>
                    <td>Password:&nbsp;&nbsp;</td>
                    <td>
                        <asp:TextBox ID="password" runat="server" placeholder="Enter your Password" Textmode="Password" MaxLength="8"/></td>
                </tr>
                <tr>
                    <td>FirstName:&nbsp;&nbsp;</td>
                    <td>
                        <asp:TextBox ID="firstname" runat="server" placeholder="Enter your firstname" /></td>
                </tr>
                <tr>
                    <td>LastName:&nbsp;&nbsp;</td>
                    <td>
                        <asp:TextBox ID="lastname" runat="server" placeholder="Enter your lastname" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <br />
                        <asp:Button ID="submit" runat="server" Text="Signup" OnClick="Signup_Click" />&nbsp;&nbsp;
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
