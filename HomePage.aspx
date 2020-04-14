<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HomePage.aspx.vb" Inherits="HomePage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Training and Placement</title>
    <script type="text/javascript">
        function placement_info() {
            //  Response.redirect("~/placement_info.aspx")
        }
        function login() {
            //Response.redirect("~/login.aspx")
        }
        function register() {
            //Response.redirect("~/register.aspx")
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="position: absolute; width: 1380px; height: 500px;">
            <asp:Image ImageUrl="~/images/placement_image.jpg" runat="server" Width="1380px" Height="500px" />
        </div>
        <br />
        <br />
        <br />
        <div class="container" style="position:absolute; top:650px; width:1380px; align-items:center; height:auto; align-content:center; align-self:center; ">
        <center>    
        <asp:ImageButton ImageUrl="~/images/placement_button1.jpg" runat="server" Height="138px" Width="287px" ImageAlign="Middle" ID="placement_imgbtn"/>
        <asp:ImageButton ImageUrl="~/images/login_button.jpg" runat="server" Height="144px" Width="302px" ImageAlign="Middle" ID="login_imgbtn" OnClick="Unnamed3_Click"/>
        <asp:ImageButton ImageUrl="~/images/register_button.jpg" runat="server" Height="140px" Width="323px" ImageAlign="Middle" ID="register_imgbtn"/>
        </center>    
        </div>
        <br />
        <br />
        <br />
        <div class="container" style="position:absolute; top:950px; width:1380px; height:auto;">
            <marquee scrollamount="10">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/img1.png" Height="200px"></asp:Image>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/img2.jpg" Height="200px"></asp:Image>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/img3.jpg" Height="200px"></asp:Image>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/images/img4.jpg" Height="200px"></asp:Image>
                <asp:Image ID="Image5" runat="server" ImageUrl="~/images/img5.jpg" Height="200px"></asp:Image>
                <asp:Image ID="Image6" runat="server" ImageUrl="~/images/img6.jpg" Height="200px"></asp:Image></marquee>
        </div>
    </form>
</body>
</html>
