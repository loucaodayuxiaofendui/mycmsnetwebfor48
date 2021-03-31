<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminRegister.aspx.cs" Inherits="Admin_AdminRegister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
