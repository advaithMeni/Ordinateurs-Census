<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        
        <h1 style="font-family:Algerian;font-weight:bold"><u>University Of Nebraska at Omaha</u></h1>
    </hgroup>

    <section class="contact">
        <header>
            <h3 style="font-family:Algerian;font-weight:bold"><br /> <u>Phone:</u></h3>
        </header>
        <aside>
        <img src="Images/map.jpg" style="margin-top: 0px;margin-left:-430px" />
    </aside>
        <p>
            <span class="label">Main:</span>
            <span>(402) 554-2800</span>
        </p>
        <p>
            <span class="label">Alternate:</span>
            <span>(402) 554-3819</span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3 style="font-family:Algerian;font-weight:bold"><br /> <u>Email:</u></h3>
        </header>
       
        <p>
            <span class="label">General:</span>
            <span><a href="mailto:gradschool@unomaha.edu">gradschool@unomaha.edu</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3 style="font-family:Algerian;font-weight:bold"><br /> <u>Address:</u></h3>
        </header>
        <p>
            University of Nebraska Omaha,<br />
             6001 Dodge Street,<br />
             Omaha, NE 68182<br />
        </p>
    </section>
    
</asp:Content>