<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="items.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

item name:
    <input type="text" name="itemname" id="itemname" placeholder="itemname" />
<br /><br />

item description:
    <input type="text" name="itemdesc" id="itemdesc" placeholder="big,small..." />
<br /><br />


item count:
    <input type="text" name="itemcount" id="itemcount" placeholder="1,2,3..." />
<br /><br />

item price:
<input type="text" name="itemprice" id="itemprice" placeholder="password..." />
<br /><br />

</asp:Content>

