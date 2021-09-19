Imports LayerEntity
Imports BLL
Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports DAL
Public Class RegistroMedicamento
    Inherits System.Web.UI.Page

    Dim MiMedicamento As New LayerEntity.medicamento
    Dim BuscarMedicamento As New DAL.DALMedicamento
    Dim ModificarMedicamento As New DAL.DALMedicamento
    Dim EliminarMedicamento As New DAL.DALMedicamento

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        MiMedicamento.id = txtID.Text
        MiMedicamento.nombre = txtNomMedic.Text
        MiMedicamento.proveedor = txtProveedor.Text
        MiMedicamento.descripcion = txtDescripcion.Text
        MiMedicamento.preciocompra = txtPreCompra.Text
        MiMedicamento.precioventa = txtPreVenta.Text
        MiMedicamento.fvencimiento = txtFechaVen.Text

        Dim bllMedicamento As New BLL.BllMedicamento
        If bllMedicamento.agregarMedicamento(MiMedicamento) Then
            lbl_RESPUESTA.Text = "MEDICAMENTO  '" + txtNomMedic.Text + "'  AGREGADO EXITOSAMENTE"
        Else
            lbl_RESPUESTA.Text = "MEDICAMENTO  '" + txtNomMedic.Text + "'  NO SE AGREGO"
        End If
        GridView1.DataBind()
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        ModificarMedicamento.ModificarMedicamento(txtID.Text, txtNomMedic.Text, txtProveedor.Text, txtDescripcion.Text, txtPreCompra.Text, txtPreVenta.Text, txtFechaVen.Text)
        lbl_RESPUESTA.Text = "MEDICAMENTO MODIFICADO EXITOSAMENTE"
        GridView1.DataBind()
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        EliminarMedicamento.EliminarMedicamento(txtID.Text)
        lbl_RESPUESTA.Text = "MEDICAMENTO ELIMINADO EXITOSAMENTE"
        GridView1.DataBind()
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        BuscarMedicamento.buscarMedicamento(txtID.Text, txtNomMedic.Text, txtProveedor.Text, txtDescripcion.Text, txtPreCompra.Text, txtPreVenta.Text, txtFechaVen.Text)
        lbl_RESPUESTA.Text = "BUSQUEDA REALIZADA EXITOSAMENTE"
    End Sub
    Public Sub LIMPIAR()
        txtID.Text = ""
        txtNomMedic.Text = ""
        txtProveedor.Text = ""
        txtDescripcion.Text = ""
        txtPreCompra.Text = ""
        txtPreVenta.Text = ""
        txtFechaVen.Text = ""
    End Sub
    Protected Sub btnLimpiar_Click(sender As Object, e As EventArgs) Handles btnLimpiar.Click
        LIMPIAR()
    End Sub
End Class