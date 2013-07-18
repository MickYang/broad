<%@ Page Language="C#" AutoEventWireup="true" CodeFile="postmessage.aspx.cs" Inherits="postmessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblTranType" runat="server" Text="事务类型：" Visible="False"></asp:Label>
        <asp:DropDownList ID="ddlTranType" runat="server" Visible="False">
            <asp:ListItem Value="0">班级事务</asp:ListItem>
            <asp:ListItem Value="1">个人事务</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="lblTranName" runat="server" Text="事务名称："></asp:Label>
        <asp:TextBox ID="txtTranName" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblTranContent" runat="server" Text="事务内容："></asp:Label>
        <asp:TextBox ID="txtTranContent" runat="server" Height="146px" TextMode="MultiLine" Width="291px"></asp:TextBox>
        <br />
        <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="添加" />
        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="取消" />
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
