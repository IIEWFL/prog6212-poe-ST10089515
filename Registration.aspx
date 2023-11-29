<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebModuleApp.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="RESGISTRATION PAGE"></asp:Label>


        </div>
         <div>
     <asp:Label ID="Label2" runat="server" Text="FIRSTNAME"></asp:Label><asp:TextBox ID="firstName" runat="server"></asp:TextBox>


 </div>

                 <div>
     <asp:Label ID="Label3" runat="server" Text="lastNAME"></asp:Label><asp:TextBox ID="lastName" runat="server"></asp:TextBox>


 </div>
                 <div>
     <asp:Label ID="Label4" runat="server" Text="USERNAME"></asp:Label><asp:TextBox ID="userName" runat="server"></asp:TextBox>


 </div>
                        <div>

                             <asp:Label ID="Label5" runat="server" Text="PASSWORD"></asp:Label>
    <input id="password" type="password" runat="server" />


</div>

                                <div>
                                    <asp:Button ID="btnSave" runat="server" Text="SAVE" OnClick="btnSave_Click" />
   


</div>
          <div>
    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
</div>




    </form>
</body>
</html>
