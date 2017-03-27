<%@ Page Title="Admin | Safety & Protective Equipment" Language="C#" MasterPageFile="~/Pages/MasterPage/template.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="SafetyGearsOnline.Pages.Administration.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerCPH" runat="server">

    <div id="admincontent">

        <div id="admin_gridview1">

            <asp:Label ID="admin_label" class="admin_label_class" runat="server" Text="Table of Item in Sql Express Database"></asp:Label>


            <asp:GridView ID="admin_gv_mta" class="admin_gv_mta_class" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Code" DataSourceID="SaPEDBLocal">
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






    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentwrapperCPH" runat="server">
</asp:Content>
