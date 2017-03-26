<%@ Page Title="Add Merchandise | Safety & Protective Equipment" Language="C#" MasterPageFile="~/Pages/MasterPage/template.Master" AutoEventWireup="true" CodeBehind="database_mechandise_table.aspx.cs" Inherits="SafetyGearsOnline.Pages.Administration.Database.database_mechandise_table" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerCPH" runat="server">


    <!--begin container wrapper for add merchandise_table-->

    <div id="dbmertablecontent">

    <!--begin leftside for add merchandise_table-->
        <div id="dbmertypescontentleftside">



    <!--begin tables for add merchandise_table-->
            <table id="dbmertablecontentable1">
                <tr>
                    <td><asp:label runat="server" text="Name: -" ID="dbmertablenamelbllink"></asp:label></td>
                    <td><asp:textbox runat="server" ID="dbmertablenametextboxlink"></asp:textbox></td>
                </tr>
            </table>

            <table id="dbmertablecontentable2">
                <tr>
                    <td><asp:label runat="server" text="Type: -" ID="dbmertabletypeslbllink"></asp:label></td>
                    <td><asp:DropDownList ID="dbmertabletypesdropdownlink" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="id"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sgosdbConnectionString %>" SelectCommand="SELECT * FROM [merchandise_types] ORDER BY [name]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>

            <table id="dbmertablecontentable3">
                <tr>
                    <td><asp:label runat="server" text="Price: -" ID="dbmertablepricelbllink"></asp:label></td>
                    <td><asp:textbox runat="server" ID="dbmertablepricetextboxlink"></asp:textbox></td>
                </tr>
            </table>
    <!--end tables for add merchandise_table-->

        </div>
    <!--end leftside for add merchandise_table-->




    <!--begin rightside for add merchandise_table-->
        <div id="dbmertypescontentrightside">
      


    <!--begin tables for add merchandise_table-->
            <table id="dbmertablecontentable4">
                <tr>
                    <td><asp:label runat="server" text="Image: -" ID="dbmertableimagelbllink"></asp:label></td>
                    <td><asp:DropDownList ID="dbmertableimagedropdownlink" runat="server"></asp:DropDownList></td>
                </tr>
            </table>

            <table id="dbmertablecontentable5">
                <tr>
                    <td><asp:label runat="server" text="Infromation: -" ID="Label2"></asp:label></td>
                    <td><asp:textbox runat="server" ID="dbmertableabouttextboxlink"></asp:textbox></td>                    
                </tr>
            </table>

            <table id="dbmertablecontentable6">
                <tr>
                    <td><asp:Button ID="upload_mer_table_button" runat="server" Text="Upload Merchandise Table" OnClick="upload_mer_table_button_Click" /></td>
                </tr>
            </table>

            <table id="dbmertablecontentable7">
                <tr>
                    <td><asp:Label ID="upload_mer_table_lbl_results" runat="server" Text=""></asp:Label></td>
                </tr>
            </table>
    <!--end tables for add merchandise_table-->

        </div>
    <!--end rightside for add merchandise_table-->


    </div>

    <!--end container wrapper for add merchandise_table-->



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentwrapperCPH" runat="server">
</asp:Content>
