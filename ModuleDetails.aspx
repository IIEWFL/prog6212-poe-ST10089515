<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuleDetails.aspx.cs" Inherits="WebModuleApp.ModuleDetails" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="MODULE DETAILS"></asp:Label>

        <div>
            <asp:Label ID="Label2" CssClass="label-style" runat="server" Text="MODULE CODE  "></asp:Label>
            <asp:TextBox ID="moduleCode" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label3" CssClass="label-style" runat="server" Text="MODULE NAME  "></asp:Label>
            <asp:TextBox ID="moduleName" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label4" CssClass="label-style" runat="server" Text="MODULE CREDITS  "></asp:Label>
            <asp:TextBox ID="moduleCredits" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label5" CssClass="label-style" runat="server" Text="MODULE HOURS  "></asp:Label>
            <asp:TextBox ID="moduleHours" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="btnSave" CssClass="button-style" runat="server" Text="SAVE - NEXT" OnClick="Button1_Click" />
        </div>

        <div>
            <asp:Button ID="btnBack" CssClass="button-style" runat="server" Text="BACK" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
