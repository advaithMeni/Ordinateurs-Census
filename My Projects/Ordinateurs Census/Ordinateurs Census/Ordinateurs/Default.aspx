<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Description:<br /></h1>
                <h2>Let us see how to jump-start with our &quot;Ordinateurs Census&quot;.</h2>
            </hgroup>
            <p>
                &quot;Ordinateurs&quot; is a French translation of the word computers. &quot;Census&quot; means typically recording various details of individuals. In this case we deal with recording the details of components in a computer at a particular lab.</p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <h5>Getting Started</h5>
            To look into the details of a lab and its components, you need to be a&nbsp; registered member. Register yourself here. (<a id="registerLink" runat="server" href="~/Registration.aspx" aria-dropeffect="none">Register</a>)
        </li>
        <li class="two">
            <h5>Login</h5>
            Login with your username and password for accessing the contents of the website.
           (<a id="loginLink" runat="server" href="~/Login.aspx">Login</a>)
        </li>
        <li class="three">
            <h5>Website Access</h5>
            Based on your roles you will be prvoided with appropriate prvileges for accessing the contents of website respectively.
         (<a id="A1" runat="server" href="~/About.aspx">Learn More..</a>)
        </li>
    </ol>
</asp:Content>