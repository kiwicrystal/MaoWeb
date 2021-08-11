<%@ Page Title="新規登録" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MaoWeb.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <form method="post" action="?Action=Add">
        <fieldset>
            <legend>イベント登録</legend>
            <p>
                <label for="EventNum">EventNum:</label>
                <input type="text" name="EventNum" />
            </p>

            <p>
                <label for="Name">Name:</label>
                <input type="text" name="Name" />
            </p>

            <p>
                <label for="Contents">Contents:</label>
                <input type="text" name="Contents" />
            </p>
            <p>
                <label for="State">State:</label>
                <input type="text" name="State" />
            </p>

            <p>
                <input type="submit" name="buttonSubmit" value="新規登録" /></p>
        </fieldset>
    </form>
    
</asp:Content>
