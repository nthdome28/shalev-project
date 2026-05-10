<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signUp.aspx.cs" Inherits="SignUpPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkAll() {
            // איפוס הודעות השגיאה
            fnErr.innerHTML = "";
            lnErr.innerHTML = "";
            emailErr.innerHTML = "";
            passErr.innerHTML = "";

            let isValid = true;

            alert("1");
            let fNameVal = firstName.value;
            if (fNameVal == "") {
                fnErr.innerHTML = "error";
                isValid = false;
            }

            alert("2");
            for (let i = 0; i < fNameVal.length; i++) {
                if (fNameVal[i] >= '0' && fNameVal[i] <= '9') {
                    fnErr.innerHTML = "error";
                    isValid = false;
                    break;
                }
            }

            alert("3");
            let lNameVal = lastName.value;
            if (lNameVal == "") {
                lnErr.innerHTML = "error";
                isValid = false;
            }

            alert("4");
            for (let i = 0; i < lNameVal.length; i++) {
                if (lNameVal[i] >= '0' && lNameVal[i] <= '9') {
                    lnErr.innerHTML = "error";
                    isValid = false;
                    break;
                }
            }

            alert("5");
            if (Email.value == "") {
                emailErr.innerHTML = "error";
                isValid = false;
            }

            alert("6");
            if (passcode.value == "") {
                passErr.innerHTML = "error";
                isValid = false;
            }

            alert("7");
            return isValid;
        }
    </script>
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

        gender:
        <br />
        female <input type="radio" name="radio1" value="F" checked />
        male   <input type="radio" name="radio1" value="M" />
        other  <input type="radio" name="radio1" value="Other" />
        <br /><br />

        hobbies:
        <input type="text" name="hobbies" id="hobbies" placeholder="soccer, basketball..." />
        <br /><br />

        <input type="submit" value="submit" />
    </form>

    <br /><br />
    <div style="color:red; font-weight:bold;">
        <%= st %>
    </div>
</asp:Content>