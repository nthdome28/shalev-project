<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"
    AutoEventWireup="true" CodeFile="signIn.aspx.cs" Inherits="SignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Sign In</h2>

    phone number or email:
    <input type="text" name="Email" placeholder="example@gmail.com" />
    <br /><br />

    passcode:
    <input type="password" name="passcode"
        placeholder="password..." />
    <br /><br />

    <input type="submit" value="submit" />
    <br /><br />

    <%= st %>

</asp:Content>
