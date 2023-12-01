<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebModuleApp.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #menuLabel {
            font-weight: bold;
            background-color: grey;
            padding: 10px;
        }

        .blue-button {
            background-color: blue;
            color: white;
            border: none;
            padding: 10px 20px;
            margin: 5px;
            cursor: pointer;
        }

        .red-button {
            background-color: red;
            color: white;
            border: none;
            padding: 10px 20px;
            margin: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="menuLabel" runat="server" Text="MAIN MENU"></asp:Label>
        </div>
     
        <div>
            <asp:Button ID="btnModule" runat="server" Text="ENTER NEW MODULE - SEMESTER" OnClick="btnModule_Click" CssClass="blue-button" />
        </div>
        <div>
            <asp:Button ID="btnDisplay" runat="server" Text="DISPLAY MODULE - SELF STUDY" OnClick="btnDisplay_Click" CssClass="blue-button" />
        </div>
        <div>
            <asp:Button ID="btnRecord" runat="server" Text="RECORD STUDY HOURS" OnClick="btnRecord_Click" CssClass="blue-button" />
        </div>
        <div>
            <asp:Button ID="btnRemaining" runat="server" Text="DISPLAY REMAINING HOURS" OnClick="btnRemaining_Click" CssClass="blue-button" />
        </div>
        <div>
            <asp:Button ID="btnGraph" runat="server" Text="DISPLAY GRAPH" OnClick="btnGraph_Click" CssClass="blue-button" />
        </div>
        <div>
            <asp:Button ID="btnExit" runat="server" Text="EXIT" OnClick="btnExit_Click" CssClass="red-button" />
        </div>
    </form>
</body>
</html>
