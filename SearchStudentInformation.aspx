<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchStudentInformation.aspx.cs" Inherits="SearchStudentInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>Trainin and placement</header>
           <img src="Images/search_123304099.jpg" style="width: 1447px; height: 319px" />
            <br />
            <br />
            <br />
            <br />

           
                <center>  
                    <asp:Label ID="Label2" runat="server" Text="Search" ForeColor="#CC0099" Font-Size="XX-Large" Font-Bold="False" FontFamily="Arial"></asp:Label>    <br />  <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black" Font-Size="Large" Font-Bold="true">
                            <asp:ListItem Value="1">ALL STUDENTS</asp:ListItem>
                            <asp:ListItem Value="2">BRANCH </asp:ListItem>
                            <asp:ListItem Value="3">ROLL Number</asp:ListItem>
                        </asp:DropDownList>
            <br />
            <br />

            <asp:Label ID="Label1" runat="server" Text="Enter the input(Ignore for ALL Students)" ForeColor="Black" Font-SizeLarge ></asp:Label>
                    <br />
                    <br />
            
            <br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />

                    <asp:Button ID="Button1" runat="server" Text="Show" OnClick="Show"></asp:Button>
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    </center> 

               
               

        </div>
    </form>
</body>
</html>
