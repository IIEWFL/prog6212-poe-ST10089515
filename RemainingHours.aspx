<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemainingHours.aspx.cs" Inherits="WebModuleApp.RemainingHours" %>

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

        .textbox-style {
            padding: 5px;
            margin: 5px;
        }

        .message-style {
            color: red;
        }

        .display-style {
            /* Add your styles for the display label if needed */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" CssClass="label-style" runat="server" Text="REMAINING HOURS"></asp:Label>
        </div>

        <div>
            <asp:Label ID="Label2" CssClass="label-style" runat="server" Text="ENTER MODULE CODE "></asp:Label>
            <asp:TextBox ID="txtCode" CssClass="textbox-style" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" CssClass="button-style" runat="server" Text="SEARCH" OnClick="btnSearch_Click" />
        </div>

        <div>
            <asp:Label ID="Label3" CssClass="label-style" runat="server" Text="ENTER STUDIED HOURS"></asp:Label>
            <asp:TextBox ID="txtHours" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="btnDisplay" CssClass="button-style" runat="server" Text="DISPLAY" OnClick="btnDisplay_Click" />
        </div>

        <div>
            <asp:Label ID="lblMessage" CssClass="message-style" runat="server" Text=""></asp:Label>
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
