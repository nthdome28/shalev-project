<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"
    AutoEventWireup="true" CodeFile="signUp.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript">
        function checkAll() { 
            return true;
        }
    </script>
    <h1 style="text-align:center;"> דף הרשמה</h1>

    </asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Sign Up</h2>

    first name:
    <input type="text" name="firstName" id="firstName" placeholder="example" />
    <br /><br />

    last name:
    <input type="text" name="lastName" id="lastName" placeholder="example" />
    <br /><br />

    email:
    <textarea rows="1" cols="30" name="Email" id="Email"
        placeholder="example@gmail.com"></textarea>
    <br /><br />

    passcode:
    <input type="password" name="passcode" id="passcode" placeholder="password..." />
    <br /><br />

    enter age group:
    <br />
    13-18 <input type="radio" name="age" value="13-18" checked />
    19-25 <input type="radio" name="age" value="19-25" />
    26-39 <input type="radio" name="age" value="26-39" />
    40+   <input type="radio" name="age" value="40+" />
    <br /><br />

    gender:
    <br />
    female <input type="radio" name="radio1" value="F" checked />
    male   <input type="radio" name="radio1" value="M" />
    other  <input type="radio" name="radio1" value="Other" />
    <br /><br />

    hobbies:
    <input type="text" name="hobbies" id="hobbies" placeholder="soccer, basketball..." />
    <br /><br />

    <input type="submit" value="submit" />
    <br /><br />

    <%= st %>

    <br /><br />


</asp:Content>
