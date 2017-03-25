<%@ Page Title="Add Merchandise Types | Safety & Protective Equipment" Language="C#" MasterPageFile="~/Pages/MasterPage/template.Master" AutoEventWireup="true" CodeBehind="database-merchandise-types.aspx.cs" Inherits="SafetyGearsOnline.Pages.Administration.Database.database_merchandise_types" %>
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

            <table id="mertypescontent">
                <tr>

                    <td><asp:button runat="server" text="Upload Mechandise Types" OnClick="upload_mer_types_button" /></td>
            

                    <td></td>

                </tr>


                <tr>
                    <td><asp:Label ID="upload_mer_types_button_results" runat="server" Text=""></asp:Label></td>
                </tr>
            </table>
        </div>







    </div>



</asp:Content>
