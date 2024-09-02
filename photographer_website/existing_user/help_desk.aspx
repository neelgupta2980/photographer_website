<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="help_desk.aspx.cs" Inherits="photographer_website.existing_user.help_desk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: limegreen; border-radius: 40px">
            <div style="display: inline-block; margin-left: 600px">
                <h1 style="color: darkgreen">Help Desk</h1>
            </div>
            <div style="display: inline-block; margin-left: 400px">
                <asp:Button ID="back" runat="server" Text="Back" BorderStyle="None" ForeColor="White" BackColor="limegreen" OnClick="Back_Click" />
            </div>
        </div>
        <br />
        <table align="center">
            <tr>
                <td>topic :</td>
                <td>
                    <asp:TextBox ID="topic" runat="server" TextMode="SingleLine" Width="150%"></asp:TextBox></td>
            </tr>
            <tr style="height: 20px">
                <td></td>
            </tr>
            <tr>
                <td>
                    <spam style="padding-top: -40px">Description :</spam></td>
                <td>
                    <asp:TextBox ID="details" runat="server" TextMode="MultiLine" Width="200%" Height="100px"></asp:TextBox></td>
            </tr>

        </table>
        <br />
        <div align="center">
            <asp:Button ID="submit" runat="server" Text="Submit" OnClick="Submit_Click" />&nbsp:
            <asp:Button ID="clr" runat="server" Text="Clear" OnClick="Clr_Click" />
        </div>
        <br />
        <div align="center">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" Width="120px" />
        </div>
        <table align="center">
            <tr>
                <td style="font-weight: lighter; font-size: 12px;" colspan="2">
                    <asp:GridView ID="grd_reason" runat="server" AutoGenerateColumns="False" Width="700px">
                        <Columns>
                            <asp:BoundField DataField="topic" HeaderText="Topic" ItemStyle-Width="250px"></asp:BoundField>
                            <asp:BoundField DataField="details" HeaderText="Description" ItemStyle-Width="300px"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

