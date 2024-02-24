<%@ Page Language="C#" MasterPageFile="Exercise5.Master" AutoEventWireup="true" CodeBehind="~/Exercise5.aspx.cs" Inherits="Module1Exercise1.Exercise4" %>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>
<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="head"></asp:Content>

<asp:Content runat="server" ID="MainContent" ContentPlaceHolderID="BodyPH">
    <div id="homepage">
        <h2>How would you compare plain HTML to ASP.NET WebForms</h2>
        <p>ASP.NET seems to be more specialized for server data ineteractions than plain HTML.</p>

        <h2>The code behind (C#) and JavaScript seem to share many use cases. 
            When should you implement logic in the code behind and when should 
            you implement logic in JavaScript? Provide examples.</h2>
        <p>To me it seems that the choice of language is up to preference/expertise, but there can be some cases where using
            one over the other can lead to simpler solutions to problems like with JS's alert() function. It's also worth noting that
            some users may block JS.
        </p>

        <h2>Explain what post backs are.</h2>
        <p>Post backs are when some controls post something to the server/database and changes are reflected back on the same page the control is in.</p>
    </div>
</asp:Content>