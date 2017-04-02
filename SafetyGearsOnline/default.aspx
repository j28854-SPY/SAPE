﻿<%@ Page Title="Home | Safety & Protective Equipment" Language="C#" MasterPageFile="~/Pages/MasterPage/html_page.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SafetyGearsOnline._default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner_cph" runat="server">   
    
    <div id="default_content">


        <div id="default_searchbox1">


            <asp:Label ID="default_searchbox_label" runat="server" Text="Welcome to Safety & Protective Equipment E-Commerce" CssClass="default_searchbox_label" Width="960px"></asp:Label>
            <asp:TextBox ID="default_searchbox_textbox" runat="server" CssClass="default_searchbox_textbox" OnTextChanged="default_searchbox_textbox_TextChanged" ToolTip="Search For Item Equipment"></asp:TextBox>
            <asp:Button ID="default_searchbox_button" runat="server" Text="Search For Item Equipment" OnClick="default_searchbox_button_Click" />


            <asp:SqlDataSource ID="default_search_db" runat="server" ConnectionString="<%$ ConnectionStrings:SaPERemoteConnectionString %>" SelectCommand="SELECT * FROM [item_table]"></asp:SqlDataSource>

            <asp:Repeater ID="default_repeater1" runat="server">



                <HeaderTemplate>


                    <table id="default_table1">

                

            


                </HeaderTemplate>

                <ItemTemplate>

                    <tr>
                        <td><%# Eval("ItemName") %></td>
                        <!-- <td><img src="/Images/Database/ <%# Eval("ItemName") %>" width="70" height:"70" /></td>-->                        
                    </tr>

                </ItemTemplate>

                <FooterTemplate>

                    </table>
                </FooterTemplate>


            
            </asp:Repeater>



        </div>
            




        <div id="default_image_content">

            <asp:Image ID="default_image1" runat="server" ImageUrl="~/Images/safetygearbackground.jpg" />

        </div>

        <hr />

        <div id="default_item_panel1" class="default_item_panel1">

            <asp:Panel ID="itempanel" runat="server">


       




            </asp:Panel>

         </div>
  
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_cph" runat="server">
</asp:Content>
