<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="RegistroProveedor.aspx.vb" Inherits="PF_Eq00_Farmacia.RegistroProveedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td colspan="2" style="height: 20px"><H1>REGISTRO DE PROVEEDORES</H1></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="ID DE PROVEEDOR"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="NOMBRE"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNomPro" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="CONTACTO"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtContacto" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="LICENCIA"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLicencia" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="Label5" runat="server" Text="FECHA DE VENCIMIENTOS"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txtFechaVen" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="Label6" runat="server" Text="DIRECCION"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px" colspan="2">
                <asp:Button ID="btnGuardar" runat="server" Text="GUARDAR" />
                <asp:Button ID="btnModificar" runat="server" Text="MODIFICAR" />
                <asp:Button ID="btnEliminar" runat="server" Text="ELIMINAR" />
                <asp:Button ID="btnBuscar" runat="server" Text="BUSCAR" />
                <asp:Button ID="btnLimpiar" runat="server" Text="LIMPIAR" />
                <asp:Label ID="lbl_RESPUESTA" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 20px" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" CellSpacing="1" GridLines="None">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="contacto" HeaderText="contacto" SortExpression="contacto" />
                        <asp:BoundField DataField="licencia" HeaderText="licencia" SortExpression="licencia" />
                        <asp:BoundField DataField="fecha_venc" HeaderText="fecha_venc" SortExpression="fecha_venc" />
                        <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle ForeColor="Black" BackColor="#DEDFDE" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pro1ConnectionString %>" SelectCommand="SELECT * FROM [proveedores]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="height: 20px" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
