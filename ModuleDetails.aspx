<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuleDetails.aspx.cs" Inherits="WebModuleApp.ModuleDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="MODULE DETAILS"></asp:Label>
       
        <div>

                    <asp:Label ID="Label2" runat="server" Text="MODULE CODE  "></asp:Label>
            
            <asp:TextBox ID="moduleCode" runat="server"></asp:TextBox>
                   


           

        </div>
           <div>

               <asp:Label ID="Label3" runat="server" Text="MODULE NAME  "></asp:Label>
       
       <asp:TextBox ID="moduleName" runat="server"></asp:TextBox>
              


      

   </div>
           <div>

               <asp:Label ID="Label4" runat="server" Text="MODULE CREDITS  "></asp:Label>
       
       <asp:TextBox ID="moduleCredits" runat="server"></asp:TextBox>
              


      

   </div>

           <div>

               <asp:Label ID="Label5" runat="server" Text="MODULE HOURS  "></asp:Label> <asp:TextBox ID="moduleHours" runat="server"></asp:TextBox>
       
      
              


      

   </div>

       

        <div>

            <asp:Button ID="btnSave" runat="server" Text="SAVE - NEXT" OnClick="Button1_Click" />
            </div>

        
    </form>
</body>
</html>
