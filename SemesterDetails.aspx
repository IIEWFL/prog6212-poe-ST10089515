<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SemesterDetails.aspx.cs" Inherits="WebModuleApp.SemesterDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Semester Details</title>
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
        <h2 class="label-style">SEMESTER DETAILS</h2>

        <div>
            <label for="numberofWeeks" class="label-style">NUMBER OF WEEKS</label>
            <asp:TextBox ID="numberofWeeks" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <label for="startDate" class="label-style">START DATE</label>
            <asp:TextBox ID="startDate" CssClass="textbox-style" runat="server"></asp:TextBox>
        </div>

        <div>
            <label for="numberofModules" class="label-style">NUMBER OF MODULES</label>
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
