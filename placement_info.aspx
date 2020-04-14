<%@ Page Language="VB" Debug="true" AutoEventWireup="false" CodeFile="placement_info.aspx.vb"
    Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="position: absolute; top: 0px; left: 0px; height: 400px; width: 400px;">
            <asp:ImageButton ID="ImageButton1" runat="server" autopostback="true" OnClick="show_data"
                Height="343px" Width="343px" ImageUrl="~/images/tcc2203.jpg" />
        </div>
        <div style="position: absolute; top: 0px; left: 400px; height: 400px; width: 400px">
            <asp:ImageButton ID="ImageButton2" runat="server" Height="396px" ImageUrl="~/images/IBM-Company-Logo.jpg"
                Width="394px" />
        </div>
        <div style="position: absolute; top: 410px; left: 500px; height: 300px; width: 476px">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                Height="400px" Width="482px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
        <div style="position: absolute; top: 0px; left: 810px; height: 400px; width: 400px">
            <asp:ImageButton ID="ImageButton3" runat="server" Height="399px"
                ImageUrl="~/images/Toyo_Engineering_company_logo.svg.png" Width="399px" />
        </div>
    </form>
</body>
</html>
