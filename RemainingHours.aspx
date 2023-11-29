<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemainingHours.aspx.cs" Inherits="WebModuleApp.RemainingHours" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            
        <asp:Label ID="Label1" runat="server" Text="REMAINING HOURS"></asp:Label>




        </div>


        <div>
            <asp:Label ID="Label2" runat="server" Text="ENTER MODULE CODE "></asp:Label>
            <asp:TextBox ID="txtCode" runat="server"></asp:TextBox><asp:Button ID="btnSearch" runat="server" Text="SEARCH" OnClick="btnSearch_Click" />

            


        </div>

        <div>

            <asp:Label ID="Label3" runat="server" Text="ENTER STUDIED HOURS"></asp:Label><asp:TextBox ID="txtHours" runat="server"></asp:TextBox>
            

         




        </div>
        <div>

            <asp:Button ID="btnDisplay" runat="server" Text="DISPLAY" OnClick="btnDisplay_Click" />


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
