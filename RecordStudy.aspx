<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecordStudy.aspx.cs" Inherits="WebModuleApp.RecordStudy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Record Study Hours</title>
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

        .message-style {
            color: #e74c3c;
            margin-top: 10px;
        }

        .display-style {
            color: #333333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 class="label-style">RECORD STUDY HOURS</h2>

        <div>
            <label for="txtCode" class="label-style">ENTER MODULE CODE</label>
            <asp:TextBox ID="txtCode" CssClass="textbox-style" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" CssClass="button-style" runat="server" Text="SEARCH" OnClick="btnSearch_Click" />
        </div>

        <div>
            <label for="txtDate" class="label-style">ENTER DATE (YYYY-MM-DD)</label>
            <asp:TextBox ID="txtDate" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <label for="txtHours" class="label-style">ENTER STUDY HOURS OF THE DAY</label>
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
