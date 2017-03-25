<%@ Page Title="Add Merchandise Types | Safety & Protective Equipment" Language="C#" MasterPageFile="~/Pages/MasterPage/template.Master" AutoEventWireup="true" CodeBehind="database_merchandise_types.aspx.cs" Inherits="SafetyGearsOnline.Pages.Administration.Database.database_merchandise_types" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerCPH" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentwrapperCPH" runat="server">



    <!--begin merchandise_types content-->

    <div id="dbmertypescontent">



    <!--begin merchandise_types content table-->

        <div id="dbmertypescontentleftside">

            <table id="dbmertypescontentable">
    <!--begin merchandise_types label and textbox-->
                <tr>
                    <td><asp:label runat="server" text="Name: -" ID="dbmertypesnamelbllink"></asp:label></td>
                    <td><asp:textbox runat="server" ID="dbmertypesnametextboxlink"></asp:textbox></td>
                </tr>    
    <!--end merchandise_types label and textbox-->                  
            </table>




    <!--begin merchandise_types button and label results-->
            <table id="mertypescontent">
                <tr>
                    <td><asp:button runat="server" text="Upload Mechandise Types" OnClick="upload_mer_types_button" /></td>
                </tr>


                <tr>
                    <td><asp:Label ID="upload_mer_types_button_results" runat="server" Text=""></asp:Label></td>
                </tr>
            </table>
    <!--end merchandise_types button and label results-->
        </div>

    <!--end merchandise_types content table-->





    </div>

    <!--end merchandise_types content-->

</asp:Content>
