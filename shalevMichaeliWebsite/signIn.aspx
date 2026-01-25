<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"
    AutoEventWireup="true" CodeFile="signIn.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Sign In</h2>

    phone number or email:
    <textarea rows="1" cols="30" name="Email" id="Email"
        placeholder="example@gmail.com"></textarea>
    <br /><br />

    passcode:
    <input type="password" name="passcode" id="passcode"
        placeholder="password..." />
    <br /><br />

    <input type="submit" value="submit" />
    <br /><br />

    <%= st %>

</asp:Content>
