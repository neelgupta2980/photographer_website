<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="photographer_website.existing_user.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div align="right">
                <asp:Button ID="Back" runat="server" Text="Back" onclick="Back_Click"/>
            </div>
            <h1 align="center">PROFILES</h1>
            <hr style="width:700px"/>
            <br />
            <table align="center">
                <tr>
                    <td style="font-weight: lighter; font-size: 12px;" colspan="4">
                        <asp:GridView ID="grd_reason" runat="server" AutoGenerateColumns="False" Width="700px">
                            <Columns>
                                <asp:BoundField DataField="Username" HeaderText="Usernsme" ItemStyle-Width="250px"></asp:BoundField>
                                <asp:BoundField DataField="Email" HeaderText="Email" ItemStyle-Width="300px"></asp:BoundField>
                                <asp:BoundField DataField="Firstname" HeaderText="Firstname" ItemStyle-Width="100px"></asp:BoundField>
                                <asp:BoundField DataField="Lastname" HeaderText="Lastname" ItemStyle-Width="100px"></asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
