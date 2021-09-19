Imports LayerEntity
Imports BLL
Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports DAL
Public Class login
    Inherits System.Web.UI.Page

    Dim conexion As New SqlClient.SqlConnection(ClsConexion.cadcon)
    Public cmd As SqlCommand
    Public dr As SqlDataReader
    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        conexion.open()
        cmd = New SqlCommand("select contrasena, rol from usuarios where usuario='" & txtUser.Text & "' ", conexion)
        dr = cmd.ExecuteReader
        If (dr.Read) Then
            If (dr(0).ToString = txtPass.Text) Then
                If (dr(1).ToString = "Administrador") Then
                    Response.Redirect("RegistroMedicamento.aspx")
                Else
                    Response.Redirect("Caja.aspx")
                End If
            Else
                lblMensaje.Text = "Contraseña Incorrecta"
            End If
        Else
            lblMensaje.Text = "Usuario No Existe"
        End If
        conexion.Close()
    End Sub
End Class