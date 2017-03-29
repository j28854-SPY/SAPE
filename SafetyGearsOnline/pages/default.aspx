<%@ Page Title="Home | Safety & Protective Equipment" Language="C#" MasterPageFile="~/Pages/MasterPage/template.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SafetyGearsOnline.Pages._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerCPH" runat="server">

    <div id="home_content">


        <div id="home_content1">

            <asp:Repeater ID="Repeater1" runat="server">

                <HeaderTemplate>
                    <table id="home_content1_table1">
                        <tr>
                            <th>Item Name</th>
                            <th>Versions</th>
                            <th>Item Details</th>
                            <th>Item Cost BND</th>
                            <th>Display Preview</th>
                        </tr>



                    </table>                                   
                </HeaderTemplate>

                
            </asp:Repeater>

            
        </div>



    </div>
    <!-- header template, table cell padding 2, cell spacing 2 border 1 , tr then th variables (name)of itemtable -->
    <!-- item template, tr then td, <%# Eval("Variables") %> td for image td then <img src=" /<%# Eval("variable") %>" /> Versions nada-->
    <!-- foottemplate-->


    <!-- datalist then edit template, image (ImageUrl="<%# "imge/" + Eval("variable") %>"  ,label, label-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentwrapperCPH" runat="server">
</asp:Content>
