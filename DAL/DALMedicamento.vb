
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web
Imports LayerEntity
Public Class DALMedicamento
    Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)

    Public Function AgregarMedicamento(MiMedicamento As LayerEntity.medicamento) As Boolean
        Dim cnn As New SqlConnection(DAL.ClsConexion.cadcon)
        Dim cmd As New SqlCommand("SP_INSERTAR_MEDICAMENTO", cnn)

        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("id", SqlDbType.VarChar, 25).Value = MiMedicamento.id
        cmd.Parameters.Add("nombre", SqlDbType.VarChar, 45).Value = MiMedicamento.nombre
        cmd.Parameters.Add("proveedor", SqlDbType.VarChar, 25).Value = MiMedicamento.proveedor
        cmd.Parameters.Add("descripcion", SqlDbType.VarChar, 50).Value = MiMedicamento.descripcion
        cmd.Parameters.Add("preciocompra ", SqlDbType.Float).Value = MiMedicamento.preciocompra
        cmd.Parameters.Add("precioventa", SqlDbType.Float).Value = MiMedicamento.precioventa
        cmd.Parameters.Add("fvencimiento", SqlDbType.Date).Value = MiMedicamento.fvencimiento

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

    Public Sub ModificarMedicamento(ByVal id As String, ByRef nombre As String, ByRef proveedor As String, ByRef descripcion As String, ByRef preciocompra As String, ByRef precioventa As String, ByRef fvencimiento As Date)
        Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)
        Dim cmd As New SqlCommand("_SP_MODIFICAR_MEDICAMENTO", cnn)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.Add("id", SqlDbType.VarChar, 25).Value = id
        cmd.Parameters.Add("nombre", SqlDbType.VarChar, 45).Value = nombre
        cmd.Parameters.Add("proveedor", SqlDbType.VarChar, 25).Value = proveedor
        cmd.Parameters.Add("descripcion", SqlDbType.VarChar, 50).Value = descripcion
        cmd.Parameters.Add("preciocompra", SqlDbType.Float).Value = preciocompra
        cmd.Parameters.Add("precioventa", SqlDbType.Float).Value = precioventa
        cmd.Parameters.Add("fvencimiento", SqlDbType.Date).Value = fvencimiento
        Try
            cnn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception

        End Try
        cnn.Close()
    End Sub

    Public Sub buscarMedicamento(ByVal id As String, ByRef nombre As String, ByRef proveedor As String, ByRef descripcion As String, ByRef preciocompra As String, ByRef precioventa As String, ByRef fvencimiento As String)
        Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)
        Dim cmd As New SqlCommand("SP_BUSCAR_MEDICAMENTO", cnn)
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
            proveedor = dr(1).ToString
            descripcion = dr(2).ToString
            preciocompra = dr(3).ToString
            precioventa = dr(4).ToString
            fvencimiento = dr(5).ToString
            'End If
            cmd.ExecuteNonQuery()
            dr.Close()
        Catch ex As Exception

        End Try
        cnn.Close()
    End Sub

    Public Sub EliminarMedicamento(ByVal id As String)
        Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)
        Dim cmd As New SqlCommand("SP_ELIMINAR_MEDICAMENTO", cnn)
        cmd.Parameters.Add("id", SqlDbType.VarChar, 25).Value = id
        cmd.CommandType = CommandType.StoredProcedure
        Try
            cnn.Open()
            cmd.ExecuteNonQuery()
        Catch ex As Exception

        End Try
        cnn.Close()
    End Sub

    Public Sub buscarCaja(ByVal id As String, ByRef nombre As String, ByRef precioventa As String)
        Dim cnn As New SqlClient.SqlConnection(ClsConexion.cadcon)
        Dim cmd As New SqlCommand("SP_BUSCAR_MEDICAMENTO", cnn)
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
            precioventa = dr(4).ToString
            'End If
            cmd.ExecuteNonQuery()
            dr.Close()
        Catch ex As Exception

        End Try
        cnn.Close()
    End Sub
End Class
