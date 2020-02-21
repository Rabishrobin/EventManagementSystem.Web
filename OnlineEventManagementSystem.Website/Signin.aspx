﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage/Header.Master" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="OnlineEventManagementSystem.Website.Signin" %>

<asp:Content ID="ContentPlaceHolder" runat="server" ContentPlaceHolderID="OpenOnPlaceHolder">
    <table>
        <tr>
            <td>Email Id</td>
            <td>
                <asp:TextBox ID="Text_Email" runat="server" Type="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="Text_Password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
    </table>
    <div>
        <asp:Button ID="buttonLogin" runat="server" Text="Login" OnClick="LoginClick" />
    </div>
</asp:Content>
