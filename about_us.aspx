<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about_us.aspx.cs" Inherits="Scripts_about_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>This page is about us.</h1>
        <p>
            <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
            <asp:Button ID="btnEncrypt" runat="server" OnClick="btnEncrypt_Click" Text="Button" />
            <asp:Label ID="lblMD5" runat="server"></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
