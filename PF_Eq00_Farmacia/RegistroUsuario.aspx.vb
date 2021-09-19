Imports LayerEntity
Imports BLL
Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports DAL
Public Class RegistroUsuario
    Inherits System.Web.UI.Page

    Dim MiUsuario As New LayerEntity.usuario
    Dim BuscarUsuario As New DAL.DALUsuario
    Dim ModificarUsuario As New DAL.DALUsuario
    Dim EliminarUsuario As New DAL.DALUsuario

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click
        MiUsuario.id = txtID.Text
        MiUsuario.nombre = txtNombre.Text
        MiUsuario.usuario = txtUsuario.Text
        MiUsuario.contrasena = txtContrasena.Text
        MiUsuario.rol = txtRol.Text

        Dim bllUsuario As New BLL.BllUsuario
        If bllUsuario.agregarUsuario(MiUsuario) Then
            lbl_RESPUESTA.Text = "USUARIO  '" + txtUsuario.Text + "'  AGREGADO EXITOSAMENTE"
        Else
            lbl_RESPUESTA.Text = "USUARIO  '" + txtUsuario.Text + "'  NO SE AGREGO"
        End If
        GridView1.DataBind()
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        BuscarUsuario.buscarUsuario(txtID.Text, txtNombre.Text, txtUsuario.Text, txtContrasena.Text, txtRol.Text)
        lbl_RESPUESTA.Text = "BUSQUEDA REALIZADA EXITOSAMENTE"
    End Sub

    Protected Sub btnModificar_Click(sender As Object, e As EventArgs) Handles btnModificar.Click
        ModificarUsuario.ModificarUsuario(txtID.Text, txtNombre.Text, txtUsuario.Text, txtContrasena.Text, txtRol.Text)
        lbl_RESPUESTA.Text = "USUARIO MODIFICADO EXITOSAMENTE"
        GridView1.DataBind()
    End Sub

    Public Sub LIMPIAR()
        txtID.Text = ""
        txtNombre.Text = ""
        txtUsuario.Text = ""
        txtContrasena.Text = ""
        txtRol.Text = ""
    End Sub

    Protected Sub btnLimpiar_Click(sender As Object, e As EventArgs) Handles btnLimpiar.Click
        LIMPIAR()
    End Sub

    Protected Sub btnEliminar_Click(sender As Object, e As EventArgs) Handles btnEliminar.Click
        EliminarUsuario.EliminarCliente(txtID.Text)
        lbl_RESPUESTA.Text = "USUARIO ELIMINADO EXITOSAMENTE"
        GridView1.DataBind()
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class