<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineEventManagementSystem.Website.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h2>
                Ashik Event Management
            </h2>
            <div>
                <asp:Button ID="buttonLogin" runat="server" Text="Signin" OnClick="SigninClick" />
                <asp:Button ID="buttonSignup" runat="server" Text="Signup" OnClick="SignupClick" />
            </div>
        </header>
    </form>
</body>
</html>
