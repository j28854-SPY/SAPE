<%@ Page Title="Admin | Safety & Protective Equipment" Language="C#" MasterPageFile="~/Pages/MasterPage/htmlpage.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="SafetyGearsOnline.Pages.Administration.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerCPH" runat="server">

 <div id="admincontent">

        <div id="admin_gridview1">

            <asp:Label ID="admin_lbl_itemtable" class="admin_label_class" runat="server" Text="Table of Item in Sql Server Database" Width="100%"></asp:Label>

            
            <hr />

            <asp:GridView ID="admin_gv_itemtable" class="admin_gv_mta_class" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Code" DataSourceID="SaPEDBLocal" OnRowEditing="admin_gv_itemtable_RowEditing">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                    <asp:BoundField DataField="Versions" HeaderText="Versions" SortExpression="Versions" />
                    <asp:BoundField DataField="ItemDetails" HeaderText="ItemDetails" SortExpression="ItemDetails" />
                    <asp:BoundField DataField="ItemCostBND" HeaderText="ItemCostBND" SortExpression="ItemCostBND" />
                    <asp:BoundField DataField="ItemDisplay" HeaderText="ItemDisplay" SortExpression="ItemDisplay" />
                    <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" InsertVisible="False" ReadOnly="True" />
                </Columns>
            </asp:GridView>


            <asp:SqlDataSource ID="SaPEDBLocal" runat="server" ConnectionString="<%$ ConnectionStrings:SaPEConnectionString %>" DeleteCommand="DELETE FROM [item_table] WHERE [Code] = @Code" InsertCommand="INSERT INTO [item_table] ([ItemName], [Versions], [ItemDetails], [ItemCostBND], [ItemDisplay]) VALUES (@ItemName, @Versions, @ItemDetails, @ItemCostBND, @ItemDisplay)" SelectCommand="SELECT * FROM [item_table]" UpdateCommand="UPDATE [item_table] SET [ItemName] = @ItemName, [Versions] = @Versions, [ItemDetails] = @ItemDetails, [ItemCostBND] = @ItemCostBND, [ItemDisplay] = @ItemDisplay WHERE [Code] = @Code">
                <DeleteParameters>
                    <asp:Parameter Name="Code" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="Versions" Type="Int32" />
                    <asp:Parameter Name="ItemDetails" Type="String" />
                    <asp:Parameter Name="ItemCostBND" Type="Decimal" />
                    <asp:Parameter Name="ItemDisplay" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="Versions" Type="Int32" />
                    <asp:Parameter Name="ItemDetails" Type="String" />
                    <asp:Parameter Name="ItemCostBND" Type="Decimal" />
                    <asp:Parameter Name="ItemDisplay" Type="String" />
                    <asp:Parameter Name="Code" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


            
        </div>



        <div id="admin_gridview2">


            <asp:Label ID="admin_lbl_itemversions" runat="server" Text="Table of Item Versions in Sql Server Database" CssClass="admin_label_class" Width="100%"></asp:Label>

            <hr />

            <asp:GridView ID="GridView1" class="admin_gv_mta_class" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Code" DataSourceID="SaPEDBItemVersionLocal">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                    <asp:BoundField DataField="Code" HeaderText="Code" InsertVisible="False" ReadOnly="True" SortExpression="Code" />
                </Columns>
            </asp:GridView>


            <asp:SqlDataSource ID="SaPEDBItemVersionLocal" runat="server" ConnectionString="<%$ ConnectionStrings:SaPEConnectionString %>" DeleteCommand="DELETE FROM [item_versions] WHERE [Code] = @Code" InsertCommand="INSERT INTO [item_versions] ([ItemName]) VALUES (@ItemName)" SelectCommand="SELECT * FROM [item_versions] ORDER BY [ItemName]" UpdateCommand="UPDATE [item_versions] SET [ItemName] = @ItemName WHERE [Code] = @Code">
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


        </div>



        <asp:LinkButton ID="upload_item_data_page" runat="server" PostBackUrl="~/Pages/Administration/Database/database_item_table.aspx" Width="163px"> <asp:Image ID="upload_item_data_page_image" runat="server" ImageUrl="~/Images/icon/uploadbutton_1.jpg"  CssClass="upload_item_data_page_image" /></asp:LinkButton>


</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentwrapperCPH" runat="server">
</asp:Content>
