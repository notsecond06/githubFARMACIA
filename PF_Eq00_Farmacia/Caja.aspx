<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Caja.aspx.vb" Inherits="PF_Eq00_Farmacia.Caja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td colspan="2">INFORMACION DEL PRODUCTO</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px">Codigo del Producto:</td>
            <td style="height: 20px">
                <asp:TextBox ID="txtCodPro" runat="server"></asp:TextBox>
            </td>

            <td rowspan="2">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
            </td>

        </tr>
        <tr>
            <td style="height: 20px">Nombre:</td>
            <td style="height: 20px">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Precio de Venta:</td>
            <td>
                <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 19px">Cantidad a Comprar:</td>
            <td style="height: 19px">
                <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
            </td>
            <td rowspan="2">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" />
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="dgvFactura" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnPagar" runat="server" Text="Pagar" />
            </td>
            <td>Total a Pagar</td>
            <td>
                <asp:TextBox ID="txtTotalPagar" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
            </td>
        </tr>
    </table>
</asp:Content>
