<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
        <h2>search</h2>

    item name:
<input type="text" name="itemName" placeholder="example" />
<br /><br />

<input type="submit" value="Search" />
<br /><br />

<%= st %>

</asp:Content>

