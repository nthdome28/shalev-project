<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addItem.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript"> /* This tells the computer we are starting a game of instructions. */
    function checkItem() { /* This creates a magic button called 'checkItem' that runs our checks. */
        // איפוס הודעות השגיאה /* (Existing Hebrew comment: Clearing error messages) */
        nameErr.innerHTML = ""; /* This wipes the chalkboard clean for the name error. */
        priceErr.innerHTML = ""; /* This wipes the chalkboard clean for the price error. */

        let isValid = true; /* We start by guessing everything is perfect and correct! */

        alert("1"); /* This pops up a box on the screen that says "1". */
        let nameVal = itemName.value; /* This grabs whatever name the user typed into the box. */
        if (nameVal == "") { /* We check: "Did they leave the name box totally empty?" */
            nameErr.innerHTML = "error"; /* If it's empty, write the word 'error' on the chalkboard. */
            isValid = false; /* Since they made a mistake, everything is not perfect anymore. */
        } /* This is the end of checking for an empty name. */

        alert("2"); /* This pops up a box on the screen that says "2". */
        for (let i = 0; i < nameVal.length; i++) { /* This looks at the name letter by letter, like reading a book. */
            if (nameVal[i] >= '0' && nameVal[i] <= '9') { /* We check: "Is this letter actually a number from 0 to 9?" */
                nameErr.innerHTML = "error"; /* If there is a number in the name, write 'error' on the chalkboard. */
                isValid = false; /* Since names shouldn't have numbers, it's not perfect anymore. */
                break; /* Stop looking at the rest of the letters right now! */
            } /* This is the end of checking for a single number. */
        } /* This is the end of looking through all the letters. */

        alert("3"); /* This pops up a box on the screen that says "3". */
        let priceVal = itemPrice.value; /* This grabs whatever price the user typed into the box. */
        if (priceVal == "") { /* We check: "Did they leave the price box totally empty?" */
            priceErr.innerHTML = "error"; /* If it's empty, write 'error' on the chalkboard for the price. */
            isValid = false; /* Since they forgot the price, everything is not perfect. */
        } /* This is the end of checking for an empty price. */

        alert("4"); /* This pops up a box on the screen that says "4". */
        if (isNaN(priceVal) && priceVal != "") { /* We check: "Is the price made of words instead of numbers?" */
            priceErr.innerHTML = "error"; /* If it's not a real number, write 'error' on the chalkboard. */
            isValid = false; /* Since prices must be numbers, everything is not perfect. */
        } /* This is the end of checking for fake numbers. */

        alert("5"); /* This pops up a box on the screen that says "5". */
        return isValid; /* Tell the computer if the whole form passed the test or failed. */
    } /* This is the end of our magic 'checkItem' button instructions. */
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