<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signIn.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
        <h2>sign in</h2>
   
  <br />
 phone number or email: <textarea rows="1" cols="30" name="mail" id="mail" placeholder="example@gmail.com"></textarea>
 <br />
 <br />
  passcode: <input type="text" name="passcode" id="passcode" placeholder="password..." />
<br />
<br />
    
    <input id="submit1" type="submit" value="submit" />
    <br />
     <br />
    mail = <%= mail%>
    passcode = <%= passcode %>
</asp:Content>

