<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="OnlineEventManagementSystem.Website.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnEvent" runat="server" Text="Add Event" OnClick="ManipulateEvent"/>
    </div>
    </form>
</body>
</html>
