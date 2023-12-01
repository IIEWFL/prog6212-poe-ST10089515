<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecordStudy.aspx.cs" Inherits="WebModuleApp.RecordStudy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-color: grey;
        }

        .label-style {
            font-weight: bold;
            color: black;
        }

        .textbox-style {
            padding: 5px;
            margin: 5px;
        }

        .button-style {
            background-color: blue;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

        .message-style {
            color: red;
        }

        .display-style {
            color: black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" CssClass="label-style" runat="server" Text="RECORD STUDY HOURS"></asp:Label>
        </div>

        <div>
            <asp:Label ID="Label2" CssClass="label-style" runat="server" Text="ENTER MODULE CODE"></asp:Label>
            <asp:TextBox ID="txtCode" CssClass="textbox-style" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" CssClass="button-style" runat="server" Text="SEARCH" OnClick="btnSearch_Click" />
        </div>

        <div>
            <asp:Label ID="Label3" CssClass="label-style" runat="server" Text="ENTER DATE (YYYY-MM-DD)"></asp:Label>
            <asp:TextBox ID="txtDate" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label4" CssClass="label-style" runat="server" Text="ENTER STUDY HOURS OF THE DAY"></asp:Label>
            <asp:TextBox ID="txtHours" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="btnSave" CssClass="button-style" runat="server" Text="SAVE" OnClick="btnSave_Click" />
        </div>

        <div>
            <asp:Label ID="lblMessage" CssClass="message-style" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>

        <div>
            <asp:Label ID="lblDisplay" CssClass="display-style" runat="server" Text=""></asp:Label>
        </div>

        <div>
            <asp:Button ID="btnBack" CssClass="button-style" runat="server" Text="BACK" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
