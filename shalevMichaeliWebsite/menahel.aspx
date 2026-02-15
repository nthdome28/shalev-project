<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"
    AutoEventWireup="true" CodeFile="menahel.aspx.cs" Inherits="Menahel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

    <h2>דף מנהל</h2>

    first name:
    <input type="text" name="firstName" placeholder="example" />
    <br /><br />

    last name:
    <input type="text" name="lastName" placeholder="example" />
    <br /><br />

    <input type="submit" value="Search" />
    <br /><br />

    <%= st %>

</asp:Content>
