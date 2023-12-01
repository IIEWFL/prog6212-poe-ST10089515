<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebModuleApp.login" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" CssClass="label-style" runat="server" Text="LOGIN"></asp:Label>
        </div>

        <div>
            <asp:Label ID="Label2" CssClass="label-style" runat="server" Text="USERNAME"></asp:Label>
            <asp:TextBox ID="txtUsername" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label3" CssClass="label-style" runat="server" Text="PASSWORD"></asp:Label>
            <asp:TextBox ID="txtPassword" CssClass="textbox-style" runat="server" TextMode="Password"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="btnLogin" CssClass="button-style" runat="server" Text="LOGIN" OnClick="btnLogin_Click" />
        </div>

        <div>
            <asp:Label ID="lblMessage" CssClass="message-style" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>

        <div>
            <asp:Button ID="btnBack" CssClass="button-style" runat="server" Text="BACK" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
