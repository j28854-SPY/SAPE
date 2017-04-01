<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage/html_page.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="SafetyGearsOnline.Pages.Administration.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner_cph" runat="server">


    <div id="default_content_database">


        <asp:ImageButton ID="ImageButton1" runat="server" />


        <div id="default_image_content_database">

            <asp:Image ID="Image1" runat="server" />

        </div>






        <div id="default_db_view_database">
            

            <asp:SqlDataSource ID="default_sqldb1_database" runat="server" ConnectionString="<%$ ConnectionStrings:SaPEConnectionString %>" SelectCommand="SELECT * FROM [item_table]"></asp:SqlDataSource>


            <asp:Repeater ID="default_repeater1_database" runat="server" DataSourceID="default_sqldb1_database">



                <HeaderTemplate>


                    <table id="default_table1_database">

                        <tr>
                            <th>Item Name</th> 
                            <th>Information</th>
                            <th>Cost BND $</th>
                            <th>Preview</th>
                            <th>code</th>
                        </tr>

                    


                </HeaderTemplate>
            
                <ItemTemplate>

                    <tr>
                        <td><%# Eval("ItemName") %>"></td>
                        <td><%# Eval("ItemDetails") %>"></td>
                        <td><%# Eval("ItemCostBND") %>"></td>
                        <td><img src="Images/Database/" <%# Eval("ItemDisplay") %>"></td>
                        <td><%# Eval("Code") %>"></td>
                    </tr>

                </ItemTemplate>

                <FooterTemplate>



                    </table>

                </FooterTemplate>





            </asp:Repeater>


            </div>






    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_cph" runat="server">
</asp:Content>
