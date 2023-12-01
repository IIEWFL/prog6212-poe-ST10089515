<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebModuleApp.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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

        .container {
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            padding: 30px;
            width: 300px;
            text-align: center;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="label-style">LOGIN</h2>

            <label for="txtUsername" class="label-style">USERNAME</label>
            <asp:TextBox ID="txtUsername" CssClass="textbox-style" runat="server"></asp:TextBox>

            <label for="txtPassword" class="label-style">PASSWORD</label>
            <asp:TextBox ID="txtPassword" CssClass="textbox-style" runat="server" TextMode="Password"></asp:TextBox>

            <asp:Button ID="btnLogin" CssClass="button-style" runat="server" Text="LOGIN" OnClick="btnLogin_Click" />

            <asp:Label ID="lblMessage" CssClass="message-style" runat="server" Text="" ForeColor="Red"></asp:Label>

            <asp:Button ID="btnBack" CssClass="button-style" runat="server" Text="DON'T HAVE AN ACCOUNT ? REGISTER HERE!" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
