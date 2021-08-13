<%@ Page Title="新規登録" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MaoWeb.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <form method="post" action="?Action=Add">
        <fieldset>
            <legend>イベント登録</legend>
            <table style="border-collapse:separate; border-spacing:5px 20px;">
                <tr>
                <td><label for="EventNum">EventNum:</label></td>
                <td><input type="text" name="EventNum" /></td>
                </tr>
                <tr>
                <td><label for="Name">Name:</label></td>
                <td><input type="text" name="Name" /></td>
                </tr>
                <tr>
                <td><label for="Contents">Contents:</label></td>
                <td><input type="text" name="Contents" /></td>
                </tr>
                <tr>
                <td><label for="State">State:</label></td>
                <td><input type="text" name="State" /></td>
                </tr>
           </table>
                <input type="submit" name="buttonSubmit" value="新規登録" />

        </fieldset>
    </form>
    
</asp:Content>
