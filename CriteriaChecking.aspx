<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CriteriaChecking.aspx.cs" Inherits="CriteriaChecking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
            <img src="Images/Jobsolution.png" style="width: 1355px; height: 266px" />
            <br />
            <br />
            <marquee BGColor="cyan" style="font:bold; color:darkblue";">TRAINING AND PLACEMENT CELL</marquee>
            <center>
                <h2 style="font-family: Algerian; font-size: xx-large; color: #800000">Search Students According to your Criteria</h2>
                <br />
                <h3 style="font-family: &quot;Arial Black&quot;; font-size: large; color: #000080">Enter your Criteria</h3>
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                Enter the least percentage.
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Show" OnClick="show" style="height: 29px" ForeColor="#660033"></asp:Button>
                <br />
                <br />
                
                
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="ds" runat="server"></asp:SqlDataSource>
                     </ContentTemplate>
                        </asp:UpdatePanel>
                        </center>
        </div>
    </form>
</body>
</html>
