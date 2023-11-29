<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebModuleApp.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <asp:Label ID="Label1" runat="server" Text="MAIN MENU"></asp:Label>


        </div>
     
        <div>
            <asp:Button ID="btnModule" runat="server" Text="ENTER NEW MODULE - SEMESTER" OnClick="btnModule_Click" />

        </div>
         <div>
             <asp:Button ID="btnDisplay" runat="server" Text="DISPLAY MODULE - SELF STUDY" OnClick="btnDisplay_Click" />

 </div>
         <div>
             <asp:Button ID="btnRecord" runat="server" Text="RECORD STUDY HOURS" OnClick="btnRecord_Click" />

 </div>
         <div>
             <asp:Button ID="btnRemaining" runat="server" Text="DISPLAY REMAINING HOURS" OnClick="btnRemaining_Click" />

 </div>
         <div>
             <asp:Button ID="btnGraph" runat="server" Text="DISPLAY GRAPH" OnClick="btnGraph_Click" />

 </div>
         <div>
             <asp:Button ID="btnExit" runat="server" Text="EXIT" OnClick="btnExit_Click" />

 </div>
    </form>
</body>
</html>
