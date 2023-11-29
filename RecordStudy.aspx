<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecordStudy.aspx.cs" Inherits="WebModuleApp.RecordStudy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="RECORD STUDY HOURS"></asp:Label>
        </div>

        <div>
             <asp:Label ID="Label2" runat="server" Text="ENTER MODULE CODE"></asp:Label>
             <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="SEARCH" OnClick="btnSearch_Click" />
        </div>

        <div>
            <asp:Label ID="Label3" runat="server" Text="ENTER DATE (YYYY-MM-DD)"></asp:Label>
            <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="Label4" runat="server" Text="ENTER STUDY HOURS OF THE DAY"></asp:Label>
            <asp:TextBox ID="txtHours" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="btnSave" runat="server" Text="SAVE" OnClick="btnSave_Click" />
        </div>
          <div>
    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
</div>

<div>

       <asp:Label ID="lblDisplay" runat="server" Text=""></asp:Label>

</div>
    </form>
</body>
</html>
