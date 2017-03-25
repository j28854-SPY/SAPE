<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage/template.Master" AutoEventWireup="true" CodeBehind="database-merchandise-types.aspx.cs" Inherits="SafetyGearsOnline.Pages.Administration.Database.database_merchandise_types" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerCPH" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentwrapperCPH" runat="server">

    <div id="dbmertypescontent">

        <div id="dbmertypescontentleftside">

            <table id="dbmertypescontentable">

                <tr>
                    <td><asp:label runat="server" text="Name: -" ID="dbmertypesnamelbllink"></asp:label></td>
                    <td><asp:textbox runat="server" ID="dbmertypesnametextboxlink"></asp:textbox></td>
                </tr>

                


            </table>


            <asp:button runat="server" text="Upload Mechandise Types" OnClick="upload_mer_types_button" />


        </div>







    </div>



</asp:Content>
