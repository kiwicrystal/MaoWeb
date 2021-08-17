<%@ Page Title="Home Page" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MaoWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style type="text/css">
    </style>     
        <h1>ฅ•̀∀•́ฅ　～何でも家族間に共有～</h1>
<form id="form1"  runat="server">
 <div>
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
   ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
   OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" Width="1112px" Height="385px">
      <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
      <Columns>
       <asp:BoundField DataField="EventNum" HeaderText="TL番号" ReadOnly="True" ItemStyle-Width="60"/>
       <asp:BoundField DataField="Name" HeaderText="ニックネーム" ItemStyle-Width="120"/>
       <asp:BoundField DataField="Contents" HeaderText="♡MESSAGE♡"/>
       <asp:BoundField DataField="DateTime" HeaderText="up日付" ItemStyle-Width="120"/>
       <asp:BoundField DataField="State" HeaderText="yourコメント" />
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
