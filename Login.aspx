<%@ Page Language="VB" Debug="true" AutoEventWireup="false" CodeFile="Login.aspx.vb"
    Inherits="_Default" unobtrusiveValidationMode="none"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Login Here</title>
    
    <style type="text/css">
        .style1 {
            width: 110px;
        }

        .style2 {
            width: 110px;
            height: 29px;
        }

        .style3 {
            height: 29px;
        }

        .stylelabel {
            text-align: center;
        }

        table {
            border-collapse: collapse;
        }

        td {
            padding-top: .5em;
            padding-bottom: .5em;
            font-size: 30px;
        }

        button {
            font-size: 30px;
            height: auto;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div  style="position: absolute; background-color:midnightblue; left: 0; width: 1646px; height: 139px; top: 0px; right:-52px;"><center>
             <font face="times new roman" size="78" color="white">
             Login Form
                 </font>
                 </div><div style="position: absolute; align-content: center;  left: 570px; width: auto;  height: auto; top: 150px;" >
            </div>
        <div style="position: absolute; align-content: center;  left: 570px; width: auto;  height: auto; top: 150px;" >
                  
            <table >
                <tr>
                    <th colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Login here.." Font-Size="35px"></asp:Label>
 </th>
                    <td>
                        </td>
                </tr>

                <tr>
                    <td class="style1">
                        <asp:Label CssClass="stylelabel" ID="lblname" runat="server" Text="Name: "></asp:Label>
                    </td>
                   <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                     <td>
                        <asp:RequiredFieldValidator display="Dynamic" InitialValue="-1" setfocusonerror="true" ID="RequiredFieldValidator1" runat="server" ControlToValidate="textbox1" ErrorMessage=" Name is Required"></asp:RequiredFieldValidator></td>
                    
                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label CssClass="stylelabel" ID="lblpassw" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassw" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator display="Dynamic" InitialValue="-1" setfocusonerror="true" ID="RequiredFieldValidator2" runat="server" ControlToValidate="textbox2" ErrorMessage=" Password is Required"></asp:RequiredFieldValidator></td>
                    
                </tr>
                <tr>
                    <td class="style1">
                        <asp:Button ID="BtnLogin" runat="server" Text="Login" />
                    </td>
                    <td class="style1">
                        <asp:Button ID="BtnFrgtPwd" runat="server" Text="Forgot Password" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label CssClass="stylelabel" ID="quetion" runat="server"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="answer" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr><td>
                    <asp:Button ID="showbtn" runat="server" Text="show" /></td>
                     <td class="style3">
                        <asp:Label CssClass="stylelabel" ID="showpassw" runat="server"></asp:Label>
                    </td>
                </tr>
          <tr><td>
              <asp:Label ID="Label5" runat="server" ></asp:Label></td></tr>
             <tr><td>
                 <asp:Button ID="btnuser" runat="server" Text="User" /></td>
                 <td>
                     <asp:Button ID="BtnAdmin" runat="server" Text="Admin" /></td></tr>   
            </table>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <img src="D:\WT Project\Images\user-icon1[1].jpg" 
            style="height: 359px; width: 355px" />
        </div></p>
</body>
</html>
