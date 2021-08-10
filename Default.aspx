<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MaoWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
<style type="text/css">
</style>
    <div>       
        <h1>maomao</h1>
       <asp:GridView id="gv" runat="server" AutoGenerateColumns="False"
            DataSourceID="SqlDataSource1" Width="711px">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="Contents" HeaderText="Contents" />
                    <asp:BoundField DataField="DateTime" HeaderText="DateTime" />
                    <asp:BoundField DataField="State" HeaderText="State" />
                </Columns>
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:FamilyDBConnectionString %>" 
            SelectCommand="SELECT [Name], [Contents], [DateTime], [State] FROM [RecordTable] ORDER BY [EventNum]">
        </asp:SqlDataSource>
    </div>

</asp:Content>
