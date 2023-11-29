<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SemesterDetails.aspx.cs" Inherits="WebModuleApp.SemesterDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="SEMESTER DETAILS"></asp:Label>

        </div>
         <div>
     <asp:Label ID="Label4" runat="server" Text="NUMBER OF WEEKS"></asp:Label><asp:TextBox ID="numberofWeeks" runat="server"></asp:TextBox>



 </div>

                <div>
    <asp:Label ID="Label2" runat="server" Text="Start DATE"></asp:Label><asp:TextBox ID="startDate" runat="server"></asp:TextBox>




</div>

                <div>
    <asp:Label ID="Label3" runat="server" Text="NUMBE OD MODULES"></asp:Label><asp:TextBox ID="numberofModules" runat="server"></asp:TextBox>



</div>

        <div>
            <asp:Button ID="save" runat="server" Text="SAVE" OnClick="save_Click" />



            </div>

    </form>
</body>
</html>
