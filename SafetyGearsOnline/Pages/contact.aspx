<%@ Page Title="Contact | Safety & Protective Equipment" Language="C#" MasterPageFile="~/Pages/MasterPage/template.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="SafetyGearsOnline.Pages.contact1" %>
<asp:Content ID="contacttheadCPH" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="contactbannerCPH" ContentPlaceHolderID="bannerCPH" runat="server">

    <div id="contactcontent">

     <div id="contactleftside">
    <table>
        <tr>
            <td><asp:Label ID="contactnamelbllink" runat="server" Text="Name: -"></asp:Label></td>
            <td><asp:TextBox ID="contactnametextboxlink" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="contactRFVnamelink" runat="server" ErrorMessage="Enter Name !!" ControlToValidate="contactnametextboxlink"></asp:RequiredFieldValidator>

            </td>

        </tr>

        <tr>
            <td><asp:Label ID="contactemaillbllink" runat="server" Text="Email Address: -"></asp:Label></td>
            <td><asp:TextBox ID="contactemailtextboxlink" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="contactemailREVlink" runat="server" ErrorMessage="Provide Real Email" ControlToValidate="contactemailtextboxlink" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>


        <tr>
            <td><asp:Label ID="contactsubjectlbllink" runat="server" Text="Subject: -"></asp:Label></td>
            <td><asp:TextBox ID="contactsubjecttextboxlink" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="contactsubjectRFVlink" runat="server" ErrorMessage="Enter Subject !!" ControlToValidate="contactsubjecttextboxlink"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td><asp:Label ID="contactmessagelbllink" runat="server" Text="Message: -"></asp:Label></td>
            <td><asp:TextBox ID="contactmessagetextboxlink" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="contactmessageRFVlink" runat="server" ErrorMessage="Enter Message !!" ControlToValidate="contactmessagetextboxlink"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td><asp:Button ID="contactsendlink" runat="server" Text="Send Message" OnClick="contactsendlink_Click" /></td>

            <td><asp:Label ID="contactresultlbllink" runat="server"></asp:Label>
            </td>
        </tr>
    </table> 
    </div>   



    <div id="contactrightside">


        <div id="map">

            <asp:ImageMap ID="staticmap" runat="server" ImageUrl="https://maps.googleapis.com/maps/api/staticmap?center=Brooklyn+Bridge,New+York,NY&zoom=13&size=600x300&maptype=roadmap
                                &markers=color:blue%7Clabel:S%7C40.702147,-74.015794
                                &markers=color:green%7Clabel:G%7C40.711614,-74.012318
                                &markers=color:red%7Clabel:C%7C40.718217,-73.998284
                                &key=AIzaSyBJHM3DIGFZwsTyeDUM3rLogk9ewg2Q04I">

            </asp:ImageMap>

        </div>




    </div>


    </div>


</asp:Content>
<asp:Content ID="contactwrapperCPH" ContentPlaceHolderID="contentwrapperCPH" runat="server">
</asp:Content>
