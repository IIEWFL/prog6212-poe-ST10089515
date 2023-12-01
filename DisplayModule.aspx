<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayModule.aspx.cs" Inherits="WebModuleApp.DisplayModule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Module Display</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        form {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="button"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="button"],
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        input[type="button"]:hover,
        input[type="submit"]:hover {
            background-color: #45a049;
        }

        #lblDisplay {
            margin-top: 20px;
            display: block;
            background-color: #fff;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        #btnBack {
            background-color: #008CBA;
            color: white;
        }

        #btnBack:hover {
            background-color: #0077a3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 style="text-align: center; color: #008CBA;">MODULE DISPLAY</h2>
        </div>

        <div>
            <label for="txtSearch">SEARCH MODULE</label>
            <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="SEARCH" OnClick="btnSearch_Click" CssClass="btn btn-primary" />
        </div>

        <div>
            <h3>DISPLAY MODULES AND HOURS</h3>
            <asp:Button ID="btnDisplay" runat="server" Text="DISPLAY" OnClick="btnDisplay_Click" CssClass="btn btn-success" />
            <asp:Label ID="lblDisplay" runat="server" Text=""></asp:Label>
        </div>

        <div>
            <asp:Button ID="btnBack" runat="server" Text="BACK" OnClick="btnBack_Click" CssClass="btn" />
        </div>
    </form>
</body>
</html>
