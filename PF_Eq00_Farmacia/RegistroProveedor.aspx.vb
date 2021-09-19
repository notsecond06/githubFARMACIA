Imports LayerEntity
Imports BLL
Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports DAL
Public Class RegistroProveedor
    Inherits System.Web.UI.Page

    Dim MiProveedor As New LayerEntity.proveedor
    Dim BuscarProveedor As New DAL.DALProveedor
    Dim ModificarProveedor As New DAL.DALProveedor
    Dim EliminarProveedor As New DAL.DALProveedor

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        MiProveedor.id = txtID.Text
        MiProveedor.nombre = txtNomPro.Text
        MiProveedor.contacto = txtContacto.Text
        MiProveedor.licencia = txtLicencia.Text
        MiProveedor.fecha_venc = txtFechaVen.Text
        MiProveedor.direccion = txtDireccion.Text

        Dim bllProveedor As New BLL.BllProveedor
        If bllProveedor.agregarProveedor(MiProveedor) Then
            lbl_RESPUESTA.Text = "PROVEEDOR  '" + txtNomPro.Text + "'  AGREGADO EXITOSAMENTE"
        Else
            lbl_RESPUESTA.Text = "PROVEEDOR  '" + txtNomPro.Text + "'  NO SE AGREGO"
        End If
        GridView1.DataBind()
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        ModificarProveedor.ModificarProveedor(txtID.Text, txtNomPro.Text, txtContacto.Text, txtLicencia.Text, txtFechaVen.Text, txtDireccion.Text)
        lbl_RESPUESTA.Text = "PROVEEDOR MODIFICADO EXITOSAMENTE"
        GridView1.DataBind()
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        EliminarProveedor.EliminarProveedor(txtID.Text)
        lbl_RESPUESTA.Text = "PROVEEDOR ELIMINADO EXITOSAMENTE"
        GridView1.DataBind()
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        BuscarProveedor.buscarProveedor(txtID.Text, txtNomPro.Text, txtContacto.Text, txtLicencia.Text, txtFechaVen.Text, txtDireccion.Text)
        lbl_RESPUESTA.Text = "BUSQUEDA REALIZADA EXITOSAMENTE"
        GridView1.DataBind()
    End Sub
    Public Sub LIMPIAR()
        txtID.Text = ""
        txtNomPro.Text = ""
        txtContacto.Text = ""
        txtLicencia.Text = ""
        txtFechaVen.Text = ""
        txtDireccion.Text = ""
    End Sub
    Protected Sub btnLimpiar_Click(sender As Object, e As EventArgs) Handles btnLimpiar.Click
        LIMPIAR()
    End Sub
End Class