<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SemesterDetails.aspx.cs" Inherits="WebModuleApp.SemesterDetails" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" CssClass="label-style" runat="server" Text="SEMESTER DETAILS"></asp:Label>
        </div>

        <div>
            <asp:Label ID="Label4" CssClass="label-style" runat="server" Text="NUMBER OF WEEKS"></asp:Label>
            <asp:TextBox ID="numberofWeeks" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label2" CssClass="label-style" runat="server" Text="Start DATE"></asp:Label>
            <asp:TextBox ID="startDate" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label3" CssClass="label-style" runat="server" Text="NUMBE OD MODULES"></asp:Label>
            <asp:TextBox ID="numberofModules" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="save" CssClass="button-style" runat="server" Text="SAVE" OnClick="save_Click" />
        </div>

        <div>
            <asp:Button ID="btnBack" CssClass="button-style" runat="server" Text="BACK" OnClick="btnBack_Click" />
        </div>
    </form>
</body>
</html>
