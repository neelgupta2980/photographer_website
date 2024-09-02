<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu_page.aspx.cs" Inherits="photographer_website.existing_user.menu_page" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <title>Home Page</title>
    <link href="../menu_style.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="sticky-navbar">
            <table style="width: 100%">
                <tr>
                    <td>picsar</td>
                    <td><asp:HyperLink ID="HyperLink1" runat="server">Home</asp:HyperLink></td>
                    <td><asp:HyperLink ID="HyperLink2" runat="server">Blog</asp:HyperLink></td>
                    <td style="width: 160px">
                        <div class="button-with-dropdown">
                            Featured
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                <asp:ListItem Text="-- Select an option --" Value="1" Selected="True" Enabled="True"></asp:ListItem>
                                <asp:ListItem Text="Option 2" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Option 3" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </td>
                    <td><asp:HyperLink ID="HyperLink3" runat="server">Faqs</asp:HyperLink></td>
                    <td align="right">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <div class="search_logo" aria-hidden="False"><asp:ImageButton CssClass="search_img" ID="ImageButton2" runat="server" ImageUrl="../img/search.png" AlternateText="Click me" Height="35px " Width="35px" Border="0px" BorderStyle="None" /></div>
                        <div class="dashboard" style="display:inline-block">
                            Dashboard
                            <asp:DropDownList  ID="DropDownList3" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                                
                                <asp:ListItem Text="-- Select an option --" Value="1" Selected="True" Enabled="True"></asp:ListItem>
                                <asp:ListItem Text="Profile" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Pricing" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Help Desk" Value="4"></asp:ListItem>
                                <asp:ListItem Text="Sign out" Value="5"></asp:ListItem>
                            </asp:DropDownList>
                            </div>
                    </td>
                </tr>
            </table>
        </div>
        <div id="carouselExampleFade" class="carousel slide carousel-fade">
            <div class="carousel-inner" style="height: 400px">
                <div class="carousel-item active">
                    <img src="../img/camera_nature.jpg" class="d-block w-100" alt="img1" />
                </div>
                <div class="carousel-item">
                    <img src="../img/water.jpeg" class="d-block w-100" alt="img2" />
                </div>
                <div class="carousel-item">
                    <img src="../img/landscape.jpeg" class="d-block w-100" alt="img3" />
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <div class="left" style="width: 20%; height: 100%; display: inline-block; border:2px solid black ">
            wqsdWDV 
        </div>

        <div class="mid" style="width: 60%; height: 100%; display: inline-block; border:2px solid black">
            xXAQCW
        </div>

        <div class="right" style="width: 20%; height: 100%; display: inline-block; border:2px solid black">
            dsgfnhf
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
