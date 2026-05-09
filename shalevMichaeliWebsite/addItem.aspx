<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addItem.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

     <h2>Add item</h2>

item name:
 <input type="text" name="itemName" id="itemName" placeholder="example" />
 <br /><br />

item price:
 <input type="text" name="itemPrice" id="itemPrice" placeholder="12.34" />
 <br /><br />
 

item count:
 <br />
 3 <input type="radio" name="radio1" value="3" checked />
 10   <input type="radio" name="radio1" value="10" />
 50  <input type="radio" name="radio1" value="50" />
 <br /><br />


 <input type="submit" value="submit" />
 <br /><br />

 <%= st %>

 <br /><br />

</asp:Content>

