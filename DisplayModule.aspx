<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayModule.aspx.cs" Inherits="WebModuleApp.DisplayModule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="MODULE DISPLAY"></asp:Label>
        </div>


        <div>

             <asp:Label ID="Label6" runat="server" Text="SEARCH MODULE"></asp:Label>


            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>



            <asp:Button ID="btnSearch" runat="server" Text="SEARCH" OnClick="btnSearch_Click" />




        </div>

        <div>
            <asp:Label ID="Label2" runat="server" Text="DISPLAY MODULES AND HOURS"></asp:Label>
            <asp:Button ID="btnDisplay" runat="server" Text="DISPLAY" OnClick="btnDisplay_Click" />

               <asp:Label ID="lblDisplay" runat="server" Text=""></asp:Label>
       
            

       
        <%-- Add more columns as needed --%>
    </Columns>
</asp:GridView>
        </div>
        <div>
            <asp:Button ID="btnBack" runat="server" Text="BACK" OnClick="btnBack_Click" />


        </div>


    </form>
</body>
</html>
