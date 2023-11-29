<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebModuleApp.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
        <asp:Label ID="Label1" runat="server" Text="LOGIN"></asp:Label>
        </div>

        <div>
              <asp:Label ID="Label2" runat="server" Text="USERNAME"></asp:Label><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>




        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="PASSWORD"></asp:Label>
<input id="password" type="password" />


        </div>

        <div>
            <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Click" />


        </div>

                  <div>
    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
</div>


    </form>
</body>
</html>
