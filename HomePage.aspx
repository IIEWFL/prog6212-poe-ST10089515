<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebModuleApp.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
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

        #menuLabel {
            font-weight: bold;
            background-color: #3498db;
            color: white;
            padding: 15px;
            text-align: center;
            margin-bottom: 20px;
            border-radius: 5px;
        }

        .green-button, .red-button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 20px;
            margin: 5px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .red-button {
            background-color: #e74c3c;
        }

        .green-button:hover, .red-button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="menuLabel" runat="server" Text="MAIN MENU"></asp:Label>
        </div>
     
        <div>
            <asp:Button ID="btnModule" runat="server" Text="ENTER NEW MODULE - SEMESTER" OnClick="btnModule_Click" CssClass="green-button" />
        </div>
        <div>
            <asp:Button ID="btnDisplay" runat="server" Text="DISPLAY MODULE - SELF STUDY" OnClick="btnDisplay_Click" CssClass="green-button" />
        </div>
        <div>
            <asp:Button ID="btnRecord" runat="server" Text="RECORD STUDY HOURS" OnClick="btnRecord_Click" CssClass="green-button" />
        </div>
        <div>
            <asp:Button ID="btnRemaining" runat="server" Text="DISPLAY REMAINING HOURS" OnClick="btnRemaining_Click" CssClass="green-button" />
        </div>
        <div>
            <asp:Button ID="btnGraph" runat="server" Text="DISPLAY GRAPH" OnClick="btnGraph_Click" CssClass="green-button" />
        </div>
        <div>
            <asp:Button ID="btnExit" runat="server" Text="EXIT" OnClick="btnExit_Click" CssClass="red-button" />
        </div>
    </form>
</body>
</html>
