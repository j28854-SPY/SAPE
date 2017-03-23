<%@ Page Title="Contact | Safety & Protective Equipment" Language="C#" MasterPageFile="~/Pages/MasterPage/template.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="SafetyGearsOnline.Pages.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerCPH" runat="server">

    <div id="contentleftside">

        <asp:Label ID="contactnamelbllink" runat="server" Text="Name: -"></asp:Label>
            <asp:TextBox ID="contactnametextboxlink" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="contactRFVnamelink" runat="server" ErrorMessage="Enter Name !!" ControlToValidate="contactnametextboxlink"></asp:RequiredFieldValidator>



        <asp:Label ID="contactemaillbllink" runat="server" Text="Email Address: -"></asp:Label>
            <asp:TextBox ID="contactemailtextboxlink" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="contactemailREVlink" runat="server" ErrorMessage="Provide Real Email" ControlToValidate="contactemailtextboxlink" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>



        <asp:Label ID="contactsubjectlbllink" runat="server" Text="Subject: -"></asp:Label>
            <asp:TextBox ID="contactsubjecttextboxlink" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="contactsubjectRFVlink" runat="server" ErrorMessage="Enter Subject !!" ControlToValidate="contactsubjecttextboxlink"></asp:RequiredFieldValidator>



        <asp:Label ID="contactmessagelbllink" runat="server" Text="Message: -"></asp:Label>
            <asp:TextBox ID="contactmessagetextboxlink" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="contactmessageRFVlink" runat="server" ErrorMessage="Enter Message !!" ControlToValidate="contactmessagetextboxlink"></asp:RequiredFieldValidator>


        <asp:Button ID="contactsendlink" runat="server" Text="Send Message" OnClick="contactsendlink_Click" />


    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentwrapperCPH" runat="server">
</asp:Content>
