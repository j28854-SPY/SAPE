<%@ Page Title="Contact | Safety & Protective Equipment" Language="C#" MasterPageFile="~/Pages/MasterPage/template.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="SafetyGearsOnline.Pages.contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerCPH" runat="server">

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


        <div id="map" style="width:960px; height:500px"></div>




    </div>





</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentwrapperCPH" runat="server">
</asp:Content>
