<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="PF_Eq00_Farmacia.login" %>

<!DOCTYPE html>

<html>

<head runat="server">

  <meta charset="UTF-8">

  <title>SISTEMA D&amp;S SisPharm</title>

    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

</head>

<body>
    

<div id="login">
   
  <div id="triangle"></div>
  <h1>SISTEMA D&amp;S SisPharm</h1>

   <form id="form1" runat="server" >

   <table class="auto-style1" >
     
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="USUARIO"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="CONTRASEÑA"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnIngresar" runat="server" Text="INGRESAR" />
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

  </form>
</div>

  <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>

  <script src="js/index.js"></script>

</body>

</html>
