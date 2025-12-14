<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forms.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <h1>טופס ניסיון</h1>
        
    <input type="text" name="firstName" id="firstName"/> enter your first name
    <input type="submit" name="submit" id="submit" />
    name = <%=name %>
</asp:Content>



