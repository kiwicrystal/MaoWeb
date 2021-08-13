<%@ Page Title="Home Page" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MaoWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style type="text/css">
    </style>     
        <h1>ฅ•̀∀•́ฅ　～イベントを家族共有に～</h1>
<form id="form1"  runat="server">
 <div>
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
   ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
   OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" Width="1112px" Height="385px">
      <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
      <Columns>
       <asp:BoundField DataField="EventNum" HeaderText="EventNum" ReadOnly="True" />
       <asp:BoundField DataField="Name" HeaderText="Name" />
       <asp:BoundField DataField="Contents" HeaderText="Contents"/>
       <asp:BoundField DataField="DateTime" HeaderText="DateTime" />
       <asp:BoundField DataField="State" HeaderText="State" />
       <asp:CommandField HeaderText="編集" ShowEditButton="True" />
       <asp:CommandField HeaderText="削除" ShowDeleteButton="True" />
      </Columns>
      <RowStyle ForeColor="#000066" />
      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="Red" />
      <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
      <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
     </asp:GridView>
 </div>
</form>
</asp:Content>
