<%@ Page Language="C#" MasterPageFile="~/MasterPage/Header.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="OnlineEventManagementSystem.Website.Signup" %>


<asp:Content ID="ContentPlaceHolder" runat="server" ContentPlaceHolderID="OpenOnPlaceHolder">
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label runat="server">First Name</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="reqFirstName" ControlToValidate="txtFirstName" ErrorMessage="Please enter your first name" />
                    <asp:RegularExpressionValidator runat="server" required="" ValidationExpression="[A-Z][a-z][^(@#&<>~;$^%{}?][^0-9]{0,20}" Text="Name should start with capital letter" ControlToValidate="txtFirstName"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server">Last Name</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="reqLastName" ControlToValidate="txtLastName" ErrorMessage="Please enter your last name" />
                    <asp:RegularExpressionValidator runat="server" ValidationExpression="[A-Z]|[A-Z][a-z][^(@#&<>~;$^%{}?][^0-9]{0,20}$" Text="Name should start with capital" ControlToValidate="txtLastName"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <label runat="server">Email ID</label>
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Type="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="reqEmail" ControlToValidate="txtEmail" ErrorMessage="Please enter your email ID" />
                    <asp:RegularExpressionValidator runat="server" ValidationExpression="^([\w-\.]+)@([\w-]+\.)+([a-zA-Z]{2,4}|[0-9]{1,3})$" Text="Invalid email ID" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Mobile Number</td>
                <td>
                    <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqMobileNumber" ControlToValidate="txtMobileNumber" runat="server" ErrorMessage="Please fill out this field" />
                    <asp:RegularExpressionValidator ErrorMessage="Invalid Phone Number" ControlToValidate="txtMobileNumber" ValidationExpression="^\(?([0-9]{3})\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Date of birth</td>
                <td>
                    <asp:TextBox ID="txtDOB" runat="server" Type="date"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="reqDOB" ControlToValidate="txtDOB" ErrorMessage="Please choose your date of birth"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButtonList ID="rbGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="reqGender" runat="server" ControlToValidate="rbGender" ErrorMessage="Please select a field"></asp:RequiredFieldValidator>
                </td>


            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" required=""></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter a password"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})" ErrorMessage="Password must be more than 5 characters.it must contain atleast one numeral and one alphabet "></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" required=""></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqConfirmPassword" ErrorMessage=" Please Re-Enter the password" ControlToValidate="txtConfirmPassword" runat="server" />
                    <asp:CompareValidator ID="cvConfrimPassword" ErrorMessage="Those password didn't match, Try again" ControlToValidate="txtConfirmPassword" runat="server" ControlToCompare="txtPassword" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                <asp:Button ID="buttonSubmit" runat="server" Text="Submit" OnClick="Submit" />
                </td>
            </tr>
        </table> 
    </div>
    <div>
        <label runat="server">Already registered User?</label>
        <asp:HyperLink Text="Sign in" NavigateUrl="Signin.aspx" runat="server" />
    </div>

</asp:Content>
