<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuleDetails.aspx.cs" Inherits="WebModuleApp.ModuleDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Module Details</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .label-style {
            font-weight: bold;
            color: #333333;
            display: block;
            margin-bottom: 10px;
        }

        .textbox-style {
            padding: 10px;
            margin-bottom: 20px;
            box-sizing: border-box;
            border: 1px solid #cccccc;
            border-radius: 5px;
            width: 100%;
        }

        .button-style {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .button-style:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 class="label-style">MODULE DETAILS</h2>

        <div>
            <label for="moduleCode" class="label-style">MODULE CODE</label>
            <asp:TextBox ID="moduleCode" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <label for="moduleName" class="label-style">MODULE NAME</label>
            <asp:TextBox ID="moduleName" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <label for="moduleCredits" class="label-style">MODULE CREDITS</label>
            <asp:TextBox ID="moduleCredits" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <label for="moduleHours" class="label-style">MODULE HOURS</label>
            <asp:TextBox ID="moduleHours" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="btnSave" CssClass="button-style" runat="server" Text="SAVE - NEXT" OnClick="Button1_Click" />
        </div>

        <div>
            <asp:Button ID="btnBack" CssClass="button-style" runat="server" Text="BACK" OnClick="btnBack_Click" />
        </div>
        <div>
    <asp:Label ID="lblMessage" CssClass="message-style" runat="server" Text="" ForeColor="Red"></asp:Label>
</div>

    </form>
</body>
</html>
