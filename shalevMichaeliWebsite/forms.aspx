<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forms.aspx.cs" Inherits="Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>form</h2>

        first name: <input type="text" name="firstName" id="firstName" placeholder="example" />
        <br />
        favorite subject:
        <br />
        coding: <input type="checkbox" name="check2" id="check_1" checked value="code" />
        math: <input type="checkbox" name="check2" id="check_2"  value="math"/>
        java: <input type="checkbox" name="check2" checked id="check_3"  value="java" />
        gym: <input type="checkbox" name="check2" id="check_4"  value="gym" />
        <br />
        fav animal:
        <br />
        dog: <input type="radio" name="radio1" id="radio_1" checked value="dog" />
        cat: <input type="radio" name="radio1" id="radio_2"  value="cat"/>
        lion: <input type="radio" name="radio1" checked id="radio_3"  value="lion" />
        snake: <input type="radio" name="radio1" id="radio_4"  value="snake" />
        <br />
        open answer:
        <br />
        <textarea rows="5" cols="20" name="textarea1" id="textarea1" placeholder="write here"></textarea>
        <br />
        <input id="submit1" type="submit" value="submit" />
   

    <div>
        <%= name %>
        <%= subject %>
        <%= animal %>
    </div>
</asp:Content>

