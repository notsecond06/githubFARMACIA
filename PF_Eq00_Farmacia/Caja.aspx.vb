Imports LayerEntity
Imports BLL
Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports DAL
Public Class Caja
    Inherits System.Web.UI.Page

    Dim conexion As New SqlClient.SqlConnection(ClsConexion.cadcon)
    Public cmd As SqlCommand
    Public dr As SqlDataReader
    Dim BuscarMedicamento As New DAL.DALMedicamento
    Dim suma, Total As Double
    Dim dt As New DataTable()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        BuscarMedicamento.buscarCaja(txtCodPro.Text, txtNombre.Text, txtPrecio.Text)
    End Sub

    Public Function filldata() As DataTable
        Dim dt As New DataTable()
        dt.Columns.Add("Codigo", GetType(Integer))
        dt.Columns.Add("Nombre", GetType(String))
        dt.Columns.Add("P. Venta", GetType(Double))
        dt.Columns.Add("Cantidad", GetType(Integer))
        dt.Columns.Add("Importe", GetType(Double))
        Return dt
    End Function

    Protected Sub btnCancelar_Click(sender As Object, e As EventArgs) Handles btnCancelar.Click
        dgvFactura.DataBind()
        txtTotalPagar.Text = ""
    End Sub

    Protected Sub btnPagar_Click(sender As Object, e As EventArgs) Handles btnPagar.Click
        Response.Write("<script>alert('Pago Realizado con Exito');</script>")
        txtTotalPagar.Text = ""
        txtCodPro.Text = ""
        txtNombre.Text = ""
        txtPrecio.Text = ""
        txtCantidad.Text = ""
    End Sub

    Protected Sub btnAgregar_Click(sender As Object, e As EventArgs) Handles btnAgregar.Click
        suma = Val(txtCantidad.Text) * Val(txtPrecio.Text)
        Total = Total + suma
        txtTotalPagar.Text = Total
        If Session("dt") Is Nothing Then
            Dim dt As DataTable = filldata()
            Dim Row1 As DataRow
            Row1 = dt.NewRow()
            Row1("Codigo") = txtCodPro.Text
            Row1("Nombre") = txtNombre.Text
            Row1("P. Venta") = txtPrecio.Text
            Row1("Cantidad") = txtCantidad.Text
            Row1("Importe") = suma
            dt.Rows.Add(Row1)
            dgvFactura.DataSource = dt
            dgvFactura.DataBind()
            Session("dt") = dt

        Else
            Dim dt As DataTable = TryCast(Session("dt"), DataTable)
            Dim Row1 As DataRow
            Row1 = dt.NewRow()
            Row1("Codigo") = Me.txtCodPro.Text
            Row1("Nombre") = Me.txtNombre.Text
            Row1("P. Venta") = Me.txtPrecio.Text
            Row1("Cantidad") = Me.txtCantidad.Text
            Row1("Importe") = Me.suma
            dt.Rows.Add(Row1)
            dgvFactura.DataSource = dt
            dgvFactura.DataBind()
            Session("dt") = dt

        End If

        txtCodPro.Text = ""
        txtNombre.Text = ""
        txtPrecio.Text = ""
        txtCantidad.Text = ""
    End Sub
End Class