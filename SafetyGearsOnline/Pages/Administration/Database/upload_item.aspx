<%@ Page Title="Upload Items | Safety & Protective Equipment" Language="C#" MasterPageFile="~/Pages/MasterPage/htmlpage.Master" AutoEventWireup="true" CodeBehind="upload_item.aspx.cs" Inherits="SafetyGearsOnline.Pages.Administration.Database.upload_item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerCPH" runat="server">


    <!--begin container wrapper for add merchandise_table-->

    <div id="dbitemtablecontent">


    <!--begin item_versions content-->


        <div id="dbitemversionscontent">



    <!--begin item_versions content table-->

        <div id="dbitemversionscontentleftside">

            <table id="dbitemversionscontentable1">
    <!--begin item_versions label and textbox-->
                <tr>
                    <td><asp:label runat="server" text="Name: -" ID="dbitemversionsnamelbllink"></asp:label></td>
                    <td><asp:textbox runat="server" ID="dbitemversionsnametextboxlink"></asp:textbox></td>
                </tr>    
    <!--end item_versions label and textbox-->                  
            </table>




    <!--begin item_versions button and label results-->
            <table id="dbitemversionscontentable2">
                <tr>
                    <td><asp:button runat="server" text="Upload Item Versions" OnClick="upload_item_versions_button"/></td>
                </tr>


                <tr>
                    <td><asp:Label ID="upload_item_versions_button_results" runat="server" Text=""></asp:Label></td>
                </tr>
            </table>
    <!--end item_versions button and label results-->
        </div>

    <!--end item_versions content table-->

        

        

    </div>

    <!--end item_versions content-->



        

    <!--begin leftside for add item_table-->
        <div id="dbitemtablescontentleftside">



    <!--begin tables for add item_table-->
            <table id="dbitemtablecontentable1">
                <tr>
                    <td><asp:label runat="server" text="Name: -" ID="dbitemtablenamelbllink"></asp:label></td>
                    <td><asp:textbox runat="server" ID="dbitemtablenametextboxlink"></asp:textbox></td>
                </tr>
            </table>

            <table id="dbitemtablecontentable2">
                <tr>
                    <td><asp:label runat="server" text="Versions: -" ID="dbitemtableversionslbllink"></asp:label></td>
                    <td><asp:DropDownList ID="dbitemtableversionsdropdownlink" runat="server" DataSourceID="SaPEDBVersionLocal" DataTextField="ItemName" DataValueField="Code"></asp:DropDownList>
                        <asp:SqlDataSource ID="SaPEDBVersionLocal" runat="server" ConnectionString="<%$ ConnectionStrings:SaPEConnectionString %>" DeleteCommand="DELETE FROM [item_versions] WHERE [Code] = @Code" InsertCommand="INSERT INTO [item_versions] ([ItemName]) VALUES (@ItemName)" SelectCommand="SELECT * FROM [item_versions] ORDER BY [ItemName]" UpdateCommand="UPDATE [item_versions] SET [ItemName] = @ItemName WHERE [Code] = @Code">
                            <DeleteParameters>
                                <asp:Parameter Name="Code" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ItemName" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ItemName" Type="String" />
                                <asp:Parameter Name="Code" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>

            <table id="dbitemtablecontentable3">
                <tr>
                    <td><asp:label runat="server" text="Cost BND: -" ID="dbitemtablepricelbllink"></asp:label></td>
                    <td><asp:textbox runat="server" ID="dbitemtablepricetextboxlink"></asp:textbox></td>
                </tr>
            </table>
    <!--end tables for add item_table-->




          
        </div>
    <!--end leftside for add item_table-->




    <!--begin rightside for add item_table-->
        <div id="dbitemtablescontentrightside">


      


    <!--begin tables for add item_table-->
            <table id="dbitemtablecontentable4">
                <tr>
                    <td class="auto-style1"><asp:label runat="server" text="Display: -" ID="dbitemtabledisplaylbllink"></asp:label></td>
                    <td><asp:DropDownList ID="dbitemtabledisplaydropdownlink" runat="server"></asp:DropDownList></td>
                </tr>
            </table>

            <table id="dbitemtablecontentable5">
                <tr>
                    <td><asp:label runat="server" text="Details: -" ID="Label2"></asp:label></td>
                    <td><asp:textbox runat="server" ID="dbitemtabledetailstextboxlink" TextMode="MultiLine"></asp:textbox></td>                    
                </tr>
            </table>

            <table id="dbitemtablecontentable6">
                <tr>
                    <td><asp:Button ID="upload_item_table_button" runat="server" Text="Upload item Table" OnClick="upload_item_table_button_Click"/></td>
                </tr>
            </table>

            <table id="dbitemtablecontentable7">
                <tr>
                    <td><asp:Label ID="upload_item_table_lbl_results" runat="server" Text=""></asp:Label></td>
                </tr>
                 
            </table>
    <!--end tables for add item_table-->





              
        </div>
    <!--end rightside for add item_table-->



      

    </div>

    <!--end container wrapper for add item_table-->


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentwrapperCPH" runat="server">
</asp:Content>
