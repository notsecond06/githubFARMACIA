
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web
Imports LayerEntity
Public Class DALUsuario
    Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)

    Public Function AgregarUsuario(MiUsuario As LayerEntity.usuario) As Boolean
        Dim cnn As New SqlConnection(DAL.ClsConexion.cadcon)
        Dim cmd As New SqlCommand("SP_INSERTAR_USUARIO", cnn)

        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("id", SqlDbType.Int).Value = MiUsuario.id
        cmd.Parameters.Add("nombre", SqlDbType.VarChar, 45).Value = MiUsuario.nombre
        cmd.Parameters.Add("usuario", SqlDbType.VarChar, 30).Value = MiUsuario.usuario
        cmd.Parameters.Add("contrasena", SqlDbType.VarChar, 45).Value = MiUsuario.contrasena
        cmd.Parameters.Add("rol", SqlDbType.VarChar, 15).Value = MiUsuario.rol

        Try
            If cnn.State = ConnectionState.Closed Then
                cnn.Open()
            End If
            cmd.ExecuteNonQuery()
            Return True
        Catch ex As Exception
            Return False
        End Try
        cnn.Close()
    End Function

    Public Sub ModificarUsuario(ByVal id As Integer, ByRef nombre As String, ByRef usuario As String, ByRef contrasena As String, ByRef rol As String)
        Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)
        Dim cmd As New SqlCommand("_SP_MODIFICAR_USUARIO", cnn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("id", SqlDbType.Int).Value = id
        cmd.Parameters.Add("nombre", SqlDbType.VarChar, 45).Value = nombre
        cmd.Parameters.Add("usuario", SqlDbType.VarChar, 30).Value = usuario
        cmd.Parameters.Add("contrasena", SqlDbType.VarChar, 45).Value = contrasena
        cmd.Parameters.Add("rol", SqlDbType.VarChar, 15).Value = rol
        Try
            cnn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception

        End Try
        cnn.Close()
    End Sub

    Public Sub buscarUsuario(ByVal id As Integer, ByRef nombre As String, ByRef usuario As String, ByRef contrasena As String, ByRef rol As String)
        Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)
        Dim cmd As New SqlCommand("SP_BUSCAR_USUARIO", cnn)
        cmd.Parameters.Add("id", SqlDbType.Int).Value = id
        cmd.CommandType = CommandType.StoredProcedure
        Try
            cnn.Open()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            'SqlDataReader dr = cmd.ExecuteReader()
            'If dr.HasRows Then
            dr.Read()
            nombre = dr(0).ToString
            usuario = dr(1).ToString
            contrasena = dr(2).ToString
            rol = dr(3).ToString
            'End If
            cmd.ExecuteNonQuery()
            dr.Close()
        Catch ex As Exception

        End Try
        cnn.Close()
    End Sub

    Public Sub EliminarCliente(ByVal id As Integer)
        Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)
        Dim cmd As New SqlCommand("SP_ELIMINAR_USUARIO", cnn)
        cmd.Parameters.Add("id", SqlDbType.Int).Value = id
        cmd.CommandType = CommandType.StoredProcedure
        Try
            cnn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception

        End Try
        cnn.Close()
    End Sub

End Class
