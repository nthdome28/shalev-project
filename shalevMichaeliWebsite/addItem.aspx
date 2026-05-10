<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addItem.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkItem() {
            // איפוס הודעות השגיאה
            nameErr.innerHTML = "";
            priceErr.innerHTML = "";

            let isValid = true;

            alert("1");
            let nameVal = itemName.value;
            if (nameVal == "") {
                nameErr.innerHTML = "error";
                isValid = false;
            }

            alert("2");
            for (let i = 0; i < nameVal.length; i++) {
                if (nameVal[i] >= '0' && nameVal[i] <= '9') {
                    nameErr.innerHTML = "error";
                    isValid = false;
                    break;
                }
            }

            alert("3");
            let priceVal = itemPrice.value;
            if (priceVal == "") {
                priceErr.innerHTML = "error";
                isValid = false;
            }

            alert("4");
            if (isNaN(priceVal) && priceVal != "") {
                priceErr.innerHTML = "error";
                isValid = false;
            }

            alert("5");
            return isValid;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Add item</h2>

    <form method="post" onsubmit="return checkItem()">
        item name:
        <input type="text" name="itemName" id="itemName" placeholder="example" />
        <span id="nameErr" style="color:red;"></span>
        <br /><br />

        item price:
        <input type="text" name="itemPrice" id="itemPrice" placeholder="12.34" />
        <span id="priceErr" style="color:red;"></span>
        <br /><br />

        item count:
        <br />
        3 <input type="radio" name="radio1" value="3" checked />
        10 <input type="radio" name="radio1" value="10" />
        50 <input type="radio" name="radio1" value="50" />
        <br /><br />

        <input type="submit" value="submit" />
    </form>

    <br /><br />
    <div style="color:red; font-weight:bold;">
        <%= st %>
    </div>
</asp:Content>