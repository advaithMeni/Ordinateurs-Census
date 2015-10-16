<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <%--<h1><%: Title %>.<br /></h1>--%>
        <h1>Description about the website::</h1>
    </hgroup>

    <article>
        <p>        
           Maintaining systems in the Laboratory (which consists of computers) is a hectic task if it is done 



based on the statistics of ledgers or log books. To keep track of the details of the system and 



the number of systems corrupt, damaged or under repair is a tough task for the in-charge of a 



lab to monitor. There is also the case of some movable components of a system like a mouse or 



a keyboard to get misplaced or swapped by students. To display all these stats in a simplified 



manner we will design a simple application which gives the lab in-charge a clear cut idea about 



the current status of the systems in the lab that he is in-charge for.
        </p>

        <p>        
            The term ‘Ordinateurs’ is the French translation of the word  computer. The word ‘Census’ 



means typically recording various details of individuals. In our project we record details of 



the components of a computer in the labs. We will design our application in a way that is 



beneficial for the Lab in-charges to keep a track of faulty or corrupt machines using our  user 



friendly interface which gives a pictorial representation of the entire lab with the specifications 



of the faulty areas etc. We will even provide different levels of  privileges depending on the 



authorities using the application. The decision making authorities will have the privilege to grant 



permissions and to modify certain data. The time stamp of any update made by anyone including 



the highest authority is not available for modifications. This makes the application credible and 



gives authentic information.
        </p>
        <h1>Existing System:<br /></h1>
        <p>        
            In many engineering colleges, presently maintaining systems is a hectic task as it is being 



done using log books, ledgers etc. To keep track of the details of the system and the number of 



systems corrupt, damaged or under repair is a tough task for the in-charge of a lab to monitor. 



There are also cases where some components of the system may be purchased, misplaced, 



removed, added, spoiled etc. As it is a manual process it is risky, not credible and time 



consuming..
        </p>
        <h1>Proposed System:</h1>
        <p>In this project, we will develop an application in which the components are distinguished based 



on a unique id. Firstly, we will assign id’s to all the systems (including the monitor, mouse, 



keyboard, cable, power cable, cabinet, RAM, SMPS, Motherboard, Processor fans, HDD, data 



cable, etc.), networking related accessories which include the rack, switch ports, ports connected, 



etc., and electrical equipment (fans, lights, etc.). An id acts like a primary key to a component. 



The modifications performed on the components will be stored in a database in the backend and 



complete details of that component will be retrieved when the user requests/searches it through 



the unique id. The accounts of the lab will be transparent up to the higher authorities and any 



modifications that are to be made will have restricted levels of privileges.</p>
 <h1>Roles:</h1>
        <p>        
           In this project we have 4 major roles:
        </p>
       
         <ol type="a">
            <li><h3>Director:</h3> A Director has the authority to look at all the levels and to grant permissions to 



buy new components or replace components based on the analysis he makes with the help 



of admin.</li>
            <li><h3>Admin:</h3> An admin has the authority to manage the systems and can grant permissions 



for the movement of a system/component from one lab to another keeping in mind the 



requirements of each lab.</li>
            <li><h3>HOD:</h3> A HOD can check the necessities of a particular lab in their department along with 



the functionality of components.</li>
            <li><h3>Lab in-charge:</h3> A lab in-charge can update the status of a component by searching with 



its unique id.</li>
        </ol> 
    </article>

    <%--<aside>
         <h2>Roles:</h2>
        <p>        
           In this project we have 4 major roles:
        </p>
      
    </aside>--%>
</asp:Content>