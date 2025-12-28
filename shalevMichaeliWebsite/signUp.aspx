
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signUp.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
        <h2>sign up</h2>
    first name: <input type="text" name="firstName" id="firstName" placeholder="example" />
    <br />
    <br />
    last name: <input type="text" name="lastName" id="lastName" placeholder="example" />
    <br />
    <br />
    <br />
    passcode: <input type="text" name="passcode" id="passcode" placeholder="password..." />
    <br />
     <br />
    phone number or email: <textarea rows="1" cols="30" name="mail" id="mail" placeholder="example@gmail.com"></textarea>
    <br />
    <br />
    enter age group:
    <br />
    13-18 <input type="radio" name="age" id="check_1" checked value="13-18" />
    19-25 <input type="radio" name="age" id="check_2"  value="19-25"/>
    26-39 <input type="radio" name="age" checked id="check_3"  value="26-39" />
    40+ <input type="radio" name="age" id="check_4"  value="40+" />
    <br />
    <br />
    race:
    <br />
    white: <input type="radio" name="radio1" id="radio_1" checked value="white" />
    black: <input type="radio" name="radio1" id="radio_2"  value="black"/>
    chinese: <input type="radio" name="radio1" checked id="radio_3"  value="chinese" />
    other: <textarea rows="1" cols="10" name="radio1" id="radio1" placeholder="write here..."></textarea>
    <br />
    <br />
    id: <input type="text" name="id" id="id" placeholder="enter id..." />
    <br />
    <br />

    <div>
     first name = <%= firstname %> ,
     last name = <%= lastname%> ,
     mail = <%= mail%> ,
     age group = <%= agegroup%> ,
     id = <%= id%> ,
     race = <%= race%> .
     passcode = <%= passcode %>
    </div>
    </asp:Content>




