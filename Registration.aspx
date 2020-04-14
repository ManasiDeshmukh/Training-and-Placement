<%@ Page Language="VB" AutoEventWireup="false" Debug="true" CodeFile="Registration.aspx.vb"
    Inherits="Default2" UnobtrusiveValidationMode="None"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTRATION FORM</title>
    <style type="text/css">
        td {
            font-size: 30px;
            padding-top: .5em;
            padding-bottom: .5em;
        }

        button {
            font-size: 30px;
            height: auto
        }
        .auto-style1 {
            height: 97px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color:Silver">
         <div  style="position: absolute; background-color:midnightblue; left: 0; width: 1354px; height: 139px; top: 0px; right:-7px;"><center>
             <font face="times new roman" size="78" color="white">
             Registration Form
                 </font>
<div  style="position: absolute; background-color:midnightblue; left: 0; 
    width: 20%; height: 1000px; top: 0px;"><center>
  &nbsp;</center>
  <img src="D:\WT Project\Images\register[1].png"</div >
        style="width: 311px; height: 307px; margin-top: 131px;"></div>
        <div style="position: absolute; align-content: center; left: 440px; width: auto; height: auto; top: 180px;">
            <center>
                <div  style="position: absolute; background-color:midnightblue; left: 440px; width: auto; height: auto; top: 70px;"></div>
                <table cellpadding="1.5" cellspacing="1.5">
                  
                    <tr>
                        <td>
                            <asp:Label ID="regname" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="regnametext" runat="server" Font-Size="30px" 
                                ToolTip="Enter a name"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator runat="server" Display="dynamic" ErrorMessage="Name is required"
                                SetFocusOnError="True" ControlToValidate="TextBox1" InitialValue="-1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="regrollno" runat="server" Text="Rollnumber"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="regrollnotext" runat="server" Font-Size="30px" 
                                ToolTip="Enter Rollno"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="regpassw" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="regpasswtext" runat="server" Font-Size="30px" 
                                ToolTip="Password"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="regconfpass" runat="server" Text="Confirm Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="regconfpasstext" runat="server" Font-Size="30px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:CompareValidator runat="server" ControlToCompare="textbox3" Type="string" Display="Dynamic"
                                SetFocusOnError="true" Operator="Equal" ErrorMessage="password and confirm password must be same"
                                ControlToValidate="textbox4"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblsecQ" runat="server" Text="Security Question"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" Font-Size="20px">
                                <asp:ListItem Value="-1">select question</asp:ListItem>
                                <asp:ListItem Value="0">Enter your maid name?</asp:ListItem>
                                <asp:ListItem Value="1">Enter your grandfathers name?</asp:ListItem>
                                <asp:ListItem Value="2">Enter name of your 1st school name you have attended?</asp:ListItem>
                                <asp:ListItem Value="3">Enter your pet name?</asp:ListItem>
                            </asp:DropDownList>
                            <td>
                                <asp:RequiredFieldValidator dynamic="true" SetFocusOnError="true"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator></td>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="regans" runat="server" Text="Answer"></asp:Label>
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="reganstext" runat="server" Font-Size="30px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" Font-Size="30px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </center>
        </div>
    </form>
</body>
</html>
