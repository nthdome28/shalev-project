<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signUp.aspx.cs" Inherits="SignUpPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">

<script type="text/javascript"> /* This tells the computer we are starting a game of instructions. */
    function checkAll() { /* This creates a magic button called 'checkAll' that runs our checks. */
        // איפוס הודעות השגיאה /* (Existing Hebrew comment: Clearing error messages) */
        fnErr.innerHTML = ""; /* This wipes the chalkboard clean for the first name error. */
        lnErr.innerHTML = ""; /* This wipes the chalkboard clean for the last name error. */
        emailErr.innerHTML = ""; /* This wipes the chalkboard clean for the email error. */
        passErr.innerHTML = ""; /* This wipes the chalkboard clean for the password error. */

        let isValid = true; /* We start by guessing everything is perfect and correct! */

        alert("1"); /* This pops up a box on the screen that says "1". */
        let fNameVal = firstName.value; /* This grabs whatever first name the user typed into the box. */
        if (fNameVal == "") { /* We check: "Did they leave the first name box totally empty?" */
            fnErr.innerHTML = "error"; /* If it's empty, write the word 'error' on the first name chalkboard. */
            isValid = false; /* Since they made a mistake, everything is not perfect anymore. */
        } /* This is the end of checking for an empty first name. */

        alert("2"); /* This pops up a box on the screen that says "2". */
        for (let i = 0; i < fNameVal.length; i++) { /* This looks at the first name letter by letter, like reading a book. */
            if (fNameVal[i] >= '0' && fNameVal[i] <= '9') { /* We check: "Is this letter actually a number from 0 to 9?" */
                fnErr.innerHTML = "error"; /* If there is a number in the name, write 'error' on the chalkboard. */
                isValid = false; /* Since first names shouldn't have numbers, it's not perfect anymore. */
                break; /* Stop looking at the rest of the letters right now! */
            } /* This is the end of checking for a single number in the first name. */
        } /* This is the end of looking through all the first name letters. */

        alert("3"); /* This pops up a box on the screen that says "3". */
        let lNameVal = lastName.value; /* This grabs whatever last name the user typed into the box. */
        if (lNameVal == "") { /* We check: "Did they leave the last name box totally empty?" */
            lnErr.innerHTML = "error"; /* If it's empty, write the word 'error' on the last name chalkboard. */
            isValid = false; /* Since they made a mistake, everything is not perfect anymore. */
        } /* This is the end of checking for an empty last name. */

        alert("4"); /* This pops up a box on the screen that says "4". */
        for (let i = 0; i < lNameVal.length; i++) { /* This looks at the last name letter by letter, like reading a book. */
            if (lNameVal[i] >= '0' && lNameVal[i] <= '9') { /* We check: "Is this letter actually a number from 0 to 9?" */
                lnErr.innerHTML = "error"; /* If there is a number in the last name, write 'error' on the chalkboard. */
                isValid = false; /* Since last names shouldn't have numbers, it's not perfect anymore. */
                break; /* Stop looking at the rest of the letters right now! */
            } /* This is the end of checking for a single number in the last name. */
        } /* This is the end of looking through all the last name letters. */

        alert("5"); /* This pops up a box on the screen that says "5". */
        if (Email.value == "") { /* We check: "Did they leave the email box totally empty?" */
            emailErr.innerHTML = "error"; /* If it's empty, write 'error' on the chalkboard for the email. */
            isValid = false; /* Since they forgot the email, everything is not perfect. */
        } /* This is the end of checking for an empty email. */

        alert("6"); /* This pops up a box on the screen that says "6". */
        if (passcode.value == "") { /* We check: "Did they leave the password box totally empty?" */
            passErr.innerHTML = "error"; /* If it's empty, write 'error' on the chalkboard for the password. */
            isValid = false; /* Since they forgot the password, everything is not perfect. */
        } /* This is the end of checking for an empty password. */

        alert("7"); /* This pops up a box on the screen that says "7". */
        return isValid; /* Tell the computer if the whole form passed the test or failed. */
    } /* This is the end of our magic 'checkAll' button instructions. */
</script> 

```
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Sign Up</h2>

    <form method="post" onsubmit="return checkAll()">
        first name:
        <input type="text" name="firstName" id="firstName" placeholder="example" />
        <span id="fnErr" style="color:red;"></span>
        <br /><br />

        last name:
        <input type="text" name="lastName" id="lastName" placeholder="example" />
        <span id="lnErr" style="color:red;"></span>
        <br /><br />

        email:
        <input type="text" name="Email" id="Email" placeholder="example@gmail.com" />
        <span id="emailErr" style="color:red;"></span>
        <br /><br />

        passcode:
        <input type="password" name="passcode" id="passcode" placeholder="password..." />
        <span id="passErr" style="color:red;"></span>
        <br /><br />

        enter age group:
        <br />
        13-18 <input type="radio" name="age" value="13-18" checked />
        19-25 <input type="radio" name="age" value="19-25" />
        26-39 <input type="radio" name="age" value="26-39" />
        40+   <input type="radio" name="age" value="40+" />
        <br /><br />

        ethnicity:
        <select id="ethnicity" name="ethnicity">
          <option value="asian">asian</option>
          <option value="black">black</option>
          <option value="hispanic">hispanic</option>
          <option value="white">white</option>
          <option value="other">other</option>
        </select>
        <br /><br />


        gender:
        <br />
        female <input type="radio" name="radio1" value="F" checked />
        male   <input type="radio" name="radio1" value="M" />
        other  <input type="radio" name="radio1" value="Other" />
        <br /><br />

        favorite subject:
        <br />
        coding: <input type="checkbox" name="check2" id="check_1" checked value="code" />
        math: <input type="checkbox" name="check2" id="check_2"  value="math"/>
        java: <input type="checkbox" name="check2" checked id="check_3"  value="java" />
        gym: <input type="checkbox" name="check2" id="check_4"  value="gym" />
        <br />

        <br /><br />



        hobbies:
        <br /><br />
            <textarea 
                name="hobbies" 
                id="hobbies" 
                placeholder="soccer, basketball..." 
                rows="5"    
                cols="40" 
            ></textarea>
        <br /><br />

        <input type="submit" value="submit" />
    </form>

    <br /><br />
    <div style="color:red; font-weight:bold;">
        <%= st %>
    </div>
</asp:Content>