<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="RegistroMedicamento.aspx.vb" Inherits="PF_Eq00_Farmacia.RegistroMedicamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td colspan="2" style="height: 20px"><H1>REGISTRO DE MEDICAMENTOS</H1></td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="Label1" runat="server" Text="ID DE MEDICAMENTO"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="NOMBRE"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNomMedic" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="PROVEEDOR"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProveedor" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="Label4" runat="server" Text="DESCRIPCION"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="PRECIO DE COMPRA "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPreCompra" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="PRECIO DE VENTA "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPreVenta" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="FECHA DE VENCIMIENTO"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFechaVen" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Button ID="btnGuardar" runat="server" Text="GUARDAR" />
                <asp:Button ID="btnModificar" runat="server" Text="MODIFICAR" />
                <asp:Button ID="btnEliminar" runat="server" Text="ELIMINAR" />
                <asp:Button ID="btnBuscar" runat="server" Text="BUSCAR" />
                <asp:Button ID="btnLimpiar" runat="server" Text="LIMPIAR" />
                <asp:Label ID="lbl_RESPUESTA" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">

               

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="None" CellSpacing="1">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="proveedor" HeaderText="proveedor" SortExpression="proveedor" />
                        <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                        <asp:BoundField DataField="preciocompra" HeaderText="preciocompra" SortExpression="preciocompra" />
                        <asp:BoundField DataField="precioventa" HeaderText="precioventa" SortExpression="precioventa" />
                        <asp:BoundField DataField="fvencimiento" HeaderText="fvencimiento" SortExpression="fvencimiento" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pro1ConnectionString %>" SelectCommand="SELECT * FROM [medicamentos]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
