<%@ Page Language="C#" CodeBehind="~/Exercise4.aspx.cs" Inherits="Module1Exercise1.Exercise4" %>

<%-- Exercise 4: Using validation controls --%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
    <h1>Mapua MCL WebDev Club Registration</h1>
    <form runat="server">
        <asp:Label runat="server" Text="Full Name"></asp:Label><br />
        <asp:TextBox runat="server" ID="fullName" />
        <%-- Todo 4.1 Add a validator that makes sure the text box is not empty --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=RequiredFieldValidator%20Control --%>
        <asp:RequiredFieldValidator runat="server" ID="FNRFV" ControlToValidate="fullName" ErrorMessage="Please enter full name."></asp:RequiredFieldValidator> <br />

        <asp:Label runat="server" Text="Age"></asp:Label><br />
        <asp:TextBox runat="server" ID="age" TextMode="Number" />
        <%-- Todo 4.2 Add a range validator that checks if the value inputted in the text box is within 0 and 100--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=RangeValidator%20Control--%>
        <asp:RequiredFieldValidator runat="server" ID="AgeRFV" ControlToValidate="age" ErrorMessage="Please enter age."></asp:RequiredFieldValidator>
        <asp:RangeValidator runat="server" ID="AgeRV" Type="Integer" MinimumValue="0" MaximumValue="100" ControlToValidate="age" ErrorMessage="Please enter a whole number between 0-100."></asp:RangeValidator><br />

        <asp:Label runat="server" Text="Email"></asp:Label><br />
        <asp:TextBox runat="server" ID="email" />
        <%-- Todo 4.3 Add a regex validator that checks if the inputted value is a valid email. The regex for validating email is /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/ --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=The%20RegularExpressionValidator%20allows --%>
        <asp:RequiredFieldValidator runat="server" ID="EmailRFV" ControlToValidate="email" ErrorMessage="Please enter email."></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator runat="server" ID="EmailREV" ControlToValidate="email" ErrorMessage="Please enter a valid email." ValidationExpression="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$"></asp:RegularExpressionValidator> <br />

        <asp:Label runat="server" Text="Confirm Email"></asp:Label><br />
        <asp:TextBox runat="server" ID="confirmEmail" />
        <%-- Todo 4.4 Add a compare validator that checks if the confirmation email is the same as the original email --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=CompareValidator%20Control --%>
        <asp:RequiredFieldValidator runat="server" ID="ConfirmRFV" ControlToValidate="confirmEmail" ErrorMessage="Please enter email again."></asp:RequiredFieldValidator>
        <asp:CompareValidator runat="server" ID="ConfirmCV" ControlToValidate="confirmEmail" ControlToCompare="email" ErrorMessage="Emails do not match."></asp:CompareValidator> <br />

        <asp:Button Text="Submit" runat="server" UseSubmitBehavior="true" OnClick="SubmitClick" />
        <asp:Label ID="result" runat="server" />
        <%-- Todo 4.5 When the user submits the form and all validations pass, display all the inputted texts in the "result" label --%>
    </form>
</body>
</html>
