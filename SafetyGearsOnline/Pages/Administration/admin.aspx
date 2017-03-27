<%@ Page Title="Admin | Safety & Protective Equipment" Language="C#" MasterPageFile="~/Pages/MasterPage/template.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="SafetyGearsOnline.Pages.Administration.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bannerCPH" runat="server">

    <div id="admincontent">

        <div id="admin_gridview1">

            <asp:Label ID="admin_label" class="admin_label_class" runat="server" Text="Table of Mechandise in Sql Express Database"></asp:Label>


            <asp:GridView ID="admin_gv_mta" class="admin_gv_mta_class" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="idtype" HeaderText="idtype" SortExpression="idtype" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="about" HeaderText="about" SortExpression="about" />
                    <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                </Columns>
            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sgosdbConnectionString %>" DeleteCommand="DELETE FROM [merchandise_table] WHERE [id] = @id" InsertCommand="INSERT INTO [merchandise_table] ([idtype], [name], [price], [about], [image]) VALUES (@idtype, @name, @price, @about, @image)" SelectCommand="SELECT * FROM [merchandise_table]" UpdateCommand="UPDATE [merchandise_table] SET [idtype] = @idtype, [name] = @name, [price] = @price, [about] = @about, [image] = @image WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="idtype" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="about" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="idtype" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="about" Type="String" />
                    <asp:Parameter Name="image" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>


        </div>






    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentwrapperCPH" runat="server">
</asp:Content>
