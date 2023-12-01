<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebModuleApp.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
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

        .password-style {
            padding: 10px;
            margin-bottom: 20px;
            box-sizing: border-box;
            border: 1px solid #cccccc;
            border-radius: 5px;
            width: 100%;
        }

        .message-style {
            color: #e74c3c;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 class="label-style">REGISTRATION PAGE</h2>

        <div>
            <label for="firstName" class="label-style">FIRSTNAME</label>
            <asp:TextBox ID="firstName" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <label for="lastName" class="label-style">LASTNAME</label>
            <asp:TextBox ID="lastName" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <label for="userName" class="label-style">USERNAME</label>
            <asp:TextBox ID="userName" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <label for="password" class="label-style">PASSWORD</label>
            <input id="password" class="password-style" type="password" runat="server" />
        </div>

        <div>
            <asp:Button ID="btnSave" CssClass="button-style" runat="server" Text="SAVE" OnClick="btnSave_Click" />
        </div>

        <div>
            <asp:Label ID="lblMessage" CssClass="message-style" runat="server" Text="" ForeColor="Red"></asp:Label>             <asp:Button ID="btnLogin" CssClass="button-style" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>

        <div>

        </div>
    </form>
</body>
</html>
