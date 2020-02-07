<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineEventManagementSystem.Website.Startup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h2 style="text-align:center">
                Ashik Event Management
            </h2>
            <div align="right">
                <asp:Button ID="buttonLogin" runat="server" Text="Signin" OnClick="SigninClick" />
                <asp:Button ID="buttonSignup" runat="server" Text="Signup" OnClick="SignupClick" />
            </div>
        </header>
        <div>
            <p>
                Events
            <ul>
                <li>Wedding</li>
                <li>Conference</li>
                <li>Birthday</li>
            </ul>   
            </p>
        </div>
    </form>
</body>
</html>
