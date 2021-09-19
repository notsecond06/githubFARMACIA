
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web
Imports LayerEntity
Public Class DALProveedor
    Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)

    Public Function AgregarProveedor(MiProveedor As LayerEntity.proveedor) As Boolean
        Dim cnn As New SqlConnection(DAL.ClsConexion.cadcon)
        Dim cmd As New SqlCommand("SP_INSERTAR_PROVEEDOREs", cnn)

        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("id", SqlDbType.VarChar, 25).Value = MiProveedor.id
        cmd.Parameters.Add("nombre", SqlDbType.VarChar, 45).Value = MiProveedor.nombre
        cmd.Parameters.Add("contacto", SqlDbType.VarChar, 45).Value = MiProveedor.contacto
        cmd.Parameters.Add("licencia", SqlDbType.VarChar, 45).Value = MiProveedor.licencia
        cmd.Parameters.Add("fecha_venc", SqlDbType.Date).Value = MiProveedor.fecha_venc
        cmd.Parameters.Add("direccion", SqlDbType.VarChar, 45).Value = MiProveedor.direccion

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

    Public Sub ModificarProveedor(ByVal id As String, ByRef nombre As String, ByRef contacto As String, ByRef licencia As String, ByRef fecha_venc As String, ByRef direccion As String)
        Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)
        Dim cmd As New SqlCommand("_SP_MODIFICAR_PROVEEDORES", cnn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("id", SqlDbType.VarChar, 25).Value = id
        cmd.Parameters.Add("nombre", SqlDbType.VarChar, 45).Value = nombre
        cmd.Parameters.Add("contacto", SqlDbType.VarChar, 45).Value = contacto
        cmd.Parameters.Add("licencia", SqlDbType.VarChar, 45).Value = licencia
        cmd.Parameters.Add("fecha_venc", SqlDbType.Date).Value = fecha_venc
        cmd.Parameters.Add("direccion", SqlDbType.VarChar, 45).Value = direccion
        Try
            cnn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception

        End Try
        cnn.Close()
    End Sub

    Public Sub buscarProveedor(ByVal id As String, ByRef nombre As String, ByRef contacto As String, ByRef licencia As String, ByRef fecha_venc As String, ByRef direccion As String)
        Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)
        Dim cmd As New SqlCommand("SP_BUSCAR_PROVEEDORES", cnn)
        cmd.Parameters.Add("id", SqlDbType.VarChar, 25).Value = id
        cmd.CommandType = CommandType.StoredProcedure
        Try
            cnn.Open()
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader()
            'SqlDataReader dr = cmd.ExecuteReader()
            'If dr.HasRows Then
            dr.Read()
            nombre = dr(0).ToString
            contacto = dr(1).ToString
            licencia = dr(2).ToString
            fecha_venc = dr(3).ToString
            direccion = dr(4).ToString
            'End If
            cmd.ExecuteNonQuery()
            dr.Close()
        Catch ex As Exception

        End Try
        cnn.Close()
    End Sub

    Public Sub EliminarProveedor(ByVal id As String)
        Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)
        Dim cmd As New SqlCommand("SP_ELIMINAR_PROVEEDORES", cnn)
        cmd.Parameters.Add("id", SqlDbType.VarChar, 25).Value = id
        cmd.CommandType = CommandType.StoredProcedure
        Try
            cnn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception

        End Try
        cnn.Close()
    End Sub
End Class
