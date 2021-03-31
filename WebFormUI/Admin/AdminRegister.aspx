<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="WebFormUI.Admin.AdminRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>   
       
        <asp:Button ID="btnPWD" runat="server" Text="密码加密" /><br /><br />
        加密前:<asp:TextBox ID="txtPWD" runat="server"></asp:TextBox><br /><br />
        加密后:<asp:TextBox ID="txtNEWPWD" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>