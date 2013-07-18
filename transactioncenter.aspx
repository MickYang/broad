<%@ Page Language="C#" AutoEventWireup="true" CodeFile="transactioncenter.aspx.cs" Inherits="transactioncenter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        欢迎<asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>，学号<asp:Label ID="lblUserid" runat="server"></asp:Label>
&nbsp;<br />
        <asp:Button ID="btnPostMessage" runat="server" OnClick="btnPostMessage_Click" Text="发布事务" />
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="登出" />
        <br />
        <br />
        
        <div>
            必读事务<br />
            <asp:GridView ID="grvMustread" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="passage_id" DataSourceID="dsMustread" EnableModelValidation="True">
                <Columns>
                    <asp:BoundField DataField="passage_id" HeaderText="passage_id" ReadOnly="True" SortExpression="passage_id" />
                    <asp:BoundField DataField="passage_name" HeaderText="passage_name" SortExpression="passage_name" />
                    <asp:BoundField DataField="passage_type" HeaderText="passage_type" SortExpression="passage_type" />
                    <asp:BoundField DataField="create_time" HeaderText="create_time" SortExpression="create_time" />
                    <asp:BoundField DataField="if_mustread" HeaderText="if_mustread" SortExpression="if_mustread" />
                    <asp:BoundField DataField="read_status" HeaderText="read_status" SortExpression="read_status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dsMustread" runat="server" ConnectionString="<%$ ConnectionStrings:SEConnectionString %>" SelectCommand="SELECT passages.passage_id, passages.passage_name, passages.passage_type, passages.create_time, broad_unread.if_mustread, broad_unread.read_status FROM passages INNER JOIN broad_unread ON passages.passage_id = broad_unread.passage_id WHERE (passages.user_id = @user_id) AND (broad_unread.if_mustread = '1')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblUserid" Name="user_id" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            未读事务<br />
            <asp:GridView ID="grvUnread" runat="server" DataSourceID="dsUnread" EnableModelValidation="True" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="passage_id">
                <Columns>
                    <asp:BoundField DataField="passage_id" HeaderText="passage_id" ReadOnly="True" SortExpression="passage_id" />
                    <asp:BoundField DataField="passage_name" HeaderText="passage_name" SortExpression="passage_name" />
                    <asp:BoundField DataField="passage_type" HeaderText="passage_type" SortExpression="passage_type" />
                    <asp:BoundField DataField="create_time" HeaderText="create_time" SortExpression="create_time" />
                    <asp:BoundField DataField="if_mustread" HeaderText="if_mustread" SortExpression="if_mustread" />
                    <asp:BoundField DataField="read_status" HeaderText="read_status" SortExpression="read_status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dsUnread" runat="server" ConnectionString="<%$ ConnectionStrings:SEConnectionString %>" SelectCommand="SELECT passages.passage_id, passages.passage_name, passages.passage_type, passages.create_time, broad_unread.if_mustread, broad_unread.read_status FROM passages INNER JOIN broad_unread ON passages.passage_id = broad_unread.passage_id WHERE (passages.user_id = @user_id) AND (broad_unread.read_status = '0')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblUserid" Name="user_id" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            所有事务<br />
            <asp:GridView ID="grvAll" runat="server" AutoGenerateColumns="False" DataKeyNames="passage_id" DataSourceID="dsAll" EnableModelValidation="True">
                <Columns>
                    
                    <asp:BoundField DataField="passage_id" HeaderText="passage_id" ReadOnly="True" SortExpression="passage_id" />
                    <asp:BoundField DataField="passage_name" HeaderText="passage_name" SortExpression="passage_name" />
                    <asp:BoundField DataField="passage_type" HeaderText="passage_type" SortExpression="passage_type" />
                    <asp:BoundField DataField="create_time" HeaderText="create_time" SortExpression="create_time" />
                    
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dsAll" runat="server" ConnectionString="<%$ ConnectionStrings:SEConnectionString %>" SelectCommand="SELECT [passage_id], [passage_name], [passage_type], [create_time] FROM [passages]"></asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
